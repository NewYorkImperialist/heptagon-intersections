import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1450-1499 of the 2189-step refutation of ccase000: 130 core clauses and 80 earlier-derived ones give 16 more. -/
theorem CCase000_block029
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
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
    (c61 : ¬v15 ∨ ¬v16)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
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
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c146 : ¬v41 ∨ ¬v42)
    (c150 : ¬v46 ∨ ¬v43)
    (c151 : ¬v47 ∨ ¬v43)
    (c155 : ¬v46 ∨ ¬v44)
    (c156 : ¬v44 ∨ ¬v47)
    (c159 : ¬v46 ∨ ¬v45)
    (c160 : ¬v47 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c164 : ¬v48 ∨ ¬v46)
    (c165 : ¬v49 ∨ ¬v46)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c198 : v36 ∨ ¬v35 ∨ v48 ∨ v42 ∨ v29 ∨ v25 ∨ v28 ∨ v33 ∨ v39 ∨ v27 ∨ v34 ∨ v43 ∨ v32 ∨ v49)
    (c213 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v40 ∨ v48 ∨ v49)
    (c222 : ¬v46 ∨ v40 ∨ v45 ∨ v3 ∨ v5 ∨ v4 ∨ v39 ∨ v47)
    (c253 : ¬v31 ∨ v38 ∨ v46 ∨ v44 ∨ v45 ∨ v30 ∨ v37 ∨ v24 ∨ v33 ∨ v34 ∨ v32 ∨ v27 ∨ v25 ∨ v41)
    (c259 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v12)
    (c275 : v4 ∨ v6 ∨ ¬v5 ∨ v13 ∨ v11 ∨ v47 ∨ v12 ∨ v48)
    (c291 : v43 ∨ v20 ∨ v3 ∨ v2 ∨ v6 ∨ v16 ∨ v13 ∨ v14 ∨ v10 ∨ v8 ∨ ¬v9 ∨ v15 ∨ v44 ∨ v45)
    (c294 : v43 ∨ ¬v16 ∨ v2 ∨ v11 ∨ v24 ∨ v18 ∨ v9 ∨ v8 ∨ v25 ∨ v17 ∨ v23 ∨ v15 ∨ v44 ∨ v45)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c394 : ¬v39 ∨ v32 ∨ v38 ∨ v45 ∨ v31 ∨ v40 ∨ v46 ∨ v33)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c452 : v33 ∨ ¬v26 ∨ v19 ∨ v20 ∨ v18 ∨ v27 ∨ v32 ∨ v25)
    (c454 : v32 ∨ ¬v3 ∨ v31 ∨ v2 ∨ v45 ∨ v30 ∨ v4 ∨ v11 ∨ v10 ∨ v5 ∨ v38 ∨ v44 ∨ v12 ∨ v47)
    (c475 : ¬v47 ∨ v5 ∨ v41 ∨ v39 ∨ v40 ∨ v46 ∨ v4 ∨ v48)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c547 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v27 ∨ v34 ∨ v42 ∨ v29)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c922 : v20 ∨ v18 ∨ v19 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1215 : ¬v15 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1313 : ¬v10 ∨ v2 ∨ v3 ∨ v4 ∨ v17)
    (c1337 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1342 : ¬v29 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1415 : v21 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v13 ∨ v18 ∨ v20 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1483 : v21 ∨ v8 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1716 : v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1756 : ¬v6 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1758 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1759 : ¬v40 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c1779 : v24 ∨ ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ v10 ∨ v14 ∨ v17 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c1821 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1835 : ¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1837 : ¬v28 ∨ v6 ∨ v47 ∨ v48 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1861 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1878 : v6 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1886 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1888 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v38)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1919 : v4 ∨ v1 ∨ v2 ∨ ¬v6 ∨ v22 ∨ v23 ∨ ¬v29 ∨ v47 ∨ v48 ∨ v49)
    (c1920 : ¬v15 ∨ v1 ∨ v8 ∨ v10 ∨ v14 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1922 : v24 ∨ v1 ∨ v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1923 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v37)
    (c1924 : v10 ∨ v1 ∨ v2 ∨ v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v46 ∨ v47 ∨ v49)
    (c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1932 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1949 : ¬v9 ∨ v1 ∨ v2 ∨ ¬v6 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c1975 : ¬v14 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v44 ∨ v49)
    (c1976 : ¬v22 ∨ v2 ∨ v47 ∨ v48 ∨ v49)
    (c1977 : ¬v42 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c1992 : v2 ∨ v26 ∨ v47 ∨ v48 ∨ v49)
    (c1993 : ¬v23 ∨ v47 ∨ v48 ∨ v49)
    (c1995 : v26 ∨ ¬v2 ∨ v12 ∨ v47 ∨ v48 ∨ v49)
    (c1998 : v24 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v9 ∨ v10 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c2001 : ¬v42 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47)
    (c2002 : ¬v13 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c2009 : v5 ∨ ¬v2 ∨ v9 ∨ v10 ∨ v12 ∨ v47 ∨ v48 ∨ v49)
    (c2013 : ¬v9 ∨ ¬v2 ∨ v5 ∨ v47 ∨ v48 ∨ v49)
    (c2014 : v6 ∨ ¬v2 ∨ v5 ∨ ¬v10 ∨ v20 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    : (¬v7 ∨ ¬v2 ∨ ¬v5 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v2 ∨ v9 ∨ v23 ∨ ¬v26 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v9 ∨ v47 ∨ v48 ∨ v49) ∧ (v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44) ∧ (¬v16 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v6 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ v48 ∨ v49) ∧ (¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46) ∧ (¬v29 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v48 ∨ v49) ∧ (v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42) ∧ (¬v27 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46) ∧ (v28 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v27 ∨ v29 ∨ v36 ∨ v42 ∨ v49) ∧ (v42 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v24 ∨ v48 ∨ v49) := by
  have c2016 : v5 ∨ ¬v2 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v9 := by
      rcases c2013 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v10 := by
      rcases c2009 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
    have u15 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u6
    have u16 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
    have u17 : v6 := by
      rcases c2014 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v7 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a n3
    rcases c2015 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd n1 a
    · exact absurd u18 a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
  have c2017 : ¬v7 ∨ ¬v2 ∨ ¬v5 ∨ v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c25 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v1 := by
      rcases c9 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c632 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
  have c2018 : v6 ∨ ¬v2 ∨ v3 ∨ v9 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v5 := by
      rcases c2016 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u12 : ¬v4 := by
      rcases c5 with a|a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1977 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u4 a
      · exact absurd a n5
    have u14 : ¬v13 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : v11 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u14
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
    have u16 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
    rcases c1543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2019 : v49 ∨ v1 ∨ v4 ∨ ¬v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v11 := by
      rcases c275 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n13
    have u6 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v29 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
    have u10 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    rcases c1153 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd u10 a
    · exact absurd a u4
    · exact absurd a n13
    · exact absurd a n0
  have c2020 : v9 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v5 := by
      rcases c2016 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v3 := by
      rcases c2018 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd u1 a
    have u15 : ¬v1 := by
      rcases c2 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u13 a
      · exact absurd n1 a
    have u16 : v13 := by
      rcases c2019 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v42 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v15 := by
      rcases c1920 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u22 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u15
  have c2021 : v6 ∨ ¬v2 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v5 := by
      rcases c2016 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v9 := by
      rcases c2020 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
    have u21 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u1
    have u22 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u1
    have u23 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u24 : v42 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v1 := by
      rcases c1779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u6
    · exact absurd a u25
  have c2022 : ¬v2 ∨ v12 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := by
      rcases c2016 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v7 := by
      rcases c2017 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v6 := by
      rcases c2021 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact absurd n0 a
    have u10 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
      · exact absurd u8 a
    have u11 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u12 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v26 := by
      rcases c1995 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u16 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u20 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u18
    have u21 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    rcases c1543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2023 : ¬v5 ∨ v3 ∨ v4 ∨ ¬v6 ∨ ¬v9 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : v46 := by
      rcases c1756 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v2 := by
      rcases c2022 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
    have u18 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u16
    have u19 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u20 a
      · exact absurd n3 a
    have u22 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
    rcases c1919 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd u22 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2024 : v2 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ ¬v9 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c1756 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c2023 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v1 := by
      rcases c14 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
      · exact absurd n3 a
    have u8 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    rcases c1919 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd u8 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2025 : ¬v9 ∨ v2 ∨ ¬v5 ∨ ¬v6 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v18 := by
      rcases c738 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v4 := by
      rcases c2024 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v46 := by
      rcases c1756 with a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v22 := by
      rcases c1976 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v23 := by
      rcases c1993 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd u7 a
    have u14 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u7 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u15 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
    rcases c1543 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2026 : v8 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v36 := by
      rcases c1716 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1838 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2027 : v42 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v9 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v35 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c1703 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n14
    have u2 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n14
    have u3 : v29 := by
      rcases c2026 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    rcases c1957 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2028 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c1702 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2029 : v7 ∨ v2 ∨ v3 ∨ v9 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u9 : ¬v42 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v13 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v1 := by
      rcases c2027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n9
    have u12 : ¬v14 := by
      rcases c1975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u13 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u8
      · exact a
      · exact absurd a n9
    rcases c1224 with a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c2030 : v3 ∨ v2 ∨ ¬v5 ∨ ¬v6 ∨ v9 ∨ v24 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v7 := by
      rcases c2029 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd n3 a
    have u9 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd n3 a
    have u10 : ¬v29 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u12 : v10 := by
      rcases c1924 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n10
    rcases c1295 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u6
  have c2031 : ¬v5 ∨ v2 ∨ ¬v6 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c2025 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v3 := by
      rcases c2030 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v4 := by
      rcases c31 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v1 := by
      rcases c14 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact absurd n2 a
    have u11 : ¬v29 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u13 : v10 := by
      rcases c1924 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n9
    rcases c1295 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u6
  have c2032 : v7 ∨ v5 ∨ ¬v6 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c2002 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n7
    have u3 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u2 a
      · exact a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n7
  have c2033 : ¬v3 ∨ v2 ∨ v5 ∨ ¬v6 ∨ ¬v7 ∨ v24 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c16 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd n4 a
    have u2 : ¬v4 := by
      rcases c33 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v29 := by
      rcases c1919 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u11 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
    rcases c1924 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd u3 a
    · exact absurd a n7
    · exact absurd a n9
  have c2034 : v38 ∨ v3 ∨ v9 ∨ v10 ∨ v17 ∨ v24 ∨ v25 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u2 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v23 := by
      rcases c1888 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
    have u10 : v39 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a u5
    have u11 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v46 := by
      rcases c253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u14
    have u17 : ¬v49 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v48 := by
      rcases c164 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v47 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v6 := by
      rcases c1878 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u21 : v2 := by
      rcases c1992 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u22 : v12 := by
      rcases c2022 with a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u21 a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1251 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a u17
  have c2035 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u3 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
    have u4 : ¬v11 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u5 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v38 := by
      rcases c2034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u8
    rcases c631 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n11
  have c2036 : ¬v29 ∨ v2 ∨ v9 ∨ v23 ∨ ¬v26 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n3
    have u10 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
    rcases c69 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c2037 : ¬v10 ∨ v2 ∨ v3 ∨ ¬v6 ∨ v24 ∨ v28 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
    have u15 : ¬v5 := by
      rcases c2031 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n9
    have u17 : v7 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a u2
    have u18 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u8
      · exact a
    have u19 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
      · exact absurd n3 a
    have u20 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd u7 a
      · exact absurd a n7
    have u21 : v17 := by
      rcases c1313 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact a
    have u22 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u20
    have u23 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u21 a
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a u11
  have c2038 : v9 ∨ v2 ∨ ¬v6 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v5 := by
      rcases c2031 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u13 : ¬v29 := by
      rcases c2036 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v42 := by
      rcases c1702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u16 : v7 := by
      rcases c2032 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v3 := by
      rcases c2033 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd u16 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v10 := by
      rcases c2037 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v1 := by
      rcases c2035 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n6
    have u20 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    have u21 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd u8 a
      · exact absurd a n4
    have u22 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u21
    have u23 : v17 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u18
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
    have u24 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u9
      · exact a
      · exact absurd a u6
    rcases c67 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c2039 : v29 ∨ v2 ∨ v5 ∨ ¬v6 ∨ ¬v9 ∨ v24 ∨ v25 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v7 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u3
    have u9 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : v1 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n10
    have u16 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n10
    have u18 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u19 : ¬v4 := by
      rcases c19 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u20 : ¬v37 := by
      rcases c1886 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u7 a
      · exact absurd a n8
    have u21 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u20
    have u22 : ¬v40 := by
      rcases c1759 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n8
    have u23 : v39 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u19
      · exact a
      · exact absurd a n8
    have u24 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v31 := by
      rcases c1888 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u24
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u14
  have c2040 : ¬v6 ∨ v2 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
    have u11 : ¬v5 := by
      rcases c2031 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v9 := by
      rcases c2038 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v7 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u15
    have u19 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
    have u20 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
    have u21 : v29 := by
      rcases c2039 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd n0 a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u28 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u27
    have u29 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u10
    have u31 : v1 := by
      rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    rcases c16 with a|a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd n0 a
    · exact absurd u18 a
  have c2041 : ¬v29 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v41 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u5 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
  have c2042 : v19 ∨ v18 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v34 := by
      rcases c922 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u2 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
  have c2043 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v41 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u2 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v29 := by
      rcases c2041 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v35 := by
      rcases c547 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
  have c2044 : ¬v9 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v2 := by
      rcases c2022 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u12 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v6 := by
      rcases c2040 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u20 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
    have u21 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u15
    have u22 : ¬v15 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u17
    have u23 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u17
    have u24 : ¬v29 := by
      rcases c2041 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
    have u25 : v1 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u26 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u25 a
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u2
    have u27 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u28 : v19 := by
      rcases c2042 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd u12 a
      · exact absurd a u16
      · exact absurd a u27
    have u29 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : v3 := by
      rcases c291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u23
      · exact a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u29
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u11
    have u31 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u30 a
      · exact absurd u26 a
    have u32 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u26 a
      · exact absurd u30 a
    have u33 : ¬v42 := by
      rcases c2001 with a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u31
      · exact absurd u7 a
      · exact absurd a n1
    have u34 : v34 := by
      rcases c2043 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u33
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u35 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u34 a
    have u36 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u34 a
    have u37 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u34 a
      · exact a
    have u38 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u35
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u39 : ¬v38 := by
      rcases c1861 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u35
      · exact absurd a u36
      · exact absurd a u38
      · exact absurd a u9
      · exact absurd a u11
    rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u36
    · exact absurd u30 a
    · exact absurd a u35
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u37
    · exact absurd a u32
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u31
    · exact absurd a u39
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n1
  have c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n5
    have u2 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    rcases c631 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c2046 : v6 ∨ v13 ∨ v29 ∨ ¬v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u11 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
    have u15 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u1
    rcases c79 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c2047 : ¬v16 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd n0 a
      · exact a
    rcases c294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n11
  have c2048 : v2 ∨ v6 ∨ v13 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v26 := by
      rcases c1992 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v9 := by
      rcases c2044 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u12 : ¬v37 := by
      rcases c2046 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v30 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
    have u14 : v10 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u8
    have u15 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a u7
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u15 a
    rcases c2047 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u10
  have c2049 : v13 ∨ v6 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v9 := by
      rcases c2044 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u13 : v2 := by
      rcases c2048 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : v12 := by
      rcases c2022 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v1 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u11
    have u20 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u6
    have u21 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u1
    have u22 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u6
    have u23 : ¬v5 := by
      rcases c1779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u19 a
      · exact absurd u13 a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v3 := by
      rcases c1998 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u13 a
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd u19 a
      · exact absurd u24 a
      · exact a
      · exact absurd u13 a
    have u26 : ¬v4 := by
      rcases c1 with a|a|a|a
      · exact absurd u19 a
      · exact absurd u13 a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v42 := by
      rcases c2001 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd u4 a
      · exact absurd a n3
    have u28 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u1
      · exact a
      · exact absurd a u21
      · exact absurd a n5
    have u29 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u28 a
    rcases c547 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u28 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a n2
  have c2050 : v29 ∨ v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v9 := by
      rcases c2044 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u13 : v13 := by
      rcases c2049 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u6
    have u20 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u3
    have u21 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
    have u22 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u9
    have u23 : ¬v2 := by
      rcases c2022 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u19 a
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a u18
    have u25 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u3
    have u26 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a u8
    have u27 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u28 : ¬v45 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u29 : v30 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u28
    have u30 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u29 a
    have u34 : v37 := by
      rcases c1923 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u12
      · exact a
    have u35 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u33
    have u36 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u34 a
    have u37 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u35 a
      · exact a
    have u38 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u26
      · exact absurd a u32
      · exact absurd a u36
      · exact absurd a u28
    have u39 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u38 a
      · exact absurd u24 a
    have u40 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u24 a
      · exact absurd u38 a
    rcases c1415 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u40
    · exact absurd a u39
    · exact absurd a n1
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd u13 a
    · exact absurd a u22
    · exact absurd a u37
    · exact absurd a u10
    · exact absurd a u30
    · exact absurd a u33
    · exact absurd a u27
  have c2051 : v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v9 := by
      rcases c2044 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c1837 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v26 := by
      rcases c1878 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v29 := by
      rcases c2050 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u18 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
    have u19 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u17
    have u22 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u22
    have u25 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u10
    have u26 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u24 a
      · exact a
    rcases c2022 with a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u26
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
  have c2052 : ¬v2 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v12 := by
      rcases c2022 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v6 := by
      rcases c2051 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : v46 := by
      rcases c1758 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v9 := by
      rcases c2044 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v1 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v3 := by
      rcases c1337 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v44 := by
      rcases c155 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v43 := by
      rcases c150 with a|a
      · exact absurd u3 a
      · exact a
    rcases c526 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u4
  have c2053 : v2 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v26 := by
      rcases c2040 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c1992 with a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2054 : ¬v2 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v12 := by
      rcases c2022 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v13 := by
      rcases c2052 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c58 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2055 : ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v2 := by
      rcases c2053 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c2054 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
  have c2056 : v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v6 := by
      rcases c2055 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c2051 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c2057 : ¬v24 ∨ v7 ∨ v8 ∨ v14 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v15 := by
      rcases c1215 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
    have u7 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    rcases c967 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c2058 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n3
  have c2059 : ¬v29 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
    have u12 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
    have u15 : ¬v24 := by
      rcases c2057 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n10
    have u16 : v3 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u17 : ¬v4 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd n2 a
      · exact a
    have u18 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u7
    have u19 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a n10
  have c2060 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
    have u3 : v23 := by
      rcases c1920 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v28 := by
      rcases c1138 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
    rcases c92 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c2061 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c84 with a|a
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
    have u4 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u8 : v35 := by
      rcases c1821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u9 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v39 := by
      rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n6
    have u13 : v41 := by
      rcases c1290 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u7
      · exact a
      · exact absurd a n4
    rcases c142 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c2062 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    rcases c547 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
  have c2063 : ¬v27 ∨ v3 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v36 ∨ v43 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c98 with a|a
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
    have u5 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    have u7 : v38 := by
      rcases c2034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n11
  have c2064 : v28 ∨ v7 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v27 ∨ v29 ∨ v36 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u2 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u3 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n10
    rcases c2062 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2065 : v42 ∨ ¬v2 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v14 ∨ v24 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c2059 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2055 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u8 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u9 : ¬v22 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v1 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u11 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u12 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u13 : ¬v4 := by
      rcases c6 with a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v27 := by
      rcases c2063 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v28 := by
      rcases c2064 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n11
    have u16 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n9
    have u19 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u16
      · exact absurd a n9
    have u20 : v38 := by
      rcases c2034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u21 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u20 a
      · exact a
    rcases c475 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n10
  exact ⟨c2017, c2028, c2036, c2044, c2045, c2047, c2055, c2056, c2058, c2059, c2060, c2061, c2062, c2063, c2064, c2065⟩
