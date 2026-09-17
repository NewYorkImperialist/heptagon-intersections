import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1700-1749 of the 2189-step refutation of ccase000: 113 core clauses and 85 earlier-derived ones give 11 more. -/
theorem CCase000_block034
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c40 : ¬v9 ∨ ¬v8)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
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
    (c63 : ¬v15 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v18)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
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
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c147 : v36 ∨ v42 ∨ v38 ∨ v41 ∨ v40 ∨ v37 ∨ v39)
    (c151 : ¬v47 ∨ ¬v43)
    (c156 : ¬v44 ∨ ¬v47)
    (c160 : ¬v47 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c167 : ¬v49 ∨ ¬v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c193 : ¬v34 ∨ v41 ∨ v6 ∨ v27 ∨ v7 ∨ v33 ∨ v26 ∨ v35 ∨ v25 ∨ v32 ∨ v39 ∨ v5 ∨ v42 ∨ v48)
    (c200 : v3 ∨ v6 ∨ v33 ∨ v5 ∨ v11 ∨ ¬v4 ∨ v45 ∨ v13 ∨ v32 ∨ v31 ∨ v39 ∨ v12 ∨ v46 ∨ v48)
    (c212 : v4 ∨ v7 ∨ v40 ∨ ¬v13 ∨ v18 ∨ v12 ∨ v14 ∨ v20 ∨ v6 ∨ v11 ∨ v42 ∨ v41 ∨ v19 ∨ v48)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c244 : ¬v47 ∨ v6 ∨ v41 ∨ v46 ∨ v5 ∨ v4 ∨ v40 ∨ v48)
    (c276 : v15 ∨ v7 ∨ v20 ∨ v6 ∨ v21 ∨ v8 ∨ ¬v14 ∨ v13)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c354 : v43 ∨ v6 ∨ v13 ∨ v8 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v49)
    (c371 : ¬v47 ∨ v5 ∨ v27 ∨ v7 ∨ v26 ∨ v39 ∨ v6 ∨ v42 ∨ v25 ∨ v40 ∨ v33 ∨ v46 ∨ v48 ∨ v49)
    (c388 : v43 ∨ ¬v21 ∨ v7 ∨ v13 ∨ v28 ∨ v22 ∨ v14 ∨ v23 ∨ v16 ∨ v9 ∨ v20 ∨ v15 ∨ v48 ∨ v49)
    (c407 : ¬v47 ∨ v46 ∨ v40 ∨ v41 ∨ v5 ∨ v39 ∨ v6 ∨ v48)
    (c414 : v11 ∨ ¬v33 ∨ v31 ∨ v26 ∨ v38 ∨ v40 ∨ v24 ∨ v27 ∨ v12 ∨ v13 ∨ v19 ∨ v39 ∨ v34 ∨ v32)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c435 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v37 ∨ v32 ∨ v24 ∨ v23)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c491 : ¬v39 ∨ v32 ∨ v45 ∨ v37 ∨ v46 ∨ v17 ∨ v25 ∨ v33 ∨ v44 ∨ v38 ∨ v40 ∨ v19 ∨ v30 ∨ v18)
    (c504 : v19 ∨ v32 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v17 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v24 ∨ v30 ∨ v31 ∨ v16)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c820 : v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c836 : ¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c895 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1263 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v25 ∨ v26)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1519 : v7 ∨ v1 ∨ v6 ∨ v9 ∨ v13 ∨ v22 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v41 ∨ v43 ∨ v48)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1656 : v38 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v30 ∨ v36 ∨ v37)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1708 : ¬v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1799 : v41 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1806 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1881 : v30 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1888 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1922 : v24 ∨ v1 ∨ v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2017 : ¬v7 ∨ ¬v2 ∨ ¬v5 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c2056 : v47 ∨ v48 ∨ v49)
    (c2058 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2060 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2061 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v42 ∨ v48 ∨ v49)
    (c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42)
    (c2063 : ¬v27 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2064 : v28 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v27 ∨ v29 ∨ v36 ∨ v42 ∨ v49)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2127 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c2134 : ¬v31 ∨ v24 ∨ v25 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2154 : v4 ∨ ¬v6 ∨ v48 ∨ v49)
    (c2167 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49)
    (c2191 : ¬v6 ∨ v48 ∨ v49)
    (c2192 : v22 ∨ v1 ∨ ¬v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v49)
    (c2193 : v1 ∨ ¬v9 ∨ v24 ∨ v28 ∨ v48 ∨ v49)
    (c2200 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2231 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2238 : v28 ∨ v2 ∨ v48 ∨ v49)
    (c2239 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v38)
    (c2243 : v2 ∨ v48 ∨ v49)
    (c2244 : ¬v28 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c2246 : ¬v38 ∨ v48 ∨ v49)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2255 : ¬v7 ∨ ¬v1 ∨ v39 ∨ v40 ∨ v48 ∨ v49)
    (c2257 : v14 ∨ v7 ∨ v13 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c2259 : v34 ∨ v13 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v48 ∨ v49)
    (c2261 : v27 ∨ v13 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49)
    (c2262 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2263 : ¬v2 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2264 : v1 ∨ v5 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v39 ∨ v48 ∨ v49)
    (c2265 : v42 ∨ ¬v1 ∨ v5 ∨ v28 ∨ v34 ∨ ¬v35 ∨ v36 ∨ v39 ∨ v48 ∨ v49)
    : (¬v31 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v22 ∨ v1 ∨ v34 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v1 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v48 ∨ v49) ∧ (¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (v41 ∨ v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42) ∧ (¬v41 ∨ v24 ∨ v48 ∨ v49) ∧ (v4 ∨ v7 ∨ v29 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v1 ∨ v7 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v32 ∨ v39 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v7 ∨ ¬v1 ∨ v24 ∨ v32 ∨ v39 ∨ v48 ∨ v49) := by
  have c2266 : v48 ∨ v13 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v34 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u10 : ¬v30 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a n7
    have u11 : v35 := by
      rcases c2259 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u12 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u16 : v27 := by
      rcases c2261 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u11 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n8
    have u17 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v5 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u21 : v1 := by
      rcases c2264 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u11 a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n8
    have u22 : v42 := by
      rcases c2265 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n8
    have u23 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u22 a
      · exact a
    rcases c407 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n0
  have c2267 : ¬v42 ∨ ¬v1 ∨ v10 ∨ v17 ∨ v24 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n5
    have u12 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
    rcases c2 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd u7 a
  have c2268 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v28 ∨ v29 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v2 := by
      rcases c2238 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v22 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n12
    have u12 : v27 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n12
    rcases c2063 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2269 : ¬v31 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    rcases c435 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
  have c2270 : v39 ∨ ¬v1 ∨ ¬v3 ∨ ¬v13 ∨ v17 ∨ v24 ∨ v28 ∨ v29 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u7 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u12 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n10
    have u16 : ¬v42 := by
      rcases c2267 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v22 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n6
    have u19 : ¬v35 := by
      rcases c2265 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u19
      · exact a
      · exact absurd a n10
    have u21 : v27 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a n6
    have u22 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v33 := by
      rcases c616 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a u19
    have u24 : v32 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u12
    rcases c119 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2271 : v34 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v13 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
    have u16 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
    have u17 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u18 : ¬v30 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a n5
    have u19 : ¬v31 := by
      rcases c2269 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
    have u20 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u12
    have u21 : ¬v1 := by
      rcases c2270 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u20 a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v7 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a n8
    have u23 : v22 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u14
    have u24 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v42 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a n6
    have u28 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a u11
    have u31 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u11
      · exact absurd a u29
      · exact absurd a u28
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
    rcases c21 with a|a|a|a
    · exact absurd u30 a
    · exact absurd u4 a
    · exact absurd u20 a
    · exact absurd u31 a
  have c2272 : v1 ∨ v8 ∨ v9 ∨ v14 ∨ v28 ∨ v29 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v22 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u6 : ¬v7 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n8
    rcases c2061 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2273 : v48 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v34 ∨ v37 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u2 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u10 : v39 := by
      rcases c2271 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    have u11 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
    have u15 : v13 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u15 a
    have u22 : v1 := by
      rcases c2272 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
    have u23 : ¬v5 := by
      rcases c2268 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
    have u24 : v4 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u23
      · exact a
      · exact absurd a u12
      · exact absurd a n0
    have u25 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u3 a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v7 := by
      rcases c7 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u24 a
      · exact a
      · exact absurd u3 a
    have u27 : v25 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a u6
    have u28 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a n7
    have u29 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u28 a
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a n3
  have c2274 : v5 ∨ v3 ∨ v6 ∨ v9 ∨ v12 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n13
    have u7 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u9
  have c2275 : ¬v34 ∨ ¬v1 ∨ ¬v3 ∨ v5 ∨ v12 ∨ v28 ∨ v29 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n9
    have u14 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u10
    have u15 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a n9
    have u19 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u18 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd u18 a
    · exact absurd a u19
  have c2276 : v24 ∨ ¬v1 ∨ v5 ∨ v23 ∨ v28 ∨ v29 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v34 := by
      rcases c2273 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n8
    have u17 : ¬v3 := by
      rcases c2275 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v9 := by
      rcases c2274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u2
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u19 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u12
    rcases c46 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2277 : v24 ∨ ¬v1 ∨ v23 ∨ v28 ∨ v29 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v34 := by
      rcases c2273 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v5 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v3 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
    have u15 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u9
    rcases c1130 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n7
  have c2278 : ¬v5 ∨ v1 ∨ v24 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n11
    have u9 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u13 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u14 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a n11
    have u15 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u10 a
      · exact absurd n0 a
    have u16 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
    have u17 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
    have u18 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a n1
    have u22 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n11
    rcases c45 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c2279 : ¬v21 ∨ v7 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c388 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c2280 : v28 ∨ v1 ∨ v7 ∨ v14 ∨ v23 ∨ v24 ∨ v29 ∨ v35 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u6 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n9
    have u8 : ¬v22 := by
      rcases c1708 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v8 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u11 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u10 a
      · exact a
    rcases c2279 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
  have c2281 : v28 ∨ v1 ∨ v5 ∨ v7 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v33 ∨ v35 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v14 := by
      rcases c2280 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v22 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u12 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v40 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u12
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
    rcases c1763 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd u15 a
    · exact absurd a n11
  have c2282 : ¬v7 ∨ v1 ∨ v24 ∨ v28 ∨ v29 ∨ v32 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u3 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v22 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
    have u13 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
    have u16 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u15 a
      · exact a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd n0 a
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a n8
  have c2283 : v12 ∨ v1 ∨ v5 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c2282 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    rcases c2281 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
  have c2284 : v29 ∨ v23 ∨ v24 ∨ v28 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v1 := by
      rcases c2277 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v34 := by
      rcases c2273 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u9 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u14 : ¬v5 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v12 := by
      rcases c2283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n6
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a n6
  have c2286 : ¬v22 ∨ v1 ∨ v34 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
  have c2287 : v1 ∨ v23 ∨ v24 ∨ v28 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v29 := by
      rcases c2284 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u15 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u4 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v22 := by
      rcases c2286 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v36 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u16
    have u21 : ¬v40 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
    have u23 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u17 a
      · exact absurd u22 a
    have u25 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n7
    have u26 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n7
    have u27 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n7
    have u28 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u12
    have u29 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u12
    have u30 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u29 a
    have u33 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u31
      · exact absurd a n7
    have u34 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u30
      · exact absurd a u32
      · exact absurd a u18
    rcases c60 with a|a
    · exact absurd u33 a
    · exact absurd u34 a
  have c2288 : v10 ∨ ¬v1 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v23 ∨ v24 ∨ v28 ∨ ¬v29 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v49 := by
      rcases c167 with a|a
      · exact a
      · exact absurd n13 a
    have u2 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n13 a
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd n13 a
      · exact a
    have u4 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n8 a
    have u7 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n8 a
    have u8 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u3
    have u10 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u2
    have u11 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
      · exact absurd n2 a
    have u12 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u14 : v40 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd n13 a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact a
      · exact absurd a n14
    have u15 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a u1
    have u16 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u2
    have u18 : v22 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd n8 a
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n12
    rcases c84 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2289 : v28 ∨ v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v29 := by
      rcases c2284 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u19 : v1 := by
      rcases c2287 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n5
    have u21 : v10 := by
      rcases c2288 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u4 a
      · exact absurd a n4
    have u22 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v7 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n5
    have u24 : ¬v3 := by
      rcases c4 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u23 a
      · exact absurd u3 a
    have u25 : ¬v5 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    rcases c2274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n4
  have c2290 : v3 ∨ v5 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v9 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    rcases c2274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c2291 : v34 ∨ ¬v1 ∨ v23 ∨ v24 ∨ v33 ∨ v37 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u3
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
    have u15 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n6
    have u16 : ¬v5 := by
      rcases c2262 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u11
    have u17 : v3 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u18 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u17 a
      · exact a
      · exact absurd u4 a
    have u20 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u11
    have u21 : v40 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u8
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd a u25
  have c2292 : ¬v1 ∨ v23 ∨ v24 ∨ v34 ∨ v37 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u3
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n5
    have u14 : v33 := by
      rcases c2291 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v40 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
    have u17 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u18
    have u20 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u11
    have u23 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u10
    rcases c1 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c2293 : v42 ∨ ¬v1 ∨ v23 ∨ v24 ∨ v37 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u3
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
    have u15 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n5
    have u16 : ¬v5 := by
      rcases c2262 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
    have u17 : v34 := by
      rcases c2292 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v3 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u21 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
      · exact absurd u4 a
    have u22 : v40 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v41 := by
      rcases c193 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n6
    rcases c144 with a|a
    · exact absurd u22 a
    · exact absurd u23 a
  have c2294 : ¬v10 ∨ v6 ∨ ¬v28 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v34 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u5 a
      · exact a
    rcases c836 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2295 : v42 ∨ ¬v1 ∨ v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v39 := by
      rcases c2293 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v10 := by
      rcases c2294 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
    have u13 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u11
    have u14 : ¬v5 := by
      rcases c2 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
      · exact absurd u5 a
    have u15 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd u13 a
      · exact a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u8
    · exact absurd a n5
  have c2296 : ¬v1 ∨ v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
    have u12 : ¬v31 := by
      rcases c1888 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u3
    have u13 : v42 := by
      rcases c2295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n4
    have u18 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u16
    rcases c2262 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u17 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u9
  have c2297 : ¬v42 ∨ v1 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u4 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u8 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u6
    have u12 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n7
    have u17 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
    have u20 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u9 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
    have u21 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u20 a
      · exact absurd u16 a
    have u22 : ¬v13 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
    have u23 : v34 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n7
    have u24 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v28 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a u7
    have u26 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u12
    have u28 : ¬v11 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u27
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n8
    rcases c2127 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u12
  have c2298 : v41 ∨ v4 ∨ v23 ∨ v24 ∨ v37 ∨ v39 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c2154 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v1 := by
      rcases c2296 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u2 a
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
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
    have u12 : ¬v42 := by
      rcases c2297 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v31 := by
      rcases c1888 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u4
    have u14 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n5
    have u15 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u16 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u10
    have u17 : ¬v13 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
    have u18 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u12
    have u19 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    rcases c879 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd u2 a
    · exact absurd a u18
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n7
  have c2299 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2300 : v32 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v37 ∨ v38 ∨ ¬v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v33 := by
      rcases c491 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n2
    rcases c2299 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c2301 : v41 ∨ ¬v5 ∨ v23 ∨ v24 ∨ v37 ∨ v40 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c2296 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
    have u17 : ¬v42 := by
      rcases c2297 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v10 := by
      rcases c2294 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n6
    have u19 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u12
    have u20 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u19 a
      · exact absurd n1 a
    have u21 : v39 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v29 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u17
    have u24 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u25 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u14
    have u26 : ¬v11 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u18
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n7
    have u27 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u10
    have u28 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u29 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
    have u30 : v32 := by
      rcases c2300 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd u21 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u34 : v13 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u24
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a u32
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n6
    have u35 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u34 a
    rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd u34 a
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u35
    · exact absurd a u33
    · exact absurd a u2
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a n6
  have c2302 : ¬v11 ∨ v1 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1922 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2303 : ¬v5 ∨ v23 ∨ v24 ∨ v37 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c2296 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
    have u15 : ¬v42 := by
      rcases c2297 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u17 : v40 := by
      rcases c2301 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v29 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u15
    have u21 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u19
    have u22 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u23 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u24 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd u5 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u25 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u10
    rcases c21 with a|a|a|a
    · exact absurd u25 a
    · exact absurd u5 a
    · exact absurd u24 a
    · exact absurd n0 a
  have c2304 : ¬v13 ∨ v1 ∨ v22 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2305 : ¬v34 ∨ v5 ∨ v6 ∨ v7 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    rcases c193 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n12
  have c2306 : v39 ∨ v23 ∨ v24 ∨ v37 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c2303 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c2296 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v40 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n5
    have u13 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
    have u20 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u21 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n0
    have u22 : ¬v29 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u18
    have u23 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u24 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u25 : ¬v9 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u26 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u8
    have u27 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd u5 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u28 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd u27 a
      · exact absurd u5 a
      · exact a
      · exact absurd u26 a
    have u29 : v34 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u22
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
    have u30 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u29 a
      · exact a
    rcases c2305 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u28
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u30
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u18
    · exact absurd a n5
  have c2307 : v41 ∨ v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v39 := by
      rcases c2306 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v1 := by
      rcases c2296 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v5 := by
      rcases c2303 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u12 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
    have u17 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u19 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u8 a
    have u20 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u8 a
      · exact a
    have u21 : ¬v10 := by
      rcases c2294 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n4
    have u22 : v4 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a n4
    have u23 : ¬v29 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u15
    have u24 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u25 : ¬v11 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u26 : v3 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u10
    have u27 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd u26 a
      · exact absurd u3 a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u12
    have u29 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u30 : ¬v9 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u31 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u20
    have u32 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u18
      · exact absurd a u20
    have u33 : v34 := by
      rcases c1519 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u23
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
    have u34 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
    have u35 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u33 a
    rcases c2300 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u35
    · exact absurd a u34
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c2308 : ¬v33 ∨ v11 ∨ v12 ∨ v13 ∨ v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n9
  have c2309 : v23 ∨ v24 ∨ v37 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v41 := by
      rcases c2307 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v1 := by
      rcases c2293 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u15 : v28 := by
      rcases c2289 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v30 := by
      rcases c2239 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
    have u21 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u22 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u7
    have u23 : ¬v29 := by
      rcases c1881 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u8
    have u24 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u13
    have u25 : ¬v11 := by
      rcases c2302 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u26 : ¬v9 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u27 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n4
    have u28 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u10
    have u29 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd u4 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u30 : ¬v19 := by
      rcases c1263 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a u19
    have u31 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u28 a
      · exact absurd u4 a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd u29 a
      · exact absurd u4 a
      · exact a
      · exact absurd u28 a
    have u33 : ¬v33 := by
      rcases c2308 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
    rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u31
    · exact absurd a u18
    · exact absurd a u32
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u33
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
  have c2310 : v29 ∨ v1 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v32 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v3 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd u3 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u11 : ¬v13 := by
      rcases c2304 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u12 : v8 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u13 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
    have u14 : ¬v12 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
    have u15 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n8
    have u16 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v7 := by
      rcases c2257 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n10
    have u19 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u3 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u18 a
      · exact absurd u3 a
    have u21 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
    have u22 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a n4
      · exact a
      · exact absurd a n9
    have u25 : v37 := by
      rcases c2309 with a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u26 : v41 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u24
      · exact a
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n9
    rcases c135 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c2311 : ¬v29 ∨ v22 ∨ v36 ∨ v37 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v28 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u3 a
      · exact a
    rcases c1881 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2312 : ¬v41 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u8 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v23 := by
      rcases c2309 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
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
    have u16 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v29 := by
      rcases c2311 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
    have u19 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u20 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a u5
    have u21 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
    have u22 : v1 := by
      rcases c2310 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u23 : ¬v7 := by
      rcases c2255 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n3
    have u25 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n3
    have u26 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n3
    have u27 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u9
    have u28 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u8 a
      · exact a
      · exact absurd u27 a
    have u29 : v9 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u10
    have u30 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u29 a
      · exact a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u23
    · exact absurd a u32
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a n3
  have c2313 : v4 ∨ v7 ∨ v29 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u8 : v37 := by
      rcases c147 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n5
    have u9 : v30 := by
      rcases c2231 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v28 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v12 := by
      rcases c1251 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n10
    have u16 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n10
    have u17 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n10
    have u18 : v25 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u3
    have u19 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u3
    have u20 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n9
    have u24 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a n10
    rcases c60 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2315 : ¬v1 ∨ v7 ∨ v24 ∨ v27 ∨ v29 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v23 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u15 : ¬v31 := by
      rcases c2134 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u16 : ¬v35 := by
      rcases c2062 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n8
    have u17 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n10
    have u18 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n10
    have u19 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n8
    have u21 : v4 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u6
    have u22 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a n9
    have u23 : ¬v3 := by
      rcases c1 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u22 a
    rcases c1790 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a u7
  have c2316 : ¬v1 ∨ v7 ∨ v22 ∨ v24 ∨ v27 ∨ v29 ∨ v32 ∨ v39 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v38 := by
      rcases c2246 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v37 := by
      rcases c2315 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v4 := by
      rcases c2313 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v5 := by
      rcases c407 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n9
    rcases c5 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c2317 : ¬v7 ∨ ¬v1 ∨ v24 ∨ v32 ∨ v39 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v40 := by
      rcases c2255 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v41 := by
      rcases c2312 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v2 := by
      rcases c2243 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v23 := by
      rcases c2307 with a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v4 := by
      rcases c7 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v11 := by
      rcases c2127 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
    have u15 : v13 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u5
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n5
    rcases c56 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  exact ⟨c2269, c2286, c2297, c2302, c2304, c2307, c2311, c2312, c2313, c2316, c2317⟩
