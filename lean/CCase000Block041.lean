import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2050-2099 of the 2189-step refutation of ccase000: 123 core clauses and 89 earlier-derived ones give 5 more. -/
theorem CCase000_block041
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
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
    (c61 : ¬v15 ∨ ¬v16)
    (c65 : ¬v15 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v20)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c83 : ¬v22 ∨ ¬v24)
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
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
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
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c153 : ¬v49 ∨ ¬v43)
    (c158 : ¬v49 ∨ ¬v44)
    (c162 : ¬v49 ∨ ¬v45)
    (c165 : ¬v49 ∨ ¬v46)
    (c167 : ¬v49 ∨ ¬v47)
    (c168 : ¬v49 ∨ ¬v48)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c219 : ¬v15 ∨ v22 ∨ v42 ∨ v29 ∨ v37 ∨ v16 ∨ v13 ∨ v20 ∨ v27 ∨ v21 ∨ v14 ∨ v8 ∨ v36 ∨ v23)
    (c224 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v47 ∨ v40 ∨ v48)
    (c240 : ¬v1 ∨ v3 ∨ v7 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v2 ∨ v8 ∨ v10 ∨ v15 ∨ v43 ∨ v44 ∨ v45)
    (c246 : v36 ∨ v22 ∨ v28 ∨ v37 ∨ v35 ∨ v30 ∨ ¬v29 ∨ v23)
    (c297 : v43 ∨ ¬v41 ∨ v34 ∨ v47 ∨ v6 ∨ v35 ∨ v48 ∨ v13 ∨ v36 ∨ v40 ∨ v42 ∨ v12 ∨ v29 ∨ v14)
    (c305 : v29 ∨ ¬v30 ∨ v38 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v22)
    (c316 : ¬v49 ∨ v35 ∨ v5 ∨ v28 ∨ v6 ∨ v27 ∨ v22 ∨ v42 ∨ v7 ∨ v40 ∨ v36 ∨ v43 ∨ v47 ∨ v48)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c404 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v1 ∨ v41 ∨ v43 ∨ v48)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c489 : v43 ∨ v22 ∨ v37 ∨ v45 ∨ v27 ∨ v35 ∨ v29 ∨ v38 ∨ v44 ∨ v23 ∨ v34 ∨ v31 ∨ ¬v30 ∨ v41)
    (c514 : v36 ∨ ¬v33 ∨ v40 ∨ v46 ∨ v48 ∨ v32 ∨ v29 ∨ v39 ∨ v26 ∨ v47 ∨ v34 ∨ v35 ∨ v27 ∨ v22)
    (c518 : v43 ∨ v7 ∨ v14 ∨ ¬v1 ∨ v35 ∨ v2 ∨ v8 ∨ v29 ∨ v13 ∨ v30 ∨ v36 ∨ v6 ∨ v44 ∨ v48)
    (c532 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v43 ∨ v48)
    (c533 : v36 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v22 ∨ v23 ∨ v29 ∨ v38)
    (c549 : v43 ∨ v9 ∨ v44 ∨ v2 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v1)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c768 : v15 ∨ v1 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c896 : ¬v5 ∨ ¬v1 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1058 : v27 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1072 : ¬v5 ∨ ¬v2 ∨ v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1128 : ¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1355 : ¬v32 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47)
    (c1372 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1403 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1817 : v35 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v36 ∨ v43)
    (c1883 : v37 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v36 ∨ v42 ∨ v43)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1898 : v32 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v29 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1949 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v6 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2152 : ¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2205 : ¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2239 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38)
    (c2354 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c2370 : ¬v6 ∨ ¬v1 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c2390 : ¬v24 ∨ v4 ∨ v11 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2400 : ¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2404 : ¬v29 ∨ v22 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v45)
    (c2417 : ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c2477 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v37)
    (c2482 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c2483 : ¬v32 ∨ v24 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c2489 : ¬v35 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c2501 : ¬v3 ∨ v2 ∨ ¬v5 ∨ ¬v7 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2505 : ¬v10 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2514 : ¬v30 ∨ v23 ∨ v24 ∨ v36 ∨ v37 ∨ v38)
    (c2546 : v49)
    (c2547 : v42 ∨ v1 ∨ v6 ∨ v7)
    (c2550 : v13 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v42)
    (c2554 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c2560 : v31 ∨ ¬v38)
    (c2566 : ¬v10 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v28 ∨ v29 ∨ v36)
    (c2567 : ¬v1 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v41 ∨ v42)
    (c2570 : ¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36)
    (c2573 : ¬v4 ∨ v2 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c2576 : v41 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33)
    (c2591 : ¬v41 ∨ v2 ∨ v24)
    (c2605 : v1 ∨ v2 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36)
    (c2613 : ¬v10 ∨ v2 ∨ v22 ∨ v24 ∨ v37)
    (c2620 : v26 ∨ v2 ∨ v24 ∨ v27)
    (c2622 : ¬v37 ∨ v2 ∨ v24 ∨ v27)
    : (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37) ∧ (v2) ∧ (¬v6 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36) ∧ (v22 ∨ ¬v41) ∧ (v27 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v31 ∨ v32 ∨ v40) := by
  have c2623 : v36 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v37 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v1 := by
      rcases c2567 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c1883 with a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u2
  have c2624 : v42 ∨ v2 ∨ v24 ∨ v27 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v26 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v37 := by
      rcases c2622 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
    have u16 : ¬v10 := by
      rcases c2613 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u10
    have u17 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n4
    have u18 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n0
    have u19 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u3
    have u20 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u3
    have u21 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u3
    have u22 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
    have u23 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u13
    have u28 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u12
    have u29 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd a u13
    have u30 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u31 : v36 := by
      rcases c2623 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u26 a
      · exact absurd a u24
      · exact absurd a u30
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
    have u32 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u31 a
    have u33 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : v29 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd u31 a
      · exact absurd a n0
      · exact absurd a u10
    have u35 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u36 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u34 a
      · exact a
    have u37 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u34 a
      · exact a
    have u38 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u7
      · exact absurd a u37
      · exact absurd a u29
      · exact absurd a n3
      · exact absurd a u8
    have u39 : ¬v1 := by
      rcases c2417 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u38 a
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u40 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u38 a
      · exact absurd u26 a
    have u41 : v7 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd u38 a
      · exact absurd a u40
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a u20
    rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u39
    · exact absurd a n1
    · exact absurd u38 a
    · exact absurd u41 a
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u35
    · exact absurd a u36
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2625 : v38 ∨ v2 ∨ v24 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v26 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v37 := by
      rcases c2622 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
    have u16 : ¬v10 := by
      rcases c2613 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u14
    have u17 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n0
    have u18 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u3
    have u19 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u3
    have u20 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u3
    have u21 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u4
    have u22 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u12
    have u27 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u11
    have u28 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a u12
    have u29 : v42 := by
      rcases c2624 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u30 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v29 := by
      rcases c2477 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u30
      · exact absurd a u14
    have u32 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u2
    have u33 : ¬v7 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd u32 a
      · exact a
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
    have u34 : ¬v6 := by
      rcases c2417 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd u25 a
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u35 : v35 := by
      rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u33
      · exact absurd a u22
      · exact absurd u32 a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u31
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u30
      · exact absurd a u34
      · exact absurd a u3
      · exact absurd a u7
    have u36 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u34
      · exact absurd a u7
      · exact a
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a u8
    rcases c124 with a|a
    · exact absurd u36 a
    · exact absurd u35 a
  have c2626 : v27 ∨ v2 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v38 := by
      rcases c2625 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u10 : v31 := by
      rcases c2560 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v26 := by
      rcases c2620 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u20 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v10 := by
      rcases c2613 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u18
    have u25 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u3
    have u26 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u3
    have u27 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u3
    have u28 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u2
    have u32 : v4 := by
      rcases c2152 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u5
    have u33 : ¬v3 := by
      rcases c2567 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u32 a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
    have u34 : ¬v7 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd u31 a
      · exact a
      · exact absurd a u24
      · exact absurd a u30
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u6
    have u35 : v6 := by
      rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u34
      · exact absurd a u28
      · exact absurd u31 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a u16
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u7
    have u36 : v5 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd a u25
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u33
      · exact absurd a u30
      · exact absurd a u6
    rcases c17 with a|a|a|a
    · exact absurd u31 a
    · exact absurd u36 a
    · exact absurd u35 a
    · exact absurd u32 a
  have c2627 : ¬v38 ∨ v2 ∨ ¬v4 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v31 := by
      rcases c2560 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : v27 := by
      rcases c2626 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u13 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u12 a
    have u21 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u12 a
      · exact a
    have u22 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
    have u23 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd a u22
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u16
    have u24 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u3
    have u26 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u3
    have u27 : ¬v10 := by
      rcases c2613 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u24
    have u28 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u23 a
    have u30 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u31 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact a
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u3
    have u32 : v1 := by
      rcases c2605 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u11
    have u33 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u31 a
    have u36 : ¬v7 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u32 a
      · exact a
      · exact absurd a u27
      · exact absurd a u35
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u6
    have u37 : v6 := by
      rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u36
      · exact absurd a u33
      · exact absurd u32 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u34
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u7
    rcases c17 with a|a|a|a
    · exact absurd u32 a
    · exact absurd u30 a
    · exact absurd u37 a
    · exact absurd n2 a
  have c2628 : ¬v40 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u8 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v1 := by
      rcases c2567 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u19 : v7 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u6
    have u20 : ¬v2 := by
      rcases c23 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
      · exact absurd n2 a
    have u21 : v9 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u20
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
    have u22 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
    have u23 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v28 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u2
    have u25 : v26 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u2
    rcases c101 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  have c2629 : v37 ∨ v2 ∨ ¬v4 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v27 := by
      rcases c2626 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u9 : ¬v41 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u10 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v10 := by
      rcases c2613 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
    have u15 : ¬v38 := by
      rcases c2627 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u16 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u4
    have u17 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u15
    have u18 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u3
    have u19 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u3
    have u20 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
    have u21 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v40 := by
      rcases c2628 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u12
    have u23 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u8 a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v7 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd u23 a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u16 a
      · exact absurd n2 a
    have u26 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u23 a
      · exact absurd u16 a
      · exact a
      · exact absurd n2 a
    have u27 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u24
    have u28 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : v29 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a u28
      · exact absurd a u2
    have u30 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u29 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd u29 a
    · exact absurd a u12
  have c2630 : ¬v4 ∨ v2 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v37 := by
      rcases c2629 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    have u9 : ¬v41 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : v27 := by
      rcases c2626 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v30 := by
      rcases c2231 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u10 a
      · exact a
    have u20 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u14 a
      · exact a
    have u22 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u14 a
      · exact a
    have u23 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u14 a
    have u24 : ¬v10 := by
      rcases c2566 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u13
    have u25 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a u22
      · exact a
    have u26 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u12
    have u27 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u26
    have u28 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u26
      · exact absurd a u27
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
    have u29 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u28 a
    have u33 : v1 := by
      rcases c2605 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u13
    have u34 : ¬v6 := by
      rcases c2417 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u35 : v7 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u34
      · exact absurd a u2
      · exact absurd a u7
    have u36 : ¬v5 := by
      rcases c896 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u35 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u37 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a u11
      · exact absurd a u30
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u20
    have u38 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u37 a
    have u39 : v3 := by
      rcases c215 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u36
      · exact absurd a u38
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u6
    rcases c2567 with a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd u39 a
    · exact absurd n0 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u12
  have c2631 : ¬v37 ∨ v2 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v30 := by
      rcases c2231 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v27 := by
      rcases c2626 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a u11
      · exact a
    have u16 : ¬v4 := by
      rcases c2630 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
    have u18 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u4
    rcases c1029 with a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2632 : v24 ∨ v2 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2631 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u9 : ¬v41 := by
      rcases c2591 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u10 : ¬v4 := by
      rcases c2629 with a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    have u11 : v27 := by
      rcases c2626 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u12 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v10 := by
      rcases c2613 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u8
    have u17 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v38 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u4
    have u19 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v31 := by
      rcases c2560 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u20 a
      · exact a
    have u27 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u5
    have u28 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u5
    have u29 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u3
    have u30 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u3
    have u31 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u27 a
      · exact a
    have u33 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd u11 a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u34 : v1 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u2
    have u35 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u10
      · exact a
      · exact absurd a u30
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u36 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u34 a
      · exact absurd u33 a
      · exact a
      · exact absurd u35 a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u28
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u36
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd u34 a
  have c2633 : ¬v38 ∨ v2 ∨ v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
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
    have u16 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u8
    have u21 : v31 := by
      rcases c2560 with a|a
      · exact a
      · exact absurd n0 a
    have u22 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u5
    have u25 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u3
    have u27 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u3
    have u28 : v10 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u24
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : v6 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u20
    have u30 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u6
    have u31 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u28 a
      · exact a
    have u32 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u28 a
    have u33 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u2
    have u34 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u33 a
      · exact absurd u30 a
      · exact a
      · exact absurd u29 a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u24
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u34
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd u33 a
  have c2634 : ¬v10 ∨ v2 ∨ v4 ∨ ¬v5 ∨ v30 ∨ v36 ∨ v37 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u14 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n7
    have u21 : v31 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v1 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
    have u25 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u24 a
      · exact absurd n3 a
      · exact a
      · exact absurd u12 a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd u24 a
  have c2635 : v36 ∨ v2 ∨ v4 ∨ v30 ∨ v37 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
    have u16 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
    have u17 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u18 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v6 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
    have u20 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u6
    have u21 : ¬v10 := by
      rcases c2634 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v9 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n1
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u27 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u13
    have u28 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : v39 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u29
    have u32 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u30
      · exact absurd a n0
      · exact absurd a u2
    have u33 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd u32 a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    have u35 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u32 a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
    have u36 : v15 := by
      rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd a u34
      · exact absurd a u35
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u21
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u37 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u36 a
      · exact a
    rcases c219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u36 a
    · exact absurd a u9
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a n4
    · exact absurd a u37
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u14
  have c2636 : v40 ∨ v2 ∨ v4 ∨ v30 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
    have u15 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n5
    have u16 : v36 := by
      rcases c2635 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u17 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u18
    have u20 : v29 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd u16 a
      · exact absurd a u18
      · exact absurd a n4
    have u21 : ¬v32 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u5
    rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2637 : v30 ∨ v2 ∨ v4 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v40 := by
      rcases c2636 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
    have u15 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u5
    rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u3
  have c2638 : v29 ∨ v22 ∨ v23 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v35 := by
      rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a n9
    have u6 : v24 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    have u7 : v36 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
    have u8 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u7 a
    rcases c2482 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u9
  have c2639 : v29 ∨ v22 ∨ v23 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    rcases c2638 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2640 : v29 ∨ v22 ∨ v23 ∨ v27 ∨ ¬v30 ∨ v37 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    rcases c2639 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2641 : ¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v37 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2640 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2642 : v41 ∨ v2 ∨ v4 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v30 := by
      rcases c2641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n0
    rcases c2637 with a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c2643 : v37 ∨ v2 ∨ v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : v41 := by
      rcases c2642 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u17 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u19
    have u23 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u20
    have u24 : v34 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u22
      · exact absurd a u23
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u7
    have u25 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u18
      · exact absurd a u5
    rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u3
  have c2644 : ¬v10 ∨ v2 ∨ ¬v5 ∨ v29 ∨ v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u11 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
    have u14 : ¬v4 := by
      rcases c2566 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n5
    have u15 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u14
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd u13 a
  have c2645 : v4 ∨ v2 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v38 := by
      rcases c2633 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u16 : v37 := by
      rcases c2643 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u17 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u17
    have u24 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u20
    have u25 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v32 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u5
    have u28 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u5
    have u29 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u6
    have u30 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a n0
      · exact a
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u31 : ¬v10 := by
      rcases c2644 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u29 a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u17
    have u32 : v11 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u31
      · exact a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u5
    have u33 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u2
    have u36 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u27
      · exact absurd a u33
      · exact absurd a u9
      · exact absurd a u11
    have u37 : ¬v7 := by
      rcases c20 with a|a|a|a
      · exact absurd u35 a
      · exact absurd u29 a
      · exact a
      · exact absurd u30 a
    have u38 : ¬v3 := by
      rcases c14 with a|a|a|a
      · exact absurd u35 a
      · exact absurd u29 a
      · exact a
      · exact absurd u30 a
    rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u35 a
    · exact absurd a u38
    · exact absurd a u37
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u33
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd a u34
    · exact absurd a u31
    · exact absurd a u36
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2646 : v42 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n11
    rcases c2573 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
  have c2647 : ¬v37 ∨ v2 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v4 := by
      rcases c2645 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
    have u16 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u17 : v29 := by
      rcases c2646 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
    rcases c2404 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2648 : v40 ∨ v2 ∨ v29 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v4 := by
      rcases c2645 with a|a
      · exact a
      · exact absurd a n1
    have u7 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v37 := by
      rcases c2647 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
    have u16 : ¬v10 := by
      rcases c2566 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u17 : v42 := by
      rcases c2646 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v30 := by
      rcases c2641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n4
    have u20 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u3
    have u21 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u3
    have u22 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u5
    have u23 : v6 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
    have u24 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact absurd u6 a
    have u25 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
    rcases c2205 with a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2649 : v29 ∨ v2 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v4 := by
      rcases c2645 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v37 := by
      rcases c2647 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v40 := by
      rcases c2648 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u16 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u3
    have u22 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u3
    have u23 : v9 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u3
    have u24 : v6 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u15 a
      · exact absurd a u6
    have u25 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
    have u29 : ¬v7 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd u28 a
      · exact a
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
    have u30 : ¬v5 := by
      rcases c17 with a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u24 a
      · exact absurd u7 a
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd u24 a
    · exact absurd a u30
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u29
    · exact absurd a u22
  have c2650 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
  have c2651 : v36 ∨ v2 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v37 := by
      rcases c2647 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
    rcases c2649 with a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c2652 : v41 ∨ v2 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v4 := by
      rcases c2645 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : v36 := by
      rcases c2651 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u16 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n0
    have u20 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n0
    have u21 : ¬v37 := by
      rcases c2647 with a|a
      · exact a
      · exact absurd a n1
    have u22 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u18
    have u23 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u15 a
    have u24 : ¬v32 := by
      rcases c1355 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v30 := by
      rcases c2641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n0
    have u26 : v29 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd u15 a
      · exact absurd a u18
      · exact absurd a u21
    have u27 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u3
    have u29 : v6 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u28
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u19
    have u30 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u3
    have u31 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u6
    have u32 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u29 a
      · exact absurd u7 a
    rcases c2550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u32
    · exact absurd a n1
    · exact absurd u7 a
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u26 a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u18
  have c2653 : v2 := by
    by_contra hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v41 := by
      rcases c2652 with a|a
      · exact a
      · exact absurd a hc
    have u9 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v4 := by
      rcases c2645 with a|a
      · exact a
      · exact absurd a hc
    have u15 : v24 := by
      rcases c2632 with a|a
      · exact a
      · exact absurd a hc
    have u16 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u13
    have u24 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u12
    have u25 : v34 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u24
      · exact absurd a u23
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u7
    have u26 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v9 := by
      rcases c1898 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a hc
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u3
    have u30 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u29 a
      · exact a
    have u34 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u29 a
      · exact a
    have u35 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u29 a
    have u36 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u6
    have u37 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u2
    have u38 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd u37 a
      · exact absurd u36 a
      · exact a
      · exact absurd u14 a
    have u39 : ¬v7 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u37 a
      · exact a
      · exact absurd a u34
      · exact absurd a u35
      · exact absurd a u32
      · exact absurd a u5
      · exact absurd a u6
    rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u39
    · exact absurd a u31
    · exact absurd u37 a
    · exact absurd a u24
    · exact absurd a hc
    · exact absurd a u33
    · exact absurd a u22
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u38
    · exact absurd a u3
    · exact absurd a u7
  have c2654 : v6 ∨ ¬v4 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v1 := by
      rcases c2547 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u9
    have u12 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
    have u13 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u11 a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
  have c2655 : ¬v4 ∨ v22 ∨ v27 ∨ v28 ∨ v36 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v6 := by
      rcases c2654 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact absurd n0 a
    have u13 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u2
    have u15 : ¬v13 := by
      rcases c2570 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n4
    have u16 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd u11 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u15
    have u19 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c21 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u8 a
    · exact absurd u19 a
    · exact absurd u18 a
  have c2656 : ¬v33 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    rcases c514 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n1
  have c2657 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v33 := by
      rcases c2656 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n13
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u6
  have c2658 : ¬v26 ∨ v4 ∨ v11 ∨ v12 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u4
  have c2659 : v1 ∨ v4 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
    have u10 : ¬v13 := by
      rcases c2570 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u11 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
    have u12 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
    have u13 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v26 := by
      rcases c2658 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v5 := by
      rcases c2657 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c24 with a|a|a|a
    · exact absurd u8 a
    · exact absurd u18 a
    · exact absurd u13 a
    · exact absurd u19 a
  have c2660 : v12 ∨ v4 ∨ v6 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2661 : v26 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n5 a
      · exact a
    have u12 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n5 a
      · exact a
    have u13 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n5 a
    have u14 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u9
    have u15 : ¬v4 := by
      rcases c2655 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u12
    have u17 : v1 := by
      rcases c2659 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
    have u18 : ¬v33 := by
      rcases c2656 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
    have u19 : v34 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u6
    have u20 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v6 := by
      rcases c2370 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : v12 := by
      rcases c2660 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u13
    have u25 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v24 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u29 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u3
    have u30 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u29 a
      · exact absurd u7 a
    have u31 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u17 a
      · exact absurd u29 a
      · exact a
      · exact absurd u7 a
    rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a u30
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
  have c2662 : v27 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u15 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u13
    have u17 : ¬v4 := by
      rcases c2655 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
    have u18 : v26 := by
      rcases c2661 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
    have u19 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u4
    have u24 : v1 := by
      rcases c2659 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
    have u25 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact a
      · exact absurd u8 a
    have u26 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u24 a
      · exact absurd u23 a
      · exact a
      · exact absurd u8 a
    have u27 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
      · exact absurd u8 a
    rcases c316 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a u27
    · exact absurd a n3
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u7
  have c2663 : v4 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u15 : v27 := by
      rcases c2662 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u16 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
    have u22 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u5
    have u23 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u24 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u22 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u4
    have u30 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u2
    have u31 : ¬v6 := by
      rcases c3 with a|a|a|a
      · exact absurd u30 a
      · exact absurd u29 a
      · exact a
      · exact absurd u8 a
    have u32 : ¬v5 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u31
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u33 : ¬v19 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u34 : v33 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u32
      · exact absurd a u14
      · exact absurd a u33
      · exact absurd a u19
      · exact absurd a u6
      · exact a
    have u35 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u34 a
    have u36 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u34 a
    rcases c297 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a u36
    · exact absurd a u6
    · exact absurd a u31
    · exact absurd a u35
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u27
  have c2664 : ¬v6 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u8 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
    have u10 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
    rcases c42 with a|a
    · exact absurd u8 a
    · exact absurd u10 a
  have c2665 : v23 ∨ v22 ∨ v28 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : v4 := by
      rcases c2663 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
    have u14 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v6 := by
      rcases c2664 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u8
    have u16 : v1 := by
      rcases c2547 with a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u15
      · exact absurd a u14
    have u17 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u7 a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u7 a
      · exact a
      · exact absurd u13 a
    have u19 : v27 := by
      rcases c2662 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
    have u20 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u10
    have u23 : ¬v12 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u4
    have u24 : v11 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u17
      · exact a
      · exact absurd a u6
    rcases c1097 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd u24 a
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u4
  have c2666 : ¬v4 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v6 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v1 := by
      rcases c2547 with a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u10 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u12 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
    have u13 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u12 a
    rcases c215 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u5
  have c2667 : v28 ∨ v22 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v23 := by
      rcases c2665 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
    have u15 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u12
    have u21 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
    have u22 : v34 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u21
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u7
    have u23 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v4 := by
      rcases c2666 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u11
    have u25 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u5
    have u26 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u6
    have u29 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd a u24
      · exact a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u30 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u29 a
      · exact absurd u8 a
    have u31 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u28 a
      · exact a
      · exact absurd u29 a
    rcases c1887 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd u8 a
    · exact absurd a u31
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2668 : v4 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
    have u11 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u5
    have u13 : ¬v10 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u4
    have u16 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u6
    have u17 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c2669 : v22 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : v28 := by
      rcases c2667 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u15 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
    have u21 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u13
    have u23 : ¬v30 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
    have u24 : v4 := by
      rcases c2668 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
    have u25 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u24 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v6 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u7 a
      · exact absurd u24 a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v5 := by
      rcases c1072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : v1 := by
      rcases c2547 with a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u26
      · exact absurd a u25
    have u29 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u5
    have u30 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u28 a
      · exact absurd u7 a
      · exact a
      · exact absurd u24 a
    have u31 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u29 a
    rcases c1790 with a|a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u3
  have c2670 : v27 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v36 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u13 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
    have u15 : ¬v6 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v42 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u7
    have u17 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v5 := by
      rcases c1072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u20 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u6
    have u21 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u9
    have u28 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u4
    have u29 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
    have u30 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a n3
    have u31 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u28 a
      · exact absurd n1 a
    have u32 : v29 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u4
    have u33 : v19 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u29
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n0
    have u34 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u7
      · exact a
      · exact absurd a u34
      · exact absurd a n0
      · exact absurd a u12
    rcases c108 with a|a
    · exact absurd u32 a
    · exact absurd u35 a
  have c2671 : ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v36 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u10 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u9
    have u13 : ¬v6 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : v42 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u7
    have u15 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v28 := by
      rcases c2670 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v29 := by
      rcases c2650 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u15
    have u18 : v13 := by
      rcases c2576 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u12
    have u19 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v1 := by
      rcases c2570 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n7
    rcases c1533 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u22 a
    · exact absurd u8 a
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a u6
  have c2672 : v27 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v31 ∨ v32 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u9 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
    have u11 : ¬v6 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v36 := by
      rcases c2671 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u13 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v1 := by
      rcases c2547 with a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u15 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u14 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v5 := by
      rcases c5 with a|a|a|a
      · exact absurd u14 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u17 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u5
    have u18 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u17 a
    rcases c215 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u5
  exact ⟨c2650, c2653, c2664, c2669, c2672⟩
