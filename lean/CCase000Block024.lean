import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1200-1249 of the 2189-step refutation of ccase000: 119 core clauses and 77 earlier-derived ones give 13 more. -/
theorem CCase000_block024
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c40 : ¬v9 ∨ ¬v8)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c67 : ¬v16 ∨ ¬v17)
    (c72 : ¬v17 ∨ ¬v18)
    (c76 : ¬v18 ∨ ¬v19)
    (c79 : ¬v19 ∨ ¬v20)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c101 : ¬v28 ∨ ¬v26)
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
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c150 : ¬v46 ∨ ¬v43)
    (c155 : ¬v46 ∨ ¬v44)
    (c156 : ¬v44 ∨ ¬v47)
    (c159 : ¬v46 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c178 : ¬v40 ∨ v47 ∨ v41 ∨ v32 ∨ v34 ∨ v39 ∨ v33 ∨ v48)
    (c208 : ¬v46 ∨ v39 ∨ v38 ∨ v4 ∨ v3 ∨ v40 ∨ v45 ∨ v47)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c222 : ¬v46 ∨ v40 ∨ v45 ∨ v3 ∨ v5 ∨ v4 ∨ v39 ∨ v47)
    (c233 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v33 ∨ v26 ∨ v24 ∨ v31)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c249 : v41 ∨ v40 ∨ v3 ∨ v4 ∨ v39 ∨ v6 ∨ v12 ∨ ¬v5 ∨ v11 ∨ v9 ∨ v2 ∨ v44 ∨ v47 ∨ v48)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c275 : v4 ∨ v6 ∨ ¬v5 ∨ v13 ∨ v11 ∨ v47 ∨ v12 ∨ v48)
    (c277 : ¬v34 ∨ v41 ∨ v47 ∨ v24 ∨ v35 ∨ v27 ∨ v26 ∨ v33 ∨ v42 ∨ v31 ∨ v38 ∨ v32 ∨ v48 ∨ v49)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c323 : v4 ∨ v6 ∨ v3 ∨ v10 ∨ v32 ∨ v11 ∨ v33 ∨ v12 ∨ ¬v5 ∨ v34 ∨ v40 ∨ v45 ∨ v47 ∨ v48)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c340 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c343 : v43 ∨ v9 ∨ v44 ∨ v1 ∨ v3 ∨ v45 ∨ ¬v2 ∨ v10)
    (c360 : v47 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v14 ∨ v12 ∨ v11 ∨ v25 ∨ v7 ∨ v26 ∨ v27 ∨ v19 ∨ v48 ∨ v49)
    (c363 : ¬v46 ∨ v39 ∨ v4 ∨ v45 ∨ v40 ∨ v5 ∨ v38 ∨ v47)
    (c462 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v9 ∨ v2 ∨ v8)
    (c467 : ¬v46 ∨ v6 ∨ v38 ∨ v4 ∨ v26 ∨ v24 ∨ v32 ∨ v25 ∨ v5 ∨ v39 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c479 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v37 ∨ v31 ∨ v30 ∨ v33 ∨ v18 ∨ v23 ∨ v26 ∨ v11 ∨ v12 ∨ v10)
    (c510 : v11 ∨ v10 ∨ v2 ∨ v4 ∨ v44 ∨ v45 ∨ v9 ∨ ¬v3)
    (c540 : ¬v20 ∨ v27 ∨ v14 ∨ v26 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c549 : v43 ∨ v9 ∨ v44 ∨ v2 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v1)
    (c554 : ¬v31 ∨ v30 ∨ v38 ∨ v37 ∨ v24 ∨ v25 ∨ v23 ∨ v32)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c711 : v17 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c836 : ¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42)
    (c838 : v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c957 : v24 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c961 : ¬v28 ∨ v2 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c999 : v3 ∨ v2 ∨ v7 ∨ v35 ∨ ¬v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1022 : ¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1128 : ¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45)
    (c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1157 : ¬v13 ∨ v2 ∨ v5 ∨ v6 ∨ v12 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1170 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1197 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1415 : v21 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v18 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1504 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1519 : v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48)
    (c1527 : v8 ∨ v1 ∨ v10 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1596 : ¬v36 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v49)
    (c1607 : v24 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1634 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1654 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c1674 : ¬v18 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1695 : v34 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1713 : v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1745 : v2 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1757 : v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1758 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1760 : v8 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v26 ∨ v27 ∨ v33 ∨ v47 ∨ v48 ∨ v49)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1764 : v27 ∨ v2 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    : (¬v7 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47) ∧ (¬v2 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47) ∧ (v24 ∨ ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v7 ∨ ¬v1 ∨ ¬v2 ∨ v38 ∨ v39 ∨ ¬v46 ∨ v47) ∧ (v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (v27 ∨ v6 ∨ v7 ∨ v24 ∨ v26 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ v1 ∨ ¬v2 ∨ ¬v14 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v47 ∨ v48) ∧ (¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27) ∧ (v6 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v38 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ ¬v2 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v40 ∨ v47 ∨ v48 ∨ v49) := by
  have c1765 : v9 ∨ ¬v1 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v20 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1760 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v3 := by
      rcases c1764 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v4 := by
      rcases c510 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u7 a
    rcases c13 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd n3 a
    · exact absurd u7 a
  have c1766 : v7 ∨ v6 ∨ ¬v12 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
    have u6 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n9
  have c1767 : v13 ∨ v6 ∨ v20 ∨ v27 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v41 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u2 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1504 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1768 : ¬v1 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ ¬v28 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v2 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a u3
    have u14 : v34 := by
      rcases c1767 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
    have u21 : v41 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact a
      · exact absurd a u19
    have u22 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v3 := by
      rcases c1322 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u12
    have u25 : ¬v4 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd u13 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u12
    have u26 : v5 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a n9
      · exact a
      · exact absurd a u22
      · exact absurd a n10
    rcases c2 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u26 a
    · exact absurd u24 a
    · exact absurd u13 a
  have c1769 : v26 ∨ ¬v1 ∨ v6 ∨ ¬v12 ∨ v25 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v7 := by
      rcases c1765 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v20 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v28 := by
      rcases c1766 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u13
    have u15 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v18 := by
      rcases c1674 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n0
    have u17 : v40 := by
      rcases c1768 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u10 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u19
    have u22 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u21 a
      · exact a
    rcases c277 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a u24
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a n7
    · exact absurd a n8
  have c1770 : v49 ∨ ¬v1 ∨ v6 ∨ ¬v12 ∨ v26 ∨ v27 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v25 := by
      rcases c1769 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
    have u12 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
    have u13 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u14 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u15 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u13
    have u20 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
    have u21 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v2 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
    rcases c1621 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u3
  have c1771 : ¬v7 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n6 a
      · exact a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
  have c1772 : ¬v2 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n6 a
      · exact a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
  have c1773 : ¬v1 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c1770 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v41 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a u12
    have u14 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v2 := by
      rcases c1772 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd u7 a
      · exact absurd a n7
    have u17 : ¬v7 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd u7 a
      · exact absurd a n7
    have u18 : v3 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v4 := by
      rcases c11 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd u18 a
      · exact a
    have u20 : v11 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
    have u21 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd n0 a
  have c1774 : v27 ∨ ¬v1 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v40 := by
      rcases c1773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v28 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n7
    have u13 : v24 := by
      rcases c277 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u10
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    rcases c96 with a|a
    · exact absurd u12 a
    · exact absurd u13 a
  have c1775 : v26 ∨ v6 ∨ v13 ∨ v27 ∨ v34 ∨ ¬v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v28 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n7
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u2
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v35 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u6 a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u8 a
      · exact a
    rcases c178 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n7
  have c1776 : ¬v1 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c1770 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v34 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v40 := by
      rcases c1775 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v28 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
    have u10 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
    have u11 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a u11
    have u13 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v14 := by
      rcases c540 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n2
    have u16 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v4 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
    have u20 : ¬v2 := by
      rcases c5 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
      · exact absurd u19 a
    have u21 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u19 a
      · exact a
      · exact absurd u10 a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u18
  have c1777 : v2 ∨ ¬v1 ∨ ¬v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n11
      · exact absurd a u8
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u5
    have u12 : ¬v3 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u14 : v32 := by
      rcases c323 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n11
    have u19 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v28 := by
      rcases c961 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u8
    have u21 : v39 := by
      rcases c249 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v24 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u10
    have u24 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u23 a
    rcases c1493 with a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u8
  have c1778 : v6 ∨ ¬v1 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v2 := by
      rcases c1777 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    rcases c360 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd u8 a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
  have c1779 : v24 ∨ ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1143 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n13
  have c1780 : ¬v1 ∨ ¬v2 ∨ v6 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v25 := by
      rcases c1778 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
    have u16 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
    have u17 : ¬v5 := by
      rcases c1779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n5
    have u19 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v39 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u21
    have u23 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u25 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a n10
    have u26 : v4 := by
      rcases c1415 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u24
    rcases c7 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd n1 a
  have c1781 : v2 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n8
    have u2 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1157 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1782 : v49 ∨ ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v2 := by
      rcases c1780 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u13 : v7 := by
      rcases c1221 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a n0
    have u14 : v25 := by
      rcases c1778 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u15 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u17
    have u20 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
    have u21 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u22 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u18
    have u23 : v5 := by
      rcases c1781 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u24 : ¬v3 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact a
      · exact absurd u13 a
    have u25 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
      · exact absurd u23 a
    have u26 : v32 := by
      rcases c323 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd u23 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u27 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v38 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u27
      · exact a
      · exact absurd a u11
    have u30 : v37 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u28
      · exact a
      · exact absurd a u9
    rcases c132 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c1783 : ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v33 := by
      rcases c1782 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v25 := by
      rcases c1654 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u19 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
    have u20 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u18 a
    have u25 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u8
    have u26 : v39 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd u11 a
      · exact a
      · exact absurd a n5
      · exact absurd a u20
    have u27 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u23
    have u28 : v2 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u8
    have u29 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u24
    have u30 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u23
      · exact absurd a u22
    have u32 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u29
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u24
    have u33 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u22
      · exact absurd a u31
      · exact absurd a u15
      · exact absurd a u30
      · exact absurd a u10
    have u34 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u32
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c4 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u33 a
    · exact absurd u34 a
    · exact absurd u28 a
  have c1784 : ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v34 := by
      rcases c1783 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v41 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a u12
    have u14 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v7 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
    have u17 : ¬v2 := by
      rcases c1772 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
    rcases c1221 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a n7
  have c1785 : ¬v34 ∨ v2 ∨ v9 ∨ v26 ∨ v27 ∨ v37 ∨ v41 ∨ v42 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v28 := by
      rcases c938 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
    have u7 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1607 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n8
  have c1786 : ¬v24 ∨ v2 ∨ ¬v13 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1493 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1787 : v33 ∨ v2 ∨ ¬v13 ∨ v26 ∨ v34 ∨ ¬v40 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : v32 := by
      rcases c178 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n8
    have u9 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v24 := by
      rcases c1786 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
    have u12 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n6
    have u13 : v25 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u9
    rcases c89 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c1788 : v2 ∨ ¬v1 ∨ ¬v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v46 := by
      rcases c1745 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u13 : v7 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u6
    have u14 : ¬v34 := by
      rcases c1785 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
    have u15 : v33 := by
      rcases c1787 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd n5 a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u10
    have u21 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u10
    have u22 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u12
    have u23 : v4 := by
      rcases c510 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd u22 a
    rcases c13 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u23 a
    · exact absurd u13 a
    · exact absurd u22 a
  have c1789 : ¬v7 ∨ ¬v1 ∨ ¬v2 ∨ v38 ∨ v39 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v40 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n6
    rcases c1759 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a n6
  have c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v23 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
    have u5 : v25 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact a
    rcases c89 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1791 : ¬v25 ∨ v7 ∨ ¬v13 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a n6
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a n6
  have c1792 : v24 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v9 ∨ v10 ∨ v11 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v41 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n14 a
      · exact a
    have u2 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u1
    have u3 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
    have u4 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n14 a
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a u1
    · exact absurd a n15
    · exact absurd a n16
  have c1793 : ¬v13 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v26 ∨ ¬v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v7 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u9 a
      · exact absurd a n11
    have u12 : ¬v25 := by
      rcases c1791 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v24 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u9 a
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v21 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a n13
  have c1794 : v25 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v26 ∨ v30 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n7
    have u2 : v23 := by
      rcases c479 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
    rcases c88 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1795 : v7 ∨ ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v40 := by
      rcases c1784 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : v2 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v32 := by
      rcases c178 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n7
    have u18 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a n8
    have u22 : v25 := by
      rcases c1794 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u23 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v21 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a n8
  have c1796 : ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v13 := by
      rcases c1776 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v40 := by
      rcases c1784 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v2 := by
      rcases c1788 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v7 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n4
    have u10 : v34 := by
      rcases c1795 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v24 := by
      rcases c277 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v28 := by
      rcases c938 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    rcases c96 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1797 : v41 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v28 := by
      rcases c938 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u6
    have u8 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u7 a
      · exact a
    rcases c277 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
  have c1798 : v6 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u2
    have u12 : ¬v7 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u13 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n9
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
  have c1799 : v41 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n10
    have u6 : ¬v21 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a n10
    have u8 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v36 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u11 : v22 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n7
    have u12 : v44 := by
      rcases c1596 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
      · exact a
      · exact absurd a n10
    have u13 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v47 := by
      rcases c156 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v46 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1713 with a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n9
    · exact absurd a n10
  have c1800 : v35 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v12 ∨ v14 ∨ v18 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u8 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n11
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v33 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n15
    rcases c1460 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u4
  have c1801 : v49 ∨ v6 ∨ v7 ∨ ¬v13 ∨ v24 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u8 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n0
    have u12 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
    have u16 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n5
    have u17 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
    have u18 : v35 := by
      rcases c1800 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u19 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u7
    rcases c1596 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n0
  have c1802 : v27 ∨ v6 ∨ v7 ∨ v24 ∨ v26 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v13 := by
      rcases c1801 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u9 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v35 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1596 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u14 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a u1
    have u15 : v9 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n9
    rcases c40 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c1803 : v42 ∨ v6 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v38 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c1797 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v24 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v7 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u8 a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n10
    have u12 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n7
    have u14 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v35 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd u13 a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u1
    have u19 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u18 a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd u18 a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a n10
  have c1804 : ¬v2 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v29 ∨ v33 ∨ v36 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v10 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v3 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a u2
    have u9 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n11
    have u10 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
      · exact absurd n0 a
    have u11 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v22 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
    have u14 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n1
    rcases c64 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c1805 : v6 ∨ v1 ∨ ¬v2 ∨ ¬v14 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : v3 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
    have u8 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u9 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd u8 a
    rcases c275 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd u8 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n13
  have c1806 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    rcases c540 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c1807 : v14 ∨ v6 ∨ v12 ∨ v13 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v41 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n5
      · exact a
    have u3 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1504 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1808 : ¬v22 ∨ v4 ∨ ¬v5 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v14 ∨ v24 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n9
    have u3 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    rcases c360 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n13
  have c1809 : v14 ∨ v4 ∨ ¬v5 ∨ v6 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v33 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v46 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c1808 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : v28 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n21
    have u7 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n13
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u2
    have u8 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n21
  have c1810 : v36 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v14 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v7 := by
      rcases c1804 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v13 := by
      rcases c1807 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v3 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
    have u14 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd u1 a
    have u15 : v24 := by
      rcases c1809 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u17
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n17
  have c1811 : v49 ∨ ¬v2 ∨ v6 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v38 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v42 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u7 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n10
      · exact absurd a n0
    have u11 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
    have u12 : ¬v14 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u13 : v35 := by
      rcases c1702 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n0
    have u14 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v7 := by
      rcases c1804 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u16 : v12 := by
      rcases c1810 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u17 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v28 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u20 : v22 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n10
    rcases c87 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1812 : v26 ∨ v6 ∨ v27 ∨ ¬v32 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v24 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v7 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u13 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd u10 a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v14 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
    have u17 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n4
    rcases c60 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c1813 : v6 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v38 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c1812 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v31 := by
      rcases c1811 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v24 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u16 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v37 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n4
    rcases c554 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u6
  have c1814 : v33 ∨ ¬v2 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v46 := by
      rcases c1757 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v14 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n11
  exact ⟨c1771, c1772, c1779, c1789, c1790, c1796, c1798, c1799, c1802, c1805, c1806, c1813, c1814⟩
