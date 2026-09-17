import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1950-1999 of the 2189-step refutation of ccase000: 132 core clauses and 77 earlier-derived ones give 9 more. -/
theorem CCase000_block039
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
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
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c64 : ¬v15 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
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
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
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
    (c152 : ¬v48 ∨ ¬v43)
    (c153 : ¬v49 ∨ ¬v43)
    (c157 : ¬v48 ∨ ¬v44)
    (c158 : ¬v49 ∨ ¬v44)
    (c161 : ¬v48 ∨ ¬v45)
    (c162 : ¬v49 ∨ ¬v45)
    (c164 : ¬v48 ∨ ¬v46)
    (c165 : ¬v49 ∨ ¬v46)
    (c166 : ¬v48 ∨ ¬v47)
    (c167 : ¬v49 ∨ ¬v47)
    (c168 : ¬v49 ∨ ¬v48)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c197 : v43 ∨ v29 ∨ v30 ∨ v35 ∨ v44 ∨ ¬v36 ∨ v42 ∨ v37)
    (c223 : ¬v22 ∨ v29 ∨ v30 ∨ v35 ∨ v15 ∨ v28 ∨ v23 ∨ v21)
    (c224 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v47 ∨ v40 ∨ v48)
    (c250 : v46 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v13 ∨ v11 ∨ v47 ∨ v12)
    (c283 : ¬v48 ∨ v6 ∨ v47 ∨ v41 ∨ v42 ∨ v7 ∨ v40 ∨ v49)
    (c351 : v43 ∨ ¬v36 ∨ v44 ∨ v48 ∨ v41 ∨ v35 ∨ v37 ∨ v42 ∨ v14 ∨ v9 ∨ v34 ∨ v8 ∨ v1 ∨ v29)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c381 : ¬v49 ∨ v7 ∨ v6 ∨ v42 ∨ v41 ∨ v1 ∨ v43 ∨ v48)
    (c384 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v1 ∨ v6 ∨ v43 ∨ v48)
    (c403 : ¬v49 ∨ v43 ∨ v35 ∨ v7 ∨ v22 ∨ v2 ∨ v28 ∨ v1 ∨ v37 ∨ v41 ∨ v42 ∨ v27 ∨ v44 ∨ v48)
    (c404 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v1 ∨ v41 ∨ v43 ∨ v48)
    (c503 : ¬v48 ∨ v6 ∨ v34 ∨ v41 ∨ v26 ∨ v27 ∨ v7 ∨ v1 ∨ v40 ∨ v28 ∨ v36 ∨ v43 ∨ v47 ∨ v49)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c532 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v43 ∨ v48)
    (c533 : v36 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v22 ∨ v23 ∨ v29 ∨ v38)
    (c549 : v43 ∨ v9 ∨ v44 ∨ v2 ∨ v7 ∨ v8 ∨ v14 ∨ ¬v1)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c950 : ¬v3 ∨ ¬v1 ∨ v2 ∨ ¬v5 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1236 : v27 ∨ ¬v4 ∨ ¬v7 ∨ v13 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1403 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1817 : v35 ∨ v1 ∨ v8 ∨ v12 ∨ v14 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v36 ∨ v43)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2130 : v31 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2133 : v46 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2152 : ¬v9 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2239 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38)
    (c2240 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2241 : v37 ∨ v2 ∨ ¬v28 ∨ v38 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2302 : ¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2304 : ¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2334 : v48 ∨ v49)
    (c2346 : ¬v6 ∨ ¬v1 ∨ ¬v5 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2352 : ¬v29 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c2354 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c2368 : ¬v42 ∨ v26 ∨ v27 ∨ v49)
    (c2371 : v41 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v40 ∨ v42 ∨ v49)
    (c2400 : ¬v7 ∨ ¬v2 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2404 : ¬v29 ∨ v22 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v45)
    (c2416 : v28 ∨ v2 ∨ v7 ∨ v22 ∨ v27 ∨ v29 ∨ v42 ∨ v49)
    (c2448 : v1 ∨ ¬v2 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c2451 : v31 ∨ v26 ∨ v27 ∨ v39 ∨ v49)
    (c2482 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c2487 : ¬v3 ∨ ¬v1 ∨ ¬v2 ∨ v41 ∨ v42 ∨ v49)
    (c2489 : ¬v35 ∨ v28 ∨ v36 ∨ v41 ∨ v42)
    (c2501 : ¬v3 ∨ v2 ∨ ¬v5 ∨ ¬v7 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2503 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v40 ∨ v41 ∨ v42 ∨ v49)
    (c2505 : ¬v10 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2510 : ¬v7 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v40 ∨ v41 ∨ v42 ∨ v49)
    (c2514 : ¬v30 ∨ v23 ∨ v24 ∨ v36 ∨ v37 ∨ v38)
    (c2519 : v28 ∨ v39 ∨ v49)
    : (v49) ∧ (v42 ∨ v1 ∨ v6 ∨ v7) ∧ (v13 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v42) ∧ (¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40) ∧ (v31 ∨ ¬v38) ∧ (¬v10 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v28 ∨ v29 ∨ v36) ∧ (¬v1 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v41 ∨ v42) ∧ (v31 ∨ v2 ∨ v9 ∨ ¬v23 ∨ v24) ∧ (¬v3 ∨ v2 ∨ ¬v4 ∨ ¬v7 ∨ v10 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v41 ∨ v42) := by
  have c2520 : ¬v10 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v28 := by
      rcases c2519 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u7 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
    have u19 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u17 a
      · exact a
    have u24 : v4 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u25 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u26 : v38 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u25
      · exact absurd a u7
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u20
    have u27 : v2 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u28 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a u25
    have u29 : v1 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u16
    have u30 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u24 a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u31 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u26 a
    have u32 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u26 a
    rcases c2371 with a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd u29 a
    · exact absurd u27 a
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u18
    · exact absurd a n2
  have c2521 : ¬v4 ∨ ¬v2 ∨ v26 ∨ v27 ∨ v40 ∨ v41 ∨ v49 := by
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
    have u7 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u8 : ¬v42 := by
      rcases c2368 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u9 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
    have u10 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact absurd n0 a
    have u12 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    rcases c22 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u13 a
    · exact absurd u9 a
    · exact absurd n0 a
  have c2522 : v4 ∨ v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v10 := by
      rcases c2520 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v28 := by
      rcases c2519 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u11
    have u21 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u11
    have u22 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u23 : v38 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u22
      · exact absurd a u5
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u18
    have u24 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u20 a
      · exact a
    have u27 : v1 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
    have u28 : v2 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u13
    have u29 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u23 a
    have u30 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u23 a
    have u31 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u23 a
    have u32 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u30
      · exact absurd a u10
    have u33 : ¬v6 := by
      rcases c2346 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u32 a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n2
    rcases c2371 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a n2
  have c2523 : v39 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n1
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
    have u6 : ¬v10 := by
      rcases c2520 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u7 : v4 := by
      rcases c2522 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u8 : v28 := by
      rcases c2519 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u9 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : v31 := by
      rcases c2451 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n1
    have u16 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v37 := by
      rcases c2231 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v38 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u21
      · exact absurd a u10
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u18
    have u23 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v2 := by
      rcases c2521 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n1
    have u28 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u4
    have u29 : v9 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u27
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u4
    have u30 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u2
    have u31 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : v1 := by
      rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u32
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u5
    have u34 : ¬v6 := by
      rcases c2346 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u30 a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
    have u35 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd u33 a
      · exact absurd u7 a
      · exact a
      · exact absurd u30 a
    rcases c283 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u34
    · exact absurd a u2
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u35
    · exact absurd a u24
    · exact absurd a n1
  have c2524 : ¬v2 ∨ ¬v4 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u3 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n5
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
    have u9 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n5
    have u16 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u15 a
      · exact absurd n1 a
    rcases c2302 with a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
  have c2525 : ¬v27 ∨ ¬v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u7 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
    have u8 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c161 with a|a
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
    have u13 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u7 a
      · exact a
    have u19 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u16
    have u22 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u21
    have u26 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u21
      · exact absurd a u25
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u24
    have u27 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v2 := by
      rcases c2524 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n2
    have u29 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n2
    have u30 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u3
    have u31 : ¬v1 := by
      rcases c2503 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u29 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n2
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u31
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u12
  have c2526 : v2 ∨ ¬v4 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n4
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
    have u8 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u16 : ¬v30 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v28 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u20 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n4
    have u21 : ¬v1 := by
      rcases c2503 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
    have u22 : ¬v27 := by
      rcases c2525 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
    have u23 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
    have u24 : ¬v3 := by
      rcases c2510 with a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
    have u25 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u5
    have u26 : v25 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd a u5
    have u27 : v9 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
    have u28 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u26 a
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u7
  have c2527 : ¬v2 ∨ ¬v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
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
    have u8 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v7 := by
      rcases c2400 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u14 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v6 := by
      rcases c283 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n2
    have u18 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u19 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u17 a
      · exact absurd n1 a
    have u20 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v28 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a n2
  have c2528 : ¬v4 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v2 := by
      rcases c2527 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
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
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v24 := by
      rcases c2526 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u20 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v9 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u1
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u24 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u7
    have u25 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u1
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n2
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
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u8
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u28 a
    · exact absurd u25 a
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u4
  have c2529 : ¬v24 ∨ v2 ∨ v49 := by
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
    have u8 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v4 := by
      rcases c2528 with a|a|a
      · exact a
      · exact absurd a u6
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
    have u15 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u20 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u22 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v30 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u18
    have u24 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u13
    have u26 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u13
    have u27 : v9 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u28 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u10
    have u29 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u27 a
    have u32 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u14
    have u33 : v6 := by
      rcases c250 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u28 a
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a u31
      · exact absurd a u10
      · exact absurd a u25
    rcases c2346 with a|a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd u32 a
    · exact absurd u28 a
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n2
  have c2530 : v10 ∨ v2 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v24 := by
      rcases c2529 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n3
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
    have u8 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v30 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v4 := by
      rcases c2528 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u1
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u6
    have u19 : v25 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u11
      · exact absurd a u6
    have u20 : v9 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
    have u21 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u19 a
    rcases c2254 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2531 : v2 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v24 := by
      rcases c2529 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
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
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u15 : ¬v30 := by
      rcases c2514 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u16 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v10 := by
      rcases c2530 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u18 : v27 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
    have u19 : v25 := by
      rcases c2240 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    rcases c98 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2532 : ¬v10 ∨ ¬v2 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u6 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n4
    have u7 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u13
    have u15 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n4
    have u17 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u9
    have u18 : ¬v6 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c2371 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u17 a
    · exact absurd n1 a
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n4
  have c2533 : ¬v27 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v2 := by
      rcases c2531 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
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
    have u15 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u8 a
    have u19 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u20 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u21 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u22 : ¬v4 := by
      rcases c2527 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
    have u23 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u18
    have u24 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u25 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u23
    have u28 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u23
      · exact absurd a u27
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u26
    have u29 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v10 := by
      rcases c2532 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n1
    have u31 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u30
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u12
    have u32 : ¬v1 := by
      rcases c2487 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n1
    have u33 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u14
    have u34 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
    have u35 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
    have u36 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u33
      · exact a
      · exact absurd a u16
      · exact absurd a u29
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u25
    have u37 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u36 a
      · exact absurd u31 a
      · exact a
    rcases c250 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u37
    · exact absurd u36 a
    · exact absurd a u22
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u10
    · exact absurd a u33
  have c2534 : v7 ∨ ¬v2 ∨ ¬v3 ∨ v25 ∨ v26 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n6
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n6
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n6
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
    have u7 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v1 := by
      rcases c2487 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n6
    have u14 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
    have u15 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u11
    have u16 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v6 := by
      rcases c503 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n6
    have u18 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd u17 a
    have u19 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u4
    have u20 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u19 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n6
  have c2535 : v1 ∨ ¬v2 ∨ v9 ∨ v23 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n5
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
    have u9 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u15 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
    have u16 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : v22 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n5
    have u21 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v7 := by
      rcases c2534 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v6 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u25 : ¬v21 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u26 : v15 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u25
    have u27 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u23 a
      · exact absurd n1 a
    have u29 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u16
    have u30 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u29 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd u23 a
    · exact absurd a u32
    · exact absurd a n0
    · exact absurd a n5
  have c2536 : v28 ∨ ¬v2 ∨ v9 ∨ v23 ∨ v24 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n5
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
    have u7 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
    have u15 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v1 := by
      rcases c2535 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u18 : ¬v3 := by
      rcases c2487 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n5
    have u19 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u17 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n5
    have u20 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u19 a
      · exact absurd n1 a
    have u21 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n5
    have u23 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u4
    have u24 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
    have u25 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u24 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n5
  have c2537 : ¬v1 ∨ ¬v2 ∨ v24 ∨ v25 ∨ v26 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n5
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n5
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n5
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
    have u8 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v3 := by
      rcases c2487 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n5
    have u15 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
    have u16 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u15 a
      · exact absurd n1 a
    have u18 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u4
    have u19 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2538 : v24 ∨ ¬v2 ∨ v9 ∨ v23 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n4
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n4
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
    have u9 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v4 := by
      rcases c2527 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
    have u15 : v28 := by
      rcases c2536 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u16 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v1 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n4
    have u20 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u21 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u22 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u23 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
    have u24 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u4
    have u25 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u24 a
      · exact absurd u20 a
      · exact a
    rcases c250 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd u24 a
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u4
    · exact absurd a u23
  have c2539 : v23 ∨ ¬v2 ∨ v9 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n3
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n3
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
    have u7 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v24 := by
      rcases c2538 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
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
    have u19 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v1 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n3
    have u21 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
    have u22 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u20 a
      · exact absurd n1 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u21 a
      · exact absurd n1 a
    have u24 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u4
    have u25 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u24 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a n3
  have c2540 : v9 ∨ ¬v2 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n2
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
    have u9 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u12 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v23 := by
      rcases c2539 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    have u15 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v1 := by
      rcases c2537 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
    have u21 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
    have u22 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u23 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u4
    have u24 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u22 a
      · exact absurd u23 a
    have u26 : v8 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
    have u27 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u26 a
    rcases c250 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u4
    · exact absurd a u21
  have c2541 : v28 ∨ v1 ∨ ¬v2 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v9 := by
      rcases c2540 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n3
    have u3 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n3
    have u4 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n3
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u17 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u3 a
    have u18 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u19 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u20 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u21 : ¬v35 := by
      rcases c2489 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
    have u22 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n3
    have u26 : v6 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u25 a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n3
    have u27 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u25 a
      · exact absurd u26 a
    have u28 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u25 a
      · exact absurd u26 a
    have u29 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u10
    have u30 : v24 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u27
      · exact a
      · exact absurd a u29
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
    have u31 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u30 a
    rcases c1516 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a n0
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u13
  have c2542 : v1 ∨ ¬v2 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v9 := by
      rcases c2540 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u2 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v28 := by
      rcases c2541 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    have u17 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1817 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
  have c2543 : ¬v2 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v1 := by
      rcases c2542 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u2 : v9 := by
      rcases c2540 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u3 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n1
    have u5 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n1
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u18 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u19 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u4 a
    have u20 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u21 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u22 : ¬v3 := by
      rcases c2487 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n1
    have u23 : v6 := by
      rcases c2371 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n1
    have u24 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v5 := by
      rcases c2346 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n1
    have u28 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
      · exact absurd u23 a
    have u29 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u11
    have u30 : v28 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a n1
    have u31 : v24 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u22
      · exact a
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u13
    rcases c96 with a|a
    · exact absurd u30 a
    · exact absurd u31 a
  have c2544 : v10 ∨ v2 ∨ v4 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c2133 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2545 : v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v2 := by
      rcases c2543 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a n1
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
    have u10 : ¬v24 := by
      rcases c2529 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
    have u11 : v23 := by
      rcases c2531 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
    have u12 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u11 a
    have u19 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u11 a
    have u20 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u21 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u11 a
      · exact a
    have u22 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u17 a
      · exact a
    have u25 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u2
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a n1
    have u26 : v10 := by
      rcases c2544 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u27 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u9
    have u30 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u5
    have u32 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd u29 a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact a
    rcases c250 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u32
    · exact absurd u31 a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u5
    · exact absurd a u28
  have c2546 : v49 := by
    by_contra hc
    have u1 : v4 := by
      rcases c2545 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v2 := by
      rcases c2543 with a|a
      · exact a
      · exact absurd a hc
    have u3 : ¬v27 := by
      rcases c2533 with a|a
      · exact a
      · exact absurd a hc
    have u4 : v39 := by
      rcases c2523 with a|a
      · exact a
      · exact absurd a hc
    have u5 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v48 := by
      rcases c2334 with a|a
      · exact a
      · exact absurd a hc
    have u11 : ¬v24 := by
      rcases c2529 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a hc
    have u12 : v23 := by
      rcases c2531 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a hc
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
    have u16 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v47 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    have u18 : ¬v46 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u19 : ¬v45 := by
      rcases c161 with a|a
      · exact absurd u10 a
      · exact a
    have u20 : v32 := by
      rcases c1403 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u21 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v44 := by
      rcases c157 with a|a
      · exact absurd u10 a
      · exact a
    have u25 : ¬v43 := by
      rcases c152 with a|a
      · exact absurd u10 a
      · exact a
    have u26 : v7 := by
      rcases c2416 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a hc
    have u27 : ¬v1 := by
      rcases c2503 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u26 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a hc
    have u28 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u25
    have u29 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u25
    have u30 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u17
    have u31 : ¬v3 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u30 a
      · exact absurd u26 a
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u18
    have u32 : v9 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u31
      · exact a
      · exact absurd a u29
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u18
    have u33 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd a u31
      · exact absurd u32 a
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u23
    · exact absurd a u34
    · exact absurd a u33
    · exact absurd a u13
    · exact absurd a u27
  have c2547 : v42 ∨ v1 ∨ v6 ∨ v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v36 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
    have u5 : v41 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    rcases c130 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c2548 : ¬v29 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v24 ∨ v28 ∨ v31 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2352 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2549 : v9 ∨ v1 ∨ v5 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 ∨ ¬v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n8 a
    have u8 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u4
    have u14 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u3
    have u15 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v29 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a u2
    rcases c2548 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n6
  have c2550 : v13 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u8 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n8 a
    have u9 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v41 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a u7
    have u12 : ¬v7 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c403 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u7
  have c2551 : v13 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n8 a
    have u7 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n8 a
    have u8 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n8 a
    have u9 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n8 a
    have u10 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n8 a
      · exact a
    have u11 : ¬v42 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact a
    have u12 : ¬v29 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u11
    have u13 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u4
    have u14 : v36 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u2
    have u15 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u11
    have u17 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u11
    rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u14 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u17
    · exact absurd a n12
    · exact absurd a u11
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u12
  have c2552 : v8 ∨ v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v42 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u7 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
    have u8 : v33 := by
      rcases c2551 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v36 := by
      rcases c197 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n11
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n1
  have c2553 : v1 ∨ v2 ∨ ¬v4 ∨ v5 ∨ v9 ∨ ¬v12 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 := by
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
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
    have u11 : ¬v42 := by
      rcases c2549 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
    have u12 : v37 := by
      rcases c2552 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n0
  have c2554 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
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
    have u7 : ¬v39 := by
      rcases c1403 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c531 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
  have c2555 : ¬v4 ∨ v1 ∨ v2 ∨ v5 ∨ v9 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u7 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u2
    rcases c2553 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u7 a
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2556 : ¬v10 ∨ v1 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v37 ∨ v40 := by
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
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v36 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u2
    have u9 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
    have u12 : ¬v35 := by
      rcases c2482 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u10
    rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n6
  have c2557 : v9 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 ∨ v40 := by
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
    have u8 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : v3 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u15 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v5 := by
      rcases c2555 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v7 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd u16 a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v42 := by
      rcases c2547 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
    have u20 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v34 := by
      rcases c2354 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u20
    have u23 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u24 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v29 := by
      rcases c2548 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u10
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a n1
  have c2558 : v40 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
    have u11 : v10 := by
      rcases c2557 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u12 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u9
    have u17 : v29 := by
      rcases c2556 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
    have u18 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v4 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : v42 := by
      rcases c2550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u19 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact a
    have u21 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u20 a
      · exact a
    rcases c2548 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u21
    · exact absurd a n7
    · exact absurd a n8
  have c2559 : v9 ∨ v1 ∨ v2 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 := by
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
    have u8 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u14 : v37 := by
      rcases c2558 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u15 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : v7 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u7
    have u20 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
    have u21 : ¬v29 := by
      rcases c2404 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u2
    have u23 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u6
    have u24 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u2
    have u25 : ¬v3 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u23 a
      · exact absurd u19 a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2560 : v31 ∨ ¬v38 := by
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
    have u5 : v37 := by
      rcases c2221 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c132 with a|a
    · exact absurd n1 a
    · exact absurd u5 a
  have c2561 : ¬v3 ∨ ¬v1 ∨ v2 ∨ ¬v4 ∨ v9 ∨ v25 ∨ v26 ∨ v27 ∨ v40 := by
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
    have u8 : ¬v5 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u6
    have u12 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u11 a
    rcases c549 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd n1 a
  have c2562 : ¬v4 ∨ ¬v1 ∨ v2 ∨ v9 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v40 := by
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
    have u7 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a n8
      · exact a
    have u8 : ¬v3 := by
      rcases c2561 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u9 : v10 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v5 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
    have u15 : v7 := by
      rcases c549 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd n1 a
    rcases c18 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u15 a
    · exact absurd u14 a
  have c2563 : ¬v5 ∨ ¬v1 ∨ v2 ∨ v4 ∨ v9 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 := by
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
    have u8 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a n9
      · exact a
    have u9 : ¬v3 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u10 : v10 := by
      rcases c2130 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v7 := by
      rcases c549 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd n1 a
    rcases c20 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u15 a
    · exact absurd u14 a
  have c2564 : v40 ∨ v2 ∨ v9 ∨ ¬v23 ∨ v24 ∨ v31 := by
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
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a n5
      · exact a
    have u10 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u11 : v1 := by
      rcases c2559 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n0
    have u12 : ¬v4 := by
      rcases c2562 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
    have u13 : ¬v5 := by
      rcases c2563 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u14 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u5
    have u15 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u3
    rcases c1029 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2565 : v4 ∨ v2 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v37 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u7 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a n4
      · exact a
    have u10 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n6
    have u11 : ¬v9 := by
      rcases c2152 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u4
    have u12 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u4
    have u13 : v40 := by
      rcases c2564 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v3 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u3
    rcases c954 with a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
  have c2566 : ¬v10 ∨ v2 ∨ ¬v4 ∨ v22 ∨ v28 ∨ v29 ∨ v36 := by
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
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
    have u13 : v7 := by
      rcases c549 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd u12 a
    have u14 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u12 a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u12 a
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u6
  have c2567 : ¬v1 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : v7 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
    rcases c13 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd u5 a
    · exact absurd n1 a
  have c2568 : v31 ∨ v2 ∨ v9 ∨ ¬v23 ∨ v24 := by
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
    have u8 : ¬v38 := by
      rcases c2560 with a|a
      · exact absurd a n0
      · exact a
    have u9 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : v40 := by
      rcases c2564 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
    have u14 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u15 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u14 a
    have u22 : v4 := by
      rcases c2565 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v10 := by
      rcases c2566 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u22 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u19
    have u24 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u3
    have u25 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u4
    have u26 : ¬v1 := by
      rcases c2567 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u15
    have u27 : v7 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u7
    have u28 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd u25 a
      · exact absurd u22 a
      · exact absurd u27 a
      · exact a
    have u29 : v13 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u28
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd a u7
    have u30 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a n2
      · exact absurd a u31
      · exact absurd a u9
      · exact absurd a u10
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u32
    · exact absurd a u30
    · exact absurd a u9
    · exact absurd a u26
  have c2569 : ¬v3 ∨ v2 ∨ ¬v4 ∨ ¬v7 ∨ v10 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u7 : ¬v5 := by
      rcases c2501 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u10 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u5
    have u11 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n10
    have u14 : ¬v28 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
    rcases c696 with a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u14
  exact ⟨c2546, c2547, c2550, c2554, c2560, c2566, c2567, c2568, c2569⟩
