import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1350-1399 of the 2934-step refutation of ccase002: 131 core clauses and 76 earlier-derived ones give 11 more. -/
theorem CCase002_block027
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c34 : v6 ∨ v3 ∨ v1 ∨ v7 ∨ v4 ∨ v2)
    (c35 : v7 ∨ v3 ∨ v6 ∨ v4 ∨ v1 ∨ v5)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c94 : v16 ∨ v21 ∨ v19 ∨ v18 ∨ v15 ∨ v17)
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
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c145 : ¬v39 ∨ ¬v36)
    (c150 : ¬v39 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c160 : ¬v42 ∨ ¬v39)
    (c165 : ¬v45 ∨ ¬v43)
    (c170 : ¬v45 ∨ ¬v44)
    (c176 : ¬v45 ∨ ¬v47)
    (c177 : ¬v45 ∨ ¬v48)
    (c178 : ¬v49 ∨ ¬v45)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c194 : v36 ∨ v43 ∨ v24 ∨ v44 ∨ v16 ∨ v15 ∨ v29 ∨ v35 ∨ v28 ∨ v31 ∨ v17 ∨ v23 ∨ ¬v22 ∨ v49)
    (c197 : v43 ∨ v49 ∨ v48 ∨ v6 ∨ v13 ∨ ¬v7 ∨ v1 ∨ v14)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c248 : v6 ∨ ¬v7 ∨ v49 ∨ v48 ∨ v43 ∨ v8 ∨ v1 ∨ v14)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c278 : v21 ∨ v13 ∨ v1 ∨ v20 ∨ v6 ∨ ¬v14 ∨ v8 ∨ v7)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c308 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v37 ∨ v32 ∨ v39)
    (c318 : ¬v27 ∨ v34 ∨ v19 ∨ v41 ∨ v49 ∨ v35 ∨ v20 ∨ v26 ∨ v28 ∨ v18 ∨ v32 ∨ v47 ∨ v48 ∨ v25)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c393 : v36 ∨ v29 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ ¬v30)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c433 : v43 ∨ v21 ∨ v18 ∨ v20 ∨ v8 ∨ v4 ∨ v13 ∨ v1 ∨ v11 ∨ v7 ∨ v12 ∨ ¬v14 ∨ v48 ∨ v49)
    (c435 : v22 ∨ v27 ∨ v17 ∨ v21 ∨ v20 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v10 ∨ v13 ∨ v8 ∨ v9 ∨ v3 ∨ v28)
    (c479 : v12 ∨ ¬v4 ∨ v3 ∨ v5 ∨ v46 ∨ v47 ∨ v10 ∨ v11)
    (c503 : ¬v15 ∨ v16 ∨ v27 ∨ v21 ∨ v1 ∨ v13 ∨ v22 ∨ v28 ∨ v9 ∨ v8 ∨ v20 ∨ v43 ∨ v44 ∨ v49)
    (c506 : ¬v33 ∨ v40 ∨ v26 ∨ v46 ∨ v41 ∨ v37 ∨ v23 ∨ v34 ∨ v32 ∨ v31 ∨ v30 ∨ v25 ∨ v47 ∨ v48)
    (c511 : ¬v45 ∨ v38 ∨ v46 ∨ v37 ∨ v2 ∨ v44 ∨ v3 ∨ v4)
    (c512 : v43 ∨ ¬v2 ∨ v3 ∨ v1 ∨ v9 ∨ v44 ∨ v8 ∨ v10)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c719 : v17 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c843 : v23 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1094 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1239 : v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33)
    (c1250 : ¬v11 ∨ ¬v3 ∨ v4 ∨ v17 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48)
    (c1283 : v35 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v28 ∨ v29 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1297 : ¬v2 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1301 : ¬v41 ∨ v33 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1342 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1474 : ¬v27 ∨ v19 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1491 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1511 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v19 ∨ v20)
    (c1514 : v33 ∨ ¬v3 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1533 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1582 : v19 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1697 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1703 : ¬v36 ∨ v2 ∨ v3 ∨ ¬v45 ∨ v46)
    (c1713 : ¬v37 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v45 ∨ v46)
    (c1720 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1726 : v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ v10 ∨ ¬v37 ∨ v41 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48)
    (c1738 : ¬v13 ∨ v3 ∨ v6 ∨ v7 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c1740 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32)
    (c1741 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v39 ∨ v46)
    (c1742 : ¬v12 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v18 ∨ v19)
    (c1745 : v39 ∨ v4 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1787 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1792 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1803 : v34 ∨ v6 ∨ v13 ∨ v19 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c1815 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1817 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v46 ∨ v47)
    (c1818 : v19 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v33)
    (c1819 : v11 ∨ v4 ∨ v6 ∨ v10 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1835 : ¬v20 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1838 : v20 ∨ v6 ∨ v8 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v18 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49)
    (c1848 : ¬v1 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1850 : ¬v23 ∨ v16 ∨ v17 ∨ ¬v34)
    (c1860 : v20 ∨ ¬v10 ∨ v14 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1862 : v27 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1865 : v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1871 : v14 ∨ v9 ∨ ¬v15 ∨ ¬v19 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1874 : v23 ∨ v16 ∨ v18 ∨ v19 ∨ v21 ∨ ¬v25 ∨ v26 ∨ v27)
    (c1878 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ ¬v26)
    (c1888 : v12 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1889 : v49 ∨ ¬v9 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48)
    (c1894 : v33 ∨ v8 ∨ ¬v15 ∨ v19 ∨ v20 ∨ ¬v26)
    (c1898 : v37 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v19 ∨ v32 ∨ ¬v40 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48)
    (c1901 : ¬v23 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v31)
    (c1902 : v17 ∨ v12 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1903 : ¬v7 ∨ v1 ∨ v9 ∨ ¬v12 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c1904 : ¬v18 ∨ ¬v12 ∨ ¬v15 ∨ v17 ∨ v21)
    (c1912 : v17 ∨ v7 ∨ v14 ∨ v18 ∨ v21 ∨ ¬v25 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    : (¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44) ∧ (v7 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49) ∧ (v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17) ∧ (v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ v6 ∨ v13 ∨ v17 ∨ v18 ∨ v20 ∨ v26 ∨ ¬v33 ∨ v47 ∨ v48 ∨ v49) ∧ (v25 ∨ v1 ∨ v2 ∨ v3 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v34 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v23 ∨ v8 ∨ ¬v15 ∨ ¬v20) ∧ (¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35) := by
  have c1913 : v25 ∨ ¬v6 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v5 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n15
      · exact a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u5 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n14
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u1
    have u10 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a n17
    · exact absurd a u10
  have c1914 : v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v21 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v12 := by
      rcases c1902 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v19 := by
      rcases c1871 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a u4
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
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v18 := by
      rcases c1904 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
    have u11 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v7 := by
      rcases c1903 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v25 := by
      rcases c1912 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v6 := by
      rcases c1913 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v34 := by
      rcases c1803 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n8
    have u20 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u18
      · exact a
      · exact absurd a n8
      · exact absurd a u20
    rcases c1283 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u21 a
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a n8
  have c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c1850 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
  have c1916 : v7 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    rcases c579 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1917 : v13 ∨ ¬v4 ∨ v5 ∨ v7 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n6 a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n6 a
    have u8 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n6 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v12 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u8
      · exact a
    have u12 : v3 := by
      rcases c479 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n4
    have u13 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u14 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u10
    have u15 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v33 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u13
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u10
  have c1918 : ¬v4 ∨ v7 ∨ v11 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n5 a
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v5 := by
      rcases c1917 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
    have u11 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
    have u13 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd a n8
    have u14 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v37 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u10
    rcases c1723 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u16
  have c1919 : ¬v13 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ v17 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1738 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1920 : ¬v4 ∨ v7 ∨ v11 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact absurd u2 a
      · exact a
    have u4 : v13 := by
      rcases c1918 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v5 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v6 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
    have u8 : v3 := by
      rcases c479 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n2
    rcases c25 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd n0 a
  have c1921 : ¬v33 ∨ v6 ∨ v13 ∨ v14 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u1
    have u12 : v18 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u9
    have u13 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    have u14 : v8 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u8
    have u15 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
    rcases c38 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1922 : v20 ∨ ¬v4 ∨ v7 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n4 a
    have u7 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v11 := by
      rcases c1920 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v26 := by
      rcases c1838 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v33 := by
      rcases c1921 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u18 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
    have u19 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v35 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u18
      · exact a
    have u22 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a u8
      · exact absurd a u17
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u7
    · exact absurd a u8
  have c1923 : v3 ∨ v1 ∨ v4 ∨ v6 ∨ v7 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v5 := by
      rcases c35 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u2 : v12 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v2 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n6
    rcases c34 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u4
  have c1924 : v48 ∨ v6 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u5 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u6 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u7 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n5 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n5 a
    have u10 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v3 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u13 : ¬v11 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u14 : v12 := by
      rcases c1819 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u15 : v5 := by
      rcases c1742 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
    have u16 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u12 a
    have u17 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u11
    have u18 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u19 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : v39 := by
      rcases c1745 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u26 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u26
    have u30 : ¬v30 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u28
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u30
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u28
    · exact absurd a u11
    · exact absurd a u16
  have c1925 : v17 ∨ v7 ∨ v13 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n4 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n4 a
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v6 := by
      rcases c1924 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u10 : v5 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u9 a
    have u13 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd u4 a
      · exact absurd a n6
    have u14 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u1
    have u15 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u12
  have c1926 : v3 ∨ v1 ∨ v4 ∨ v8 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v2 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
    have u4 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n10 a
      · exact absurd a n11
    have u5 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
    have u6 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
  have c1927 : ¬v23 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1815 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1928 : v30 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v37 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n1
    have u2 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1773 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
  have c1929 : v46 ∨ v7 ∨ v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n3 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n3 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v4 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v13 := by
      rcases c1925 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v3 := by
      rcases c1926 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v5 := by
      rcases c1188 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v6 := by
      rcases c1511 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n5
    have u19 : ¬v2 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    have u20 : ¬v23 := by
      rcases c1927 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v30 := by
      rcases c1928 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v26 := by
      rcases c1894 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a n5
      · exact a
    rcases c1514 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd u16 a
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v8 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    rcases c197 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n3
  have c1931 : v14 ∨ ¬v15 ∨ v17 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v7 := by
      rcases c1929 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v6 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u10 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u11 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u8 a
    have u12 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u13 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u3 a
      · exact absurd a n4
    have u14 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
    have u15 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v21 := by
      rcases c1914 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v19 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v16 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u20 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v8 := by
      rcases c1926 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v26 := by
      rcases c1818 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u17
      · exact a
      · exact absurd a u22
    rcases c1815 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u25
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1932 : v8 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n5 a
    have u4 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
    have u5 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
  have c1933 : v46 ∨ v4 ∨ v9 ∨ v10 ∨ v14 ∨ ¬v15 ∨ ¬v17 ∨ v19 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n5 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u3 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n6 a
    have u4 : v8 := by
      rcases c1932 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v24 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n2
    have u12 : ¬v33 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n10
    have u13 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v6 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n11
      · exact a
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n0
    have u21 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u18
    have u22 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n1
    have u23 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u22 a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a n12
    · exact absurd a u24
  have c1934 : v46 ∨ v14 ∨ ¬v15 ∨ v20 ∨ v23 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v17 := by
      rcases c1931 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u7 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u8 : v8 := by
      rcases c1932 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u1 a
    have u9 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v24 := by
      rcases c1369 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
    have u14 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v4 := by
      rcases c1933 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v6 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v34 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
    have u22 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c1297 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c1935 : v14 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v23 := by
      rcases c1934 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v17 := by
      rcases c1931 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v18 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c1860 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v9 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v8 := by
      rcases c1932 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u4 a
    have u10 : v11 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u8
    rcases c38 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1936 : v33 ∨ ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : v4 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c31 with a|a|a
    · exact absurd u1 a
    · exact absurd u3 a
    · exact absurd n1 a
  have c1937 : v6 ∨ ¬v14 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v7 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
    have u6 : v33 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v27 := by
      rcases c1802 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
    rcases c1342 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1938 : v18 ∨ ¬v15 ∨ ¬v17 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v14 := by
      rcases c1935 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u3
      · exact a
    have u16 : v6 := by
      rcases c1937 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u16 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v7 := by
      rcases c433 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v33 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u16 a
    have u21 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u16 a
    have u22 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v25 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd u5 a
      · exact absurd a n4
    have u25 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u20
    rcases c107 with a|a
    · exact absurd u25 a
    · exact absurd u23 a
  have c1939 : v13 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v4 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v3 := by
      rcases c1926 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a n0
  have c1940 : v16 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : v14 := by
      rcases c1934 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v17 := by
      rcases c1938 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v33 := by
      rcases c1239 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a u3
      · exact a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1941 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n4
  have c1942 : v19 ∨ v6 ∨ v13 ∨ v17 ∨ v18 ∨ v20 ∨ v26 ∨ ¬v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
    rcases c1941 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1943 : v46 ∨ ¬v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v14 := by
      rcases c1935 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v26 := by
      rcases c1940 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v17 := by
      rcases c1938 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v6 := by
      rcases c1939 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v33 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v2 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u8
    have u19 : v4 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u17 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd u2 a
      · exact absurd a n0
    have u21 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
    have u22 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v27 := by
      rcases c1342 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v37 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd a u22
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : v30 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u19 a
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a u25
      · exact a
      · exact absurd a u24
      · exact absurd a u11
    rcases c1723 with a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u20
    · exact absurd a u24
  have c1944 : v20 ∨ ¬v15 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v14 := by
      rcases c1935 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : v16 := by
      rcases c1943 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v17 := by
      rcases c58 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v33 := by
      rcases c1888 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v26 := by
      rcases c1894 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u17 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v2 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
    have u20 : v6 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u18
    have u21 : ¬v4 := by
      rcases c1533 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd u1 a
      · exact absurd a n4
    have u23 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a u21
    have u24 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u25
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v28 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
    have u31 : ¬v27 := by
      rcases c1474 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a u27
    have u32 : v22 := by
      rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u30
    have u33 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u32 a
      · exact a
    rcases c1745 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1945 : v18 ∨ ¬v15 ∨ v20 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c1935 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v19 := by
      rcases c1944 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v21 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u9 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
    rcases c1878 with a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd u9 a
  have c1946 : v20 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
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
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v18 := by
      rcases c1945 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v19 := by
      rcases c67 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c69 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v17 := by
      rcases c63 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u10 : ¬v12 := by
      rcases c1904 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v14 := by
      rcases c1935 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
    have u18 : v25 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u8
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u16
    have u19 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u18 a
      · exact a
    rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n5
  have c1947 : v9 ∨ v1 ∨ v3 ∨ v4 ∨ v8 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
    have u2 : ¬v48 := by
      rcases c177 with a|a
      · exact absurd n10 a
      · exact a
    have u3 : ¬v47 := by
      rcases c176 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v2 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u1
    have u7 : ¬v37 := by
      rcases c1713 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n10 a
      · exact absurd a n11
    have u8 : v38 := by
      rcases c511 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v32 := by
      rcases c1792 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
  have c1948 : v4 ∨ v1 ∨ v8 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ ¬v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    rcases c1947 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd n11 a
    · exact absurd a n12
  have c1949 : v26 ∨ v4 ∨ v8 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n8
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
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v33 := by
      rcases c1948 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
    have u15 : v39 := by
      rcases c1741 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
    have u16 : v40 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n10
      · exact absurd a n11
    rcases c158 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1950 : ¬v10 ∨ v7 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u5 : v28 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n6
    rcases c105 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1951 : v8 ∨ v11 ∨ v12 ∨ ¬v15 ∨ v26 ∨ ¬v33 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u7 a
    have u14 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v25 := by
      rcases c1740 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
    have u18 : ¬v23 := by
      rcases c1901 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
    have u19 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n9
    have u20 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n9
    have u21 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u16
    have u22 : v4 := by
      rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v5 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u22 a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u16
    have u24 : v40 := by
      rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v7 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd u24 a
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v10 := by
      rcases c1950 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd n3 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a n9
    have u28 : v3 := by
      rcases c479 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u22 a
      · exact a
      · exact absurd a u23
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u27
      · exact absurd a n1
    have u29 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u22 a
    have u30 : v28 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u28 a
      · exact absurd u22 a
      · exact absurd a u13
      · exact absurd a u18
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n9
    have u31 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a n6
    have u32 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u29
    have u33 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u30 a
    have u34 : v14 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u31
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a u33
      · exact absurd u7 a
    rcases c46 with a|a
    · exact absurd u32 a
    · exact absurd u34 a
  have c1952 : v25 ∨ v1 ∨ v2 ∨ v3 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v34 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v30 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n2
    have u3 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v33 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v39 := by
      rcases c1787 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u7
    have u10 : v22 := by
      rcases c1720 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v26 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v38 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n9
      · exact a
      · exact absurd u2 a
    have u13 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u16 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v45 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a n15
      · exact a
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u8
    have u18 : ¬v49 := by
      rcases c178 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v15 := by
      rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n5
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd u10 a
      · exact absurd a u18
    have u21 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u18
    have u22 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u21 a
    have u23 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd u21 a
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
    have u24 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u16
    rcases c56 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c1953 : ¬v23 ∨ v8 ∨ ¬v15 ∨ ¬v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u5 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u7 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u8 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u9 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1865 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd n2 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
  have c1954 : v46 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v15 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c1951 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n5 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd n5 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n5 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u2 a
    have u10 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v23 := by
      rcases c1953 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd u2 a
    have u12 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u5
    have u15 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u7
    have u18 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u3 a
      · exact absurd a n0
    have u19 : ¬v10 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u15
    have u20 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
    have u21 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v4 := by
      rcases c1947 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n0
    have u23 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u22 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v37 := by
      rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v25 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u25 a
      · exact a
    rcases c1874 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd u25 a
    · exact absurd a n6
    · exact absurd a u26
  have c1955 : v26 ∨ v8 ∨ v12 ∨ v13 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u1 a
    have u5 : v11 := by
      rcases c1954 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v27 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd u1 a
    have u9 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
    rcases c104 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1956 : v23 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c1815 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v2 := by
      rcases c1297 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n13
    have u10 : v37 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v4 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a u3
      · exact a
      · exact absurd u4 a
      · exact absurd a n13
    have u12 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u1 a
      · exact absurd u11 a
      · exact a
    rcases c1726 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u10 a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1957 : v14 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n11 a
    have u5 : v20 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n12
    have u6 : v15 := by
      rcases c94 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a n6
    have u7 : v45 := by
      rcases c1582 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v8 := by
      rcases c1835 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u10 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v33 := by
      rcases c1956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v4 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n16
    have u19 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u20 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u17 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u21 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a u19
    rcases c1930 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd u21 a
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n15
    · exact absurd a n16
  have c1958 : v46 ∨ v12 ∨ v13 ∨ ¬v15 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c65 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v8 := by
      rcases c1955 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v27 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd u1 a
    have u15 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v34 := by
      rcases c1957 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd u14 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n7
    have u22 : ¬v42 := by
      rcases c1697 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a u22
  have c1959 : v26 ∨ v13 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u5 : v12 := by
      rcases c1958 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v22 := by
      rcases c1864 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u6 a
      · exact a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u8
  have c1960 : v13 ∨ ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u5 : v26 := by
      rcases c1959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v8 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u5 a
    have u10 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
    have u11 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u9 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u11
  have c1961 : ¬v15 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v45 := by
      rcases c1702 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v1 := by
      rcases c1848 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v43 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v13 := by
      rcases c1960 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v17 := by
      rcases c1932 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd n0 a
      · exact a
    have u13 : v20 := by
      rcases c1946 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v18 := by
      rcases c68 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v16 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u13 a
    have u16 : ¬v23 := by
      rcases c1953 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd u13 a
    have u17 : ¬v21 := by
      rcases c72 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v19 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u17
      · exact a
    have u20 : v22 := by
      rcases c1865 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u17
      · exact a
    have u21 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v33 := by
      rcases c1951 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : ¬v40 := by
      rcases c1383 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u26 : ¬v7 := by
      rcases c1936 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u27 : ¬v3 := by
      rcases c1514 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u28 : ¬v2 := by
      rcases c512 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
    have u29 : ¬v36 := by
      rcases c1703 with a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd u1 a
      · exact absurd a n1
    have u30 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
    have u31 : ¬v41 := by
      rcases c1301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u30
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u32 : v37 := by
      rcases c1952 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u30
      · exact absurd a u29
      · exact a
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u33 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u26
      · exact absurd a u10
      · exact a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u33
    rcases c1491 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u35 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
  have c1962 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c843 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u1
  exact ⟨c1915, c1916, c1930, c1932, c1936, c1941, c1942, c1952, c1953, c1961, c1962⟩
