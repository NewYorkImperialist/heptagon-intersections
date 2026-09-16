import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1400-1449 of the 2934-step refutation of ccase002: 108 core clauses and 76 earlier-derived ones give 15 more. -/
theorem CCase002_block028
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c112 : ¬v26 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c130 : ¬v33 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c134 : ¬v31 ∨ ¬v33)
    (c136 : ¬v31 ∨ ¬v35)
    (c141 : ¬v35 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c144 : ¬v38 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c150 : ¬v39 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c165 : ¬v45 ∨ ¬v43)
    (c170 : ¬v45 ∨ ¬v44)
    (c176 : ¬v45 ∨ ¬v47)
    (c177 : ¬v45 ∨ ¬v48)
    (c178 : ¬v49 ∨ ¬v45)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c194 : v36 ∨ v43 ∨ v24 ∨ v44 ∨ v16 ∨ v15 ∨ v29 ∨ v35 ∨ v28 ∨ v31 ∨ v17 ∨ v23 ∨ ¬v22 ∨ v49)
    (c200 : v15 ∨ v7 ∨ v18 ∨ v4 ∨ v11 ∨ v16 ∨ v14 ∨ v10 ∨ ¬v8 ∨ v9 ∨ v1 ∨ v43 ∨ v44 ∨ v49)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c228 : v29 ∨ v43 ∨ v49 ∨ v44 ∨ v42 ∨ ¬v36 ∨ v30 ∨ v37)
    (c230 : ¬v45 ∨ v3 ∨ v30 ∨ v42 ∨ v31 ∨ v38 ∨ v7 ∨ v39 ∨ v43 ∨ v32 ∨ v2 ∨ v44 ∨ v46 ∨ v49)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c234 : ¬v23 ∨ v30 ∨ v26 ∨ v24 ∨ v16 ∨ v31 ∨ v25 ∨ v9 ∨ v8 ∨ v19 ∨ v10 ∨ v15 ∨ v22 ∨ v33)
    (c252 : v1 ∨ v10 ∨ v17 ∨ v3 ∨ v15 ∨ v7 ∨ v9 ∨ v6 ∨ v13 ∨ v16 ∨ ¬v2 ∨ v43 ∨ v44 ∨ v48)
    (c264 : ¬v37 ∨ v43 ∨ v31 ∨ v45 ∨ v30 ∨ v44 ∨ v38 ∨ v36)
    (c302 : v29 ∨ ¬v22 ∨ v15 ∨ v35 ∨ v14 ∨ v26 ∨ v8 ∨ v23 ∨ v27 ∨ v19 ∨ v33 ∨ v28 ∨ v16 ∨ v9)
    (c329 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v18 ∨ v4 ∨ v1 ∨ v3 ∨ ¬v11 ∨ v8 ∨ v10 ∨ v12 ∨ v9 ∨ v26)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c378 : ¬v8 ∨ v14 ∨ v20 ∨ v16 ∨ v15 ∨ v6 ∨ v9 ∨ v1 ∨ v13 ∨ v7 ∨ v22 ∨ v29 ∨ v30 ∨ v35)
    (c384 : v36 ∨ v22 ∨ v37 ∨ v23 ∨ v42 ∨ v35 ∨ v30 ∨ ¬v29)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c405 : ¬v37 ∨ v43 ∨ v38 ∨ v44 ∨ v30 ∨ v32 ∨ v10 ∨ v9 ∨ v36 ∨ v31 ∨ v39 ∨ v8 ∨ v2 ∨ v46)
    (c425 : v43 ∨ ¬v21 ∨ v20 ∨ v12 ∨ v7 ∨ v28 ∨ v27 ∨ v8 ∨ v14 ∨ v19 ∨ v26 ∨ v15 ∨ v48 ∨ v49)
    (c426 : v29 ∨ v22 ∨ v24 ∨ v30 ∨ v15 ∨ v31 ∨ ¬v23 ∨ v16)
    (c432 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v28 ∨ v42)
    (c467 : v29 ∨ v43 ∨ v44 ∨ v35 ∨ v37 ∨ v42 ∨ v49 ∨ ¬v36)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c512 : v43 ∨ ¬v2 ∨ v3 ∨ v1 ∨ v9 ∨ v44 ∨ v8 ∨ v10)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c759 : v8 ∨ v1 ∨ v6 ∨ v7 ∨ ¬v14 ∨ v15 ∨ v21)
    (c817 : ¬v20 ∨ v9 ∨ v10 ∨ v13 ∨ ¬v16 ∨ v19 ∨ v21 ∨ v23 ∨ v26 ∨ v28)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c991 : v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1100 : ¬v26 ∨ v19 ∨ v20 ∨ v32 ∨ v33 ∨ v34)
    (c1196 : v26 ∨ ¬v16 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1211 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1220 : ¬v18 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c1238 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1262 : v15 ∨ v14 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c1281 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1316 : ¬v16 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1325 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1361 : ¬v29 ∨ v17 ∨ v18 ∨ ¬v25)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1424 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v23)
    (c1446 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v16)
    (c1458 : ¬v8 ∨ v1 ∨ v5 ∨ v7 ∨ v12 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v23 ∨ v28)
    (c1467 : v42 ∨ v7 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v43 ∨ v49)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1589 : ¬v38 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v28 ∨ v43)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1643 : v43 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v24 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1653 : v14 ∨ v1 ∨ ¬v8 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c1654 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c1666 : ¬v42 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v48 ∨ v49)
    (c1690 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35)
    (c1696 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ v16 ∨ v17)
    (c1701 : v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1703 : ¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46)
    (c1710 : ¬v28 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1713 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1764 : ¬v24 ∨ v5 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v33 ∨ v40 ∨ v47)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1787 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1805 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1848 : ¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1936 : v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1952 : v25 ∨ v1 ∨ v2 ∨ v3 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v34 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c1961 : ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1962 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35)
    : (v24 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v28 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v15 ∨ v16 ∨ ¬v33) ∧ (¬v33 ∨ v15 ∨ v16 ∨ ¬v22) ∧ (v29 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v21 ∨ ¬v22 ∨ v36 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v23 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v26 ∨ v30 ∨ v31 ∨ v33) ∧ (¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v43 ∨ v48 ∨ v49) ∧ (v14 ∨ v7 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ ¬v26 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28) ∧ (v14 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v14 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v28 ∨ ¬v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v8 ∨ v21 ∨ v28 ∨ ¬v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1963 : v14 ∨ v12 ∨ v16 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v35 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact a
    have u6 : v29 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u5
    have u7 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v42 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n10
      · exact a
    rcases c1211 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
  have c1964 : v22 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n9
    have u11 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u9
    have u12 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
    rcases c127 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c1965 : ¬v33 ∨ v1 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c1654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
  have c1966 : v24 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v28 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    rcases c1643 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1967 : ¬v28 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v34 ∨ v43 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1966 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1968 : v49 ∨ v12 ∨ v14 ∨ v16 ∨ v19 ∨ v21 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v22 := by
      rcases c1963 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c1965 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n0
    have u7 : ¬v8 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n0
    have u8 : v28 := by
      rcases c1964 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u9 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
    rcases c1967 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c1969 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v15 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1446 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1970 : v16 ∨ v12 ∨ v19 ∨ v22 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n6
    have u12 : ¬v8 := by
      rcases c1969 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
    have u13 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
    have u15 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v38 := by
      rcases c230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n9
    have u21 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v23 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u21
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u14 a
    have u23 : v28 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u13
    rcases c110 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c1971 : v14 ∨ v7 ∨ v12 ∨ v16 ∨ ¬v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v45 := by
      rcases c1701 with a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n12
    have u7 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
    have u8 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v2 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n3
    have u13 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v6 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a u9
    have u15 : v20 := by
      rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u15 a
    have u17 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u15 a
    have u18 : v4 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
    have u19 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u18 a
    rcases c252 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd u12 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n11
  have c1972 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n3 a
    rcases c426 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a n2
  have c1973 : v16 ∨ v12 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v33 := by
      rcases c1970 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v21 := by
      rcases c1968 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v23 := by
      rcases c1972 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
    have u14 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n9
    have u15 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n4
    have u16 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact a
    have u18 : v7 := by
      rcases c1971 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    rcases c23 with a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u19 a
  have c1974 : ¬v33 ∨ v15 ∨ v16 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n3 a
      · exact a
    rcases c984 with a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
  have c1975 : v46 ∨ v12 ∨ v14 ∨ v16 ∨ v19 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v22 := by
      rcases c1973 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a u11
      · exact a
    have u13 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd u6 a
    have u14 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n0
    have u20 : v21 := by
      rcases c1968 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v8 := by
      rcases c1969 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n3
    have u22 : v20 := by
      rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u20 a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u22 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u7
    have u24 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u22 a
    have u25 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u24
    have u26 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : v37 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u19
      · exact a
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u29 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u30
      · exact absurd a u31
    have u33 : ¬v35 := by
      rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u34 : v29 := by
      rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u33
      · exact absurd a u11
      · exact absurd a u32
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n8
    have u35 : v30 := by
      rcases c230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u14
      · exact a
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u15
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n8
    rcases c122 with a|a
    · exact absurd u35 a
    · exact absurd u34 a
  have c1976 : v29 ∨ v8 ∨ v15 ∨ v16 ∨ ¬v21 ∨ ¬v22 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
    have u8 : v30 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a n6
    have u9 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v17 := by
      rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd n5 a
      · exact absurd a n10
    have u11 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n4 a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u13 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
    have u14 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u14
  have c1977 : v29 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ ¬v21 ∨ ¬v22 ∨ v36 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : v35 := by
      rcases c1976 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd n9 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n2
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a n12
  have c1978 : ¬v29 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v23 ∨ v36 ∨ v40 ∨ v43 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n2
    have u6 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v45 := by
      rcases c264 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n7
    have u10 : ¬v49 := by
      rcases c178 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v48 := by
      rcases c177 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v4 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd u9 a
      · exact absurd a n11
    have u13 : v7 := by
      rcases c230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u10
    have u14 : ¬v6 := by
      rcases c32 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u13 a
    have u15 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd u13 a
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    rcases c405 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a n11
  have c1979 : v26 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v14 := by
      rcases c1975 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd n4 a
    have u10 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u5 a
      · exact absurd a n5
    have u18 : ¬v29 := by
      rcases c1978 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v21 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u20 : ¬v35 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u19
      · exact a
    rcases c1690 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u20
  have c1980 : v49 ∨ v12 ∨ v16 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v22 := by
      rcases c1979 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : v14 := by
      rcases c1975 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
    have u10 : v33 := by
      rcases c1970 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
    rcases c467 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd u16 a
  have c1981 : ¬v36 ∨ v29 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v35 := by
      rcases c467 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd n0 a
    have u2 : v30 := by
      rcases c228 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c132 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c1982 : ¬v36 ∨ v29 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1981 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1983 : v22 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
    have u2 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c1982 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
  have c1984 : v26 ∨ v16 ∨ v19 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1701 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v12 := by
      rcases c1980 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a u17
      · exact a
    have u19 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u12 a
    have u20 : v35 := by
      rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u8
    have u21 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v21 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd u20 a
    have u25 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v4 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd u24 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a n4
    have u28 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u6
      · exact a
    have u29 : ¬v3 := by
      rcases c15 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    rcases c512 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u28 a
    · exact absurd a u29
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u10
  have c1985 : ¬v2 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v3 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n4
    have u2 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u4 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n20
      · exact absurd a n15
    rcases c582 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd u4 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n18
  have c1986 : ¬v37 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v38 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n0 a
    rcases c405 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n12
  have c1987 : ¬v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v14 ∨ v16 ∨ v19 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1985 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a u6
    have u8 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u7 a
      · exact a
    rcases c1986 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1988 : ¬v23 ∨ v8 ∨ v9 ∨ v10 ∨ v15 ∨ v16 ∨ v19 ∨ v22 ∨ v26 ∨ v30 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n11
  have c1989 : v2 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n0
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    rcases c1986 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1990 : v26 ∨ v16 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v12 := by
      rcases c1980 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : v29 := by
      rcases c1984 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u23 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v22 := by
      rcases c1987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v23 := by
      rcases c1988 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u14
    have u26 : v2 := by
      rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
    have u27 : v3 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u26 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u28 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u32 : v20 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u30
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
    have u33 : v18 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u8
      · exact a
      · exact absurd a n2
    have u34 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v24 := by
      rcases c1764 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd u32 a
      · exact absurd a u34
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n4
    have u36 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u16
      · exact a
      · exact absurd a n6
      · exact absurd a u23
    rcases c1966 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u35
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u34
    · exact absurd u36 a
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1991 : v8 ∨ v16 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v26 := by
      rcases c1990 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
    have u14 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v38 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u4
    have u17 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v36 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a u14
    have u20 : v20 := by
      rcases c1100 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
    have u21 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a u7
      · exact a
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n2
    have u22 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd u21 a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u7
    have u26 : v7 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n6
    have u27 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u7
    have u28 : v6 := by
      rcases c359 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n6
      · exact a
      · exact absurd u26 a
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
    have u29 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u26 a
    have u31 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u28 a
    rcases c511 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a u31
    · exact absurd a u30
  have c1992 : v2 ∨ v16 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v8 := by
      rcases c1991 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : v7 := by
      rcases c1446 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n1
    have u11 : v26 := by
      rcases c1980 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u10 a
    have u14 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u12 a
    have u15 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n3
    have u19 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n0
    have u20 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
    have u21 : v36 := by
      rcases c1723 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a u18
    rcases c144 with a|a
    · exact absurd u20 a
    · exact absurd u21 a
  have c1993 : v19 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v8 := by
      rcases c1991 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v2 := by
      rcases c1992 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v5 := by
      rcases c1297 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v26 := by
      rcases c1980 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v7 := by
      rcases c1458 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u9
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
    have u15 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    rcases c23 with a|a|a
    · exact absurd u8 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1994 : ¬v8 ∨ v1 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v21 := by
      rcases c1653 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    have u8 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a u6
      · exact a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1262 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c1995 : v14 ∨ v7 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ ¬v26 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : v21 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n10
    have u6 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
    rcases c1262 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
  have c1996 : v28 ∨ v1 ∨ ¬v2 ∨ v7 ∨ v8 ∨ v14 ∨ v15 ∨ ¬v19 ∨ v22 ∨ ¬v29 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n11
    have u6 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n7 a
    have u8 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n7 a
    have u10 : v13 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact a
    have u11 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n0
    have u12 : ¬v25 := by
      rcases c1361 with a|a|a|a
      · exact absurd n9 a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
    have u13 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
      · exact a
      · exact absurd a u1
    have u14 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v36 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a n11
    have u16 : v3 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u11
    have u17 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u15 a
    rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd u10 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
  have c1997 : ¬v2 ∨ v1 ∨ v14 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v39 ∨ v40 ∨ v41 ∨ v43 ∨ v44 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
    have u4 : ¬v7 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c1995 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v28 := by
      rcases c1996 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u9 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u14 : v21 := by
      rcases c1710 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u15 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n5 a
    have u16 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n5 a
    have u17 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n5 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u7
    have u18 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u16
      · exact absurd n5 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u19 : v6 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd n5 a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u19 a
    rcases c512 with a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a u17
  have c1998 : ¬v28 ∨ v2 ∨ v15 ∨ v16 ∨ ¬v19 ∨ ¬v29 ∨ v34 ∨ v39 ∨ ¬v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v47 := by
      rcases c176 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n8 a
      · exact a
    have u12 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    have u13 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v21 := by
      rcases c1966 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n4 a
    have u17 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n4 a
    have u18 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n4 a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u2
    have u19 : v9 := by
      rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n9
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u13
  have c1999 : ¬v21 ∨ v2 ∨ v8 ∨ v14 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v22 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v43 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n6 a
    have u2 : v13 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact a
    have u3 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
    have u4 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v23 := by
      rcases c1424 with a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact a
    rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c2000 : v14 ∨ v16 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v19 := by
      rcases c1993 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
    have u11 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v2 := by
      rcases c1997 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v28 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v21 := by
      rcases c1999 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
    have u22 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u9
    have u23 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    have u25 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u26 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd u1 a
      · exact absurd a n3
    have u27 : v36 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u9
    have u28 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u25
    rcases c144 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c2001 : ¬v23 ∨ v15 ∨ v16 ∨ ¬v19 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v17 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n4
    rcases c599 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
  have c2002 : v22 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v19 := by
      rcases c1993 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n5
    have u10 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v14 := by
      rcases c2000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v23 := by
      rcases c2001 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u14
    have u22 : v2 := by
      rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
    have u23 : v3 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u22 a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u20
    have u24 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    have u26 : v21 := by
      rcases c759 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd u17 a
      · exact absurd a u3
      · exact a
    have u27 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u4 a
    have u28 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u27
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1757 with a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd u28 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u12
  have c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u3 : v12 := by
      rcases c594 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u5
  have c2004 : v14 ∨ v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v22 := by
      rcases c2002 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u1 a
    have u12 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u10
      · exact a
    have u13 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v19 := by
      rcases c1993 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v8 := by
      rcases c1994 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u19 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u10
    have u20 : ¬v35 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u19
      · exact a
    have u21 : v29 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u10
      · exact a
      · exact absurd a u20
    have u22 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
    have u28 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u26
    have u29 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u30 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u28 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u31 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u30 a
    have u32 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u28 a
    have u33 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u18
    have u34 : ¬v10 := by
      rcases c1696 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a n1
      · exact absurd a u18
    rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u17
    · exact absurd a u33
    · exact absurd a u34
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n2
  have c2005 : v16 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v14 := by
      rcases c2004 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v22 := by
      rcases c2002 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v33 := by
      rcases c1974 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u7 a
    have u14 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a u12
      · exact a
    have u15 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v19 := by
      rcases c1991 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v21 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u19 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
    have u21 : ¬v35 := by
      rcases c1962 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u20
      · exact a
    have u22 : v29 := by
      rcases c1690 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u12
      · exact a
      · exact absurd a u21
    have u23 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
    have u26 : v2 := by
      rcases c1989 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n1
    have u27 : v3 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u26 a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
    have u28 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u27 a
    rcases c759 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u20
  have c2006 : ¬v19 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v15 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n8 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u1
    have u5 : v23 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
    have u6 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
    rcases c108 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c2007 : ¬v23 ∨ ¬v14 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v19 := by
      rcases c2006 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd u11 a
    have u16 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u19 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n2
    have u21 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1936 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2008 : v21 ∨ ¬v14 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v23 := by
      rcases c2007 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v19 := by
      rcases c2006 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd u8 a
    have u13 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v20 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v7 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n0
    have u17 : v33 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v22 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    rcases c1805 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
  have c2009 : ¬v28 ∨ v1 ∨ v8 ∨ v15 ∨ ¬v16 ∨ v21 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v20 := by
      rcases c1281 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u7 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v34 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
    have u9 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    rcases c233 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
  have c2010 : ¬v14 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v23 := by
      rcases c2007 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v28 := by
      rcases c2009 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v19 := by
      rcases c2006 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd u7 a
    have u16 : v26 := by
      rcases c2008 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v20 := by
      rcases c1238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u14
    have u22 : ¬v18 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a u19
      · exact absurd a u13
    have u23 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u18
      · exact a
    rcases c125 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2011 : v22 ∨ v1 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v28 ∨ ¬v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v42 := by
      rcases c1666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v29 := by
      rcases c1983 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u3
    have u8 : ¬v2 := by
      rcases c1325 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
    have u11 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u7 a
    have u12 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd n7 a
      · exact absurd a n8
    have u13 : v36 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u3
    have u14 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u11
    rcases c144 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2012 : v8 ∨ v21 ∨ v28 ∨ ¬v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v16 := by
      rcases c2005 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v15 := by
      rcases c1961 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v14 := by
      rcases c2010 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v45 := by
      rcases c1316 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v22 := by
      rcases c2011 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v42 := by
      rcases c1211 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u19
    have u21 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u21 a
    have u23 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u20 a
    have u24 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u6 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u4
    have u27 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v19 := by
      rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd u26 a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u16
    rcases c727 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u29
    · exact absurd u30 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
  exact ⟨c1966, c1972, c1974, c1977, c1982, c1983, c1988, c1994, c1995, c2003, c2004, c2005, c2010, c2011, c2012⟩
