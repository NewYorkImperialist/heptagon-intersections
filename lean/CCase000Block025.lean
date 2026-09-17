import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1250-1299 of the 2189-step refutation of ccase000: 120 core clauses and 75 earlier-derived ones give 15 more. -/
theorem CCase000_block025
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
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
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
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
    (c122 : ¬v34 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c150 : ¬v46 ∨ ¬v43)
    (c155 : ¬v46 ∨ ¬v44)
    (c159 : ¬v46 ∨ ¬v45)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c187 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v45 ∨ v30 ∨ v44 ∨ v32)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c203 : v39 ∨ v6 ∨ v38 ∨ v2 ∨ v37 ∨ v4 ∨ v45 ∨ v11 ∨ v10 ∨ ¬v3 ∨ v13 ∨ v44 ∨ v5 ∨ v48)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c222 : ¬v46 ∨ v40 ∨ v45 ∨ v3 ∨ v5 ∨ v4 ∨ v39 ∨ v47)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c257 : v43 ∨ ¬v28 ∨ v22 ∨ v42 ∨ v26 ∨ v19 ∨ v35 ∨ v20 ∨ v21 ∨ v29 ∨ v27 ∨ v33 ∨ v48 ∨ v49)
    (c261 : v29 ∨ ¬v15 ∨ v26 ∨ v16 ∨ v35 ∨ v30 ∨ v22 ∨ v12 ∨ v8 ∨ v14 ∨ v21 ∨ v20 ∨ v19 ∨ v23)
    (c275 : v4 ∨ v6 ∨ ¬v5 ∨ v13 ∨ v11 ∨ v47 ∨ v12 ∨ v48)
    (c327 : ¬v46 ∨ v42 ∨ v32 ∨ v7 ∨ v4 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v5 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c340 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v30 ∨ v29 ∨ v36 ∨ v38)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c363 : ¬v46 ∨ v39 ∨ v4 ∨ v45 ∨ v40 ∨ v5 ∨ v38 ∨ v47)
    (c388 : v43 ∨ ¬v21 ∨ v7 ∨ v13 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v16 ∨ v9 ∨ v20 ∨ v15 ∨ v48 ∨ v49)
    (c411 : v41 ∨ ¬v33 ∨ v40 ∨ v19 ∨ v35 ∨ v26 ∨ v34 ∨ v11 ∨ v28 ∨ v32 ∨ v13 ∨ v25 ∨ v12 ∨ v42)
    (c418 : v36 ∨ ¬v30 ∨ v22 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v29)
    (c454 : v32 ∨ ¬v3 ∨ v31 ∨ v2 ∨ v45 ∨ v30 ∨ v4 ∨ v11 ∨ v10 ∨ v5 ∨ v38 ∨ v44 ∨ v12 ∨ v47)
    (c488 : v15 ∨ v9 ∨ v1 ∨ ¬v8 ∨ v7 ∨ v21 ∨ v14 ∨ v2)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c551 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v25 ∨ v18 ∨ v10 ∨ v16)
    (c553 : v29 ∨ v28 ∨ v5 ∨ v7 ∨ v8 ∨ v19 ∨ v6 ∨ ¬v14 ∨ v13 ∨ v12 ∨ v15 ∨ v21 ∨ v34 ∨ v35)
    (c554 : ¬v31 ∨ v30 ∨ v38 ∨ v37 ∨ v24 ∨ v25 ∨ v23 ∨ v32)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c836 : ¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c883 : v15 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v17)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1022 : ¬v10 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1108 : v20 ∨ v18 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1311 : ¬v17 ∨ v7 ∨ v24 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1322 : v3 ∨ ¬v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1419 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v21)
    (c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1504 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1527 : v8 ∨ v1 ∨ v10 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1607 : v24 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1634 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v18 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26)
    (c1695 : v34 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1701 : ¬v21 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1713 : v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1722 : ¬v36 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1723 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1758 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1771 : ¬v7 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47)
    (c1772 : ¬v2 ∨ ¬v1 ∨ ¬v5 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47)
    (c1789 : ¬v7 ∨ ¬v1 ∨ ¬v2 ∨ v38 ∨ v39 ∨ ¬v46 ∨ v47)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1796 : ¬v1 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1798 : v6 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1799 : v41 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1802 : v27 ∨ v6 ∨ v7 ∨ v24 ∨ v26 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1805 : v6 ∨ v1 ∨ ¬v2 ∨ ¬v14 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v47 ∨ v48)
    (c1806 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27)
    (c1813 : v6 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v38 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1814 : v33 ∨ ¬v2 ∨ v6 ∨ ¬v7 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    : (v35 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v36 ∨ v43) ∧ (¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v2 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v7 ∨ v6 ∨ v24 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v6 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v28 ∨ v6 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v42 ∨ v5 ∨ v6 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (v49 ∨ v6 ∨ v26 ∨ v29 ∨ ¬v30 ∨ v47 ∨ v48) ∧ (¬v41 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v34 ∨ v6 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45) ∧ (v6 ∨ ¬v1 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49) := by
  have c1815 : v19 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n4 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
  have c1816 : v19 ∨ v8 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1815 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1817 : v35 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n1
    have u2 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1816 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1818 : ¬v5 ∨ ¬v2 ∨ v6 ∨ ¬v8 ∨ v9 ∨ v12 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v4 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n11
    have u5 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c21 with a|a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd n0 a
  have c1819 : v12 ∨ ¬v2 ∨ v6 ∨ v9 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v41 := by
      rcases c1813 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v34 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n9
    have u18 : ¬v14 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v8 := by
      rcases c1818 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v23 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u10
    have u21 : v28 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
    rcases c92 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c1820 : v12 ∨ ¬v2 ∨ v6 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v41 := by
      rcases c1813 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v34 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v7 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v14 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v9 := by
      rcases c1819 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v28 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u17
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n10
    have u22 : v23 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u10
    rcases c92 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1821 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n9
  have c1822 : ¬v24 ∨ v1 ∨ v7 ∨ v14 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v49 := by
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
    have u3 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n9
    have u6 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u7 : v13 := by
      rcases c1224 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u8 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    rcases c44 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1823 : v6 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
    have u6 : v41 := by
      rcases c1813 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v34 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v14 := by
      rcases c1805 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v7 := by
      rcases c1814 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v22 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u19 : ¬v24 := by
      rcases c1822 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n7
    have u20 : v12 := by
      rcases c1820 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v28 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n7
    have u22 : v23 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u1
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u4
    rcases c92 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1824 : ¬v2 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v38 := by
      rcases c1823 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v24 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v7 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u15 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v10 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n6
    have u20 : v3 := by
      rcases c526 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u18
      · exact absurd a u17
    have u21 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u15 a
      · exact absurd n0 a
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n4
  have c1825 : ¬v29 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v24 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v28 := by
      rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v7 := by
      rcases c1802 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u10 a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u7
    have u14 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n6
    rcases c60 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c1826 : v36 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v14 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u6
    have u12 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v35 := by
      rcases c257 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n8 a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v41 := by
      rcases c1000 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a u17
  have c1827 : ¬v14 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v26 ∨ v27 ∨ v36 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c1826 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v22 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
    have u10 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n11
    have u11 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v37 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact a
      · exact absurd a u6
    rcases c1479 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a u7
    · exact absurd a u6
  have c1828 : v49 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v14 ∨ v24 ∨ v26 ∨ v27 ∨ v42 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v36 := by
      rcases c1827 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n2
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
    have u6 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v35 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u8 : v30 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n0
    rcases c114 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1829 : ¬v7 ∨ v6 ∨ v24 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v10 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n7
    have u9 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v42 := by
      rcases c1828 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n5
    have u19 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u6
    have u20 : v4 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u18 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
    rcases c32 with a|a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd n0 a
    · exact absurd u20 a
  have c1830 : ¬v7 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c1829 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u12 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
    rcases c1190 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a n6
  have c1831 : ¬v24 ∨ v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v7 := by
      rcases c1830 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v2 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1722 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
    have u14 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u15 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u15 a
      · exact absurd a u14
    have u18 : v15 := by
      rcases c488 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u9
    have u19 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a n4
    rcases c1012 with a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd n0 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u23
  have c1832 : v21 ∨ v6 ∨ v13 ∨ v14 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n9
    have u2 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v34 := by
      rcases c1695 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v7 := by
      rcases c1830 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n10
  have c1833 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v33 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c257 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n7 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c1834 : ¬v8 ∨ v6 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v7 := by
      rcases c1830 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v2 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u3
    have u13 : v15 := by
      rcases c1419 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a u12
    have u14 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v28 := by
      rcases c1832 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v35 := by
      rcases c1833 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v41 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a n3
      · exact a
    have u26 : v37 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u14
    rcases c135 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c1835 : ¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v37 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n7
    have u5 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1479 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n7
  have c1836 : v22 ∨ v6 ∨ v9 ∨ v23 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c1834 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v2 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u10 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u12 : v28 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u13 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u3
    have u14 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v14 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
    have u18 : v34 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a n5
    have u19 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v37 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u21
      · exact a
      · exact absurd a u7
    rcases c1479 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u7
  have c1837 : ¬v28 ∨ v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v1 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v29 := by
      rcases c1825 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v8 := by
      rcases c1834 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v9 := by
      rcases c1836 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
    have u20 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u22 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v15 := by
      rcases c1527 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u24 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u8
    have u25 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u25
    rcases c836 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
  have c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v30 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
    have u4 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1634 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1839 : v47 ∨ v6 ∨ ¬v9 ∨ v26 ∨ v29 ∨ ¬v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n7
    have u15 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v1 := by
      rcases c632 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v27 := by
      rcases c1829 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n7
    have u21 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd n5 a
      · exact absurd a u21
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a n4
    have u24 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c1771 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd u18 a
    · exact absurd u27 a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd u12 a
    · exact absurd a n0
  have c1840 : v42 ∨ v5 ∨ v6 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v4 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact a
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n12
    have u8 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n6
    have u11 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n14
    have u15 : v3 := by
      rcases c1322 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u6
    have u16 : v1 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a u13
      · exact a
      · exact absurd a n14
    rcases c13 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u7 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1841 : ¬v1 ∨ ¬v5 ∨ v6 ∨ v21 ∨ v22 ∨ v23 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v7 := by
      rcases c1771 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n11
    have u6 : ¬v2 := by
      rcases c1772 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n11
    have u7 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n13
    have u8 : v8 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n13
    rcases c45 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c1842 : v49 ∨ v6 ∨ v22 ∨ v26 ∨ ¬v27 ∨ v29 ∨ ¬v30 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u6 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
    have u14 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n6 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u15 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v5 := by
      rcases c1840 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u19 : ¬v9 := by
      rcases c1839 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n0
    have u20 : ¬v1 := by
      rcases c1841 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u21 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v7 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u20
      · exact a
      · exact absurd u21 a
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n0
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a n0
  have c1843 : v27 ∨ v6 ∨ v26 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c1830 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v24 := by
      rcases c1798 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1802 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1844 : ¬v27 ∨ v6 ∨ v26 ∨ v29 ∨ ¬v30 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1842 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
  have c1845 : v49 ∨ v6 ∨ v26 ∨ v29 ∨ ¬v30 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    have u4 : ¬v27 := by
      rcases c1844 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u5 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    rcases c1843 with a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
  have c1846 : v28 ∨ v1 ∨ v6 ∨ v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u2 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u3 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v7 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n11
    have u7 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u6 a
      · exact a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n11
  have c1847 : ¬v27 ∨ v18 ∨ ¬v21 ∨ v26 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c616 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1848 : v6 ∨ ¬v1 ∨ v7 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u8 : ¬v17 := by
      rcases c1311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u9 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u10 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u11 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v18 := by
      rcases c1674 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
    have u14 : ¬v21 := by
      rcases c1847 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n12
    have u16 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n3
    have u19 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v2 := by
      rcases c1723 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n12
    have u21 : v5 := by
      rcases c553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
    rcases c275 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd u21 a
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a u10
    · exact absurd a n11
  have c1849 : v33 ∨ ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ v12 ∨ ¬v27 ∨ v34 ∨ v35 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n8 a
      · exact absurd a n9
    have u8 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
    have u9 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n0
    rcases c79 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1850 : v37 ∨ ¬v1 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd n14 a
      · exact a
    have u3 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n14 a
      · exact a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n12
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v2 := by
      rcases c1849 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n7 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n14 a
      · exact absurd a n15
    have u11 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u4
    have u12 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v3 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
    have u15 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd u14 a
    have u16 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
      · exact absurd n3 a
    have u17 : v39 := by
      rcases c203 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n16
    have u18 : v40 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n10
    rcases c141 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c1851 : v37 ∨ ¬v1 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v16 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd n13 a
      · exact a
    have u2 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v2 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
    have u4 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v17 := by
      rcases c551 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
    have u9 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
    have u10 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd u9 a
    have u11 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
      · exact absurd n3 a
    rcases c203 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd u9 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a n15
  have c1852 : v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v19 := by
      rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n7 a
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n12
    rcases c1263 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1853 : ¬v1 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v26 ∨ ¬v27 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v33 := by
      rcases c1850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd u5 a
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v39 := by
      rcases c1851 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n11
      · exact a
      · exact absurd u5 a
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v11 := by
      rcases c1852 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a u7
    have u17 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u4
    rcases c4 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u16 a
    · exact absurd n2 a
    · exact absurd u17 a
  have c1854 : v38 ∨ ¬v1 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v2 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v31 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u2 a
      · exact a
    rcases c554 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u3
  have c1855 : v29 ∨ v6 ∨ v26 ∨ ¬v27 ∨ v34 ∨ v38 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v30 := by
      rcases c1845 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
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
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u12 : ¬v37 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n5
    have u13 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v1 := by
      rcases c1846 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v12 := by
      rcases c1854 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u14 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n10
    have u16 : v7 := by
      rcases c1848 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u14 a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v13 := by
      rcases c1853 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v2 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u8
    have u22 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
      · exact absurd u21 a
    have u23 : v31 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a u10
    have u24 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u23 a
      · exact a
    rcases c554 with a|a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u24
  have c1856 : ¬v2 ∨ ¬v1 ∨ ¬v7 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n5 a
      · exact a
    rcases c222 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n6
  have c1857 : v26 ∨ v6 ∨ ¬v27 ∨ v29 ∨ v34 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v30 := by
      rcases c1844 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v38 := by
      rcases c1855 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v46 := by
      rcases c1713 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n5
    have u14 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u14
    have u16 : v1 := by
      rcases c1846 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u14
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n4
    have u18 : v7 := by
      rcases c1848 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u16 a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v2 := by
      rcases c1856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n7
    have u24 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u2
    have u25 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
    have u26 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v3 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u23
      · exact a
      · exact absurd u24 a
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u20
    have u28 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u13
    rcases c15 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u28 a
    · exact absurd u27 a
    · exact absurd u18 a
  have c1858 : ¬v41 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1504 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1859 : v41 ∨ v6 ∨ v26 ∨ v29 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c1843 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1857 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1860 : v34 ∨ v6 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c1858 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1859 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1861 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    rcases c187 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
  have c1862 : v2 ∨ ¬v1 ∨ v12 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v9 := by
      rcases c1607 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n15
    have u3 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n18
    have u6 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n16
    have u7 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u8 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u6 a
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n15
    · exact absurd a n2
    · exact absurd a n17
  have c1863 : ¬v7 ∨ ¬v1 ∨ ¬v2 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n11 a
      · exact absurd a n12
    have u6 : ¬v11 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u4
    have u7 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n9
    have u8 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v13 := by
      rcases c1263 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
    rcases c53 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1864 : v6 ∨ ¬v1 ∨ v26 ∨ v29 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v34 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v30 := by
      rcases c1845 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v24 := by
      rcases c1831 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
    have u18 : ¬v37 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
    have u19 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u16
    have u20 : ¬v12 := by
      rcases c1854 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n7
    have u21 : v2 := by
      rcases c1862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n7
    have u22 : ¬v7 := by
      rcases c1863 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a n5
    have u23 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n7
    have u24 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n7
    have u25 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u16
    have u26 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u25 a
      · exact absurd u21 a
    have u27 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact absurd u25 a
      · exact a
    have u28 : v39 := by
      rcases c327 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u19
      · exact a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u29
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u13
    have u31 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : v13 := by
      rcases c1263 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u23
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a n2
    have u33 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u31
      · exact absurd a n7
    rcases c60 with a|a
    · exact absurd u33 a
    · exact absurd u32 a
  exact ⟨c1817, c1821, c1824, c1825, c1829, c1831, c1835, c1837, c1838, c1840, c1845, c1858, c1860, c1861, c1864⟩
