import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 600-649 of the 2934-step refutation of ccase002: 136 core clauses and 56 earlier-derived ones give 21 more. -/
theorem CCase002_block012
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c98 : v15 ∨ v20 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c101 : ¬v22 ∨ ¬v24)
    (c102 : ¬v22 ∨ ¬v25)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c108 : ¬v26 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
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
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c131 : ¬v34 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c150 : ¬v39 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c164 : ¬v44 ∨ ¬v43)
    (c166 : ¬v43 ∨ ¬v46)
    (c167 : ¬v47 ∨ ¬v43)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c211 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v39 ∨ v25 ∨ v34 ∨ v28 ∨ v29 ∨ v33 ∨ v32 ∨ v43 ∨ v48 ∨ v49)
    (c214 : ¬v28 ∨ v22 ∨ v23 ∨ v20 ∨ v13 ∨ v8 ∨ v27 ∨ v31 ∨ v17 ∨ v24 ∨ v29 ∨ v21 ∨ v14 ∨ v35)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c237 : v29 ∨ v30 ∨ v15 ∨ v35 ∨ v28 ∨ v23 ∨ v21 ∨ ¬v22)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c258 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ v30 ∨ v28 ∨ ¬v29 ∨ v23)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c272 : ¬v42 ∨ v35 ∨ v21 ∨ v33 ∨ v20 ∨ v15 ∨ v28 ∨ v29 ∨ v36 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c295 : ¬v34 ∨ v27 ∨ v41 ∨ v35 ∨ v28 ∨ v26 ∨ v40 ∨ v33)
    (c316 : v29 ∨ ¬v30 ∨ v22 ∨ v31 ∨ v24 ∨ v23 ∨ v38 ∨ v37)
    (c329 : v15 ∨ v19 ∨ v24 ∨ v25 ∨ v18 ∨ v4 ∨ v1 ∨ v3 ∨ ¬v11 ∨ v8 ∨ v10 ∨ v12 ∨ v9 ∨ v26)
    (c334 : v43 ∨ ¬v44 ∨ v2 ∨ v38 ∨ v1 ∨ v3 ∨ v37 ∨ v45)
    (c357 : ¬v41 ∨ v48 ∨ v40 ∨ v34 ∨ v47 ∨ v49 ∨ v33 ∨ v42)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c395 : ¬v39 ∨ v38 ∨ v46 ∨ v31 ∨ v32 ∨ v45 ∨ v33 ∨ v40)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c412 : ¬v42 ∨ v36 ∨ v48 ∨ v41 ∨ v29 ∨ v35 ∨ v49 ∨ v34)
    (c415 : ¬v39 ∨ v32 ∨ v47 ∨ v33 ∨ v40 ∨ v31 ∨ v38 ∨ v46)
    (c418 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v22 ∨ v23 ∨ v29)
    (c421 : ¬v10 ∨ v12 ∨ v44 ∨ v45 ∨ v46 ∨ v2 ∨ v17 ∨ v20 ∨ v6 ∨ v9 ∨ v11 ∨ v3 ∨ v13 ∨ v18)
    (c445 : ¬v44 ∨ v43 ∨ v36 ∨ v37 ∨ v38 ∨ v1 ∨ v2 ∨ v45)
    (c457 : ¬v34 ∨ v37 ∨ v41 ∨ v28 ∨ v35 ∨ v30 ∨ v29 ∨ v40 ∨ v27 ∨ v33 ∨ v23 ∨ v47 ∨ v48 ∨ v49)
    (c466 : v19 ∨ v10 ∨ v17 ∨ v4 ∨ v18 ∨ v5 ∨ v12 ∨ ¬v11)
    (c474 : ¬v44 ∨ v36 ∨ v2 ∨ v38 ∨ v43 ∨ v37 ∨ v3 ∨ v45)
    (c476 : v29 ∨ ¬v28 ∨ v20 ∨ v15 ∨ v35 ∨ v22 ∨ v21 ∨ v27)
    (c493 : ¬v19 ∨ v26 ∨ v24 ∨ v18 ∨ v48 ∨ v25 ∨ v20 ∨ v10 ∨ v13 ∨ v12 ∨ v17 ∨ v46 ∨ v47 ∨ v5)
    (c539 : v21 ∨ v23 ∨ v17 ∨ v18 ∨ v24 ∨ v7 ∨ v2 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v14 ∨ v8 ∨ v3 ∨ v25)
    (c544 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c545 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c601 : v48 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c630 : v20 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c646 : v19 ∨ ¬v9 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c671 : ¬v28 ∨ ¬v18 ∨ v20 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c706 : ¬v11 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c723 : v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c740 : ¬v21 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c754 : ¬v3 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c785 : v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c805 : ¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c806 : ¬v4 ∨ ¬v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c827 : ¬v2 ∨ ¬v10 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c829 : v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c838 : v27 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c839 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c869 : ¬v25 ∨ v17 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c999 : v32 ∨ v38 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1072 : ¬v18 ∨ ¬v19 ∨ v20 ∨ ¬v28 ∨ v29 ∨ v35)
    (c1093 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1105 : ¬v18 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48)
    (c1110 : v26 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1132 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1134 : ¬v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1135 : v20 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c1138 : ¬v17 ∨ ¬v16 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1139 : v24 ∨ ¬v16 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1141 : ¬v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1142 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1146 : ¬v4 ∨ ¬v3 ∨ v7 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49)
    (c1148 : v45 ∨ v16 ∨ v17 ∨ v26 ∨ v34 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45) ∧ (v47 ∨ v16 ∨ v17 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35) ∧ (¬v31 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v17 ∨ ¬v16 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v47 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (v31 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ v3 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47) ∧ (v18 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ ¬v16 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35) ∧ (v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v15 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v38 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ ¬v16 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28) ∧ (v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1149 : v47 ∨ v16 ∨ v17 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v29 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n3
    have u8 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v26 := by
      rcases c1148 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u9 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u1
  have c1150 : ¬v26 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd n3 a
      · exact a
    have u12 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact a
    have u14 : v43 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n5
    have u15 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v30 := by
      rcases c316 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
    have u17 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u14 a
    rcases c457 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a n5
  have c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
    have u7 : v2 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n1
    have u8 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v5 := by
      rcases c19 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u10 : v43 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
    have u11 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd u6 a
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a u4
  have c1152 : v25 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ ¬v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n11 a
      · exact a
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n11 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n11 a
      · exact a
    have u7 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd n12 a
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u10 : v3 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v19 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u8
    have u12 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n15
    have u13 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v7 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u15 : ¬v4 := by
      rcases c1146 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n17
    have u16 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n9
    have u17 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a n13
      · exact a
    have u21 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u10 a
    have u22 : v15 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u8
    have u23 : v20 := by
      rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a u8
      · exact absurd a u21
    rcases c70 with a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd u11 a
  have c1153 : v16 ∨ v17 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
    have u2 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v34 := by
      rcases c1149 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v28 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u5
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
    have u17 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v18 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v20 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u19 a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
    have u21 : ¬v19 := by
      rcases c1072 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd a u5
    have u22 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u19 a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
    have u23 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u10
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a n3
      · exact a
    have u28 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a u12
    rcases c16 with a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u26 a
  have c1154 : ¬v11 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ ¬v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n9 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n9 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd n9 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd n9 a
      · exact a
    have u10 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact a
    have u12 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n7
    have u13 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n10
      · exact a
    have u14 : v43 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n13
    have u15 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : v19 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a u18
      · exact absurd a u6
    have u21 : v27 := by
      rcases c1153 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v18 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd u14 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u19
      · exact absurd a n12
      · exact absurd a n13
    have u25 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u20 a
    have u26 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u24 a
    rcases c272 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n8
    · exact absurd a u25
    · exact absurd a u15
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a n12
    · exact absurd a n13
  have c1155 : v47 ∨ v16 ∨ v17 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c1153 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v34 := by
      rcases c1149 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
    have u7 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u16 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u17 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u18 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u19 : ¬v11 := by
      rcases c1154 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v18 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd u20 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u22 : ¬v15 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u19
      · exact a
      · exact absurd u20 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u23 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u21 a
    rcases c272 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1156 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
  have c1157 : v35 ∨ v16 ∨ ¬v17 ∨ ¬v18 ∨ v29 ∨ v30 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u3 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u11 : ¬v28 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
    rcases c272 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1158 : v18 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u1
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1159 : v29 ∨ v16 ∨ v24 ∨ v30 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v17 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n10
      · exact a
    have u13 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v18 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v28 := by
      rcases c1158 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v27 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u13
    have u18 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u18
    have u20 : v19 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u20 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u21
  have c1160 : v48 ∨ v16 ∨ v29 ∨ v30 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n9
    have u8 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n9
      · exact a
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
    have u10 : v24 := by
      rcases c1159 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u11 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u10 a
    rcases c295 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u9
  have c1161 : ¬v24 ∨ ¬v29 ∨ v30 ∨ v35 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u3
  have c1162 : v16 ∨ v26 ∨ v30 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v17 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
    have u12 : v29 := by
      rcases c1160 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u13 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v24 := by
      rcases c1161 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
    have u16 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
    have u17 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
    have u18 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u16
    have u19 : v18 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u19 a
    have u21 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u1 a
    rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1163 : v30 ∨ v16 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v26 := by
      rcases c1162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v29 := by
      rcases c1150 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd u9 a
    · exact absurd a u1
  have c1164 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n1 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
  have c1165 : ¬v17 ∨ ¬v16 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : v33 := by
      rcases c272 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c860 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u5
  have c1166 : v47 ∨ v15 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v17 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
    have u10 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact a
    have u11 : v21 := by
      rcases c272 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v27 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u9
    have u14 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd n2 a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u20 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a n5
    rcases c740 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd n2 a
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a u18
  have c1167 : ¬v3 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c1146 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
  have c1168 : v44 ∨ v20 ∨ v28 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact a
    have u13 : v43 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
    have u14 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v27 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u14
    have u18 : v16 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v15 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v17 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v18 := by
      rcases c59 with a|a|a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u18 a
      · exact absurd u21 a
      · exact a
    have u26 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd u26 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u30 : ¬v3 := by
      rcases c1167 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a n8
    have u31 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
    have u32 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u31 a
    have u34 : ¬v2 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u32
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u34
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u23
  have c1169 : ¬v20 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v18 := by
      rcases c78 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1170 : v47 ∨ v28 ∨ v29 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u12 : v20 := by
      rcases c1168 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v34 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact a
    have u14 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v27 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u11
    have u17 : v16 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u17 a
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c1171 : v15 ∨ ¬v16 ∨ v17 ∨ v23 ∨ v26 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
    have u5 : ¬v20 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v21 := by
      rcases c1156 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n10
    have u7 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u3
    have u8 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1172 : v45 ∨ v17 ∨ v29 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v16 := by
      rcases c1155 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v28 := by
      rcases c1170 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
    have u17 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v32 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u19 : ¬v20 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u20 : v15 := by
      rcases c1171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v19 := by
      rcases c60 with a|a|a
      · exact absurd u1 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v4 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v14 := by
      rcases c806 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
    have u26 : v8 := by
      rcases c214 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u23
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u4
    have u27 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v10 := by
      rcases c37 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u12
    have u30 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u15
    rcases c24 with a|a|a
    · exact absurd u29 a
    · exact absurd u24 a
    · exact absurd u30 a
  have c1173 : v29 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1164 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v26 := by
      rcases c1150 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
    have u13 : v28 := by
      rcases c1170 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v30 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n0
    have u18 : ¬v32 := by
      rcases c738 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u19 : v16 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v20 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v17 := by
      rcases c1172 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u21 a
    rcases c1156 with a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u2
  have c1174 : ¬v28 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v29 := by
      rcases c1173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u9 a
      · exact a
    have u19 : v16 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v20 := by
      rcases c1169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v17 := by
      rcases c1138 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v18 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v19 := by
      rcases c1135 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u19 a
      · exact absurd a u21
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1175 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c1141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v29 := by
      rcases c1173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v35 := by
      rcases c1134 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v28 := by
      rcases c1174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : v16 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : ¬v24 := by
      rcases c1161 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u16
    have u19 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u16
    have u20 : ¬v25 := by
      rcases c1142 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u16
    have u21 : v22 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a u1
    have u22 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v17 := by
      rcases c1138 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v21 := by
      rcases c1139 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u17 a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v19 := by
      rcases c81 with a|a|a
      · exact absurd u17 a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd u17 a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v18 := by
      rcases c79 with a|a|a
      · exact absurd u17 a
      · exact absurd u24 a
      · exact a
    rcases c838 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1176 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd n0 a
      · exact a
    rcases c357 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
  have c1177 : v30 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v39 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n13
    have u3 : ¬v19 := by
      rcases c1135 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u4 : ¬v18 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u6 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v4 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n17
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n11
    have u9 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
    have u10 : ¬v7 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u8 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v5 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n16
      · exact a
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a n17
      · exact absurd a u10
      · exact absurd a u6
    have u13 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n8
    rcases c27 with a|a|a
    · exact absurd u8 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c1178 : v31 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v29 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    rcases c1177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1179 : v19 ∨ v3 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n7
    have u2 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n14 a
      · exact a
    have u3 : ¬v39 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n13
    have u4 : ¬v2 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd n14 a
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n15
  have c1180 : ¬v10 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n11
    have u6 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a n12
  have c1181 : v18 ∨ ¬v1 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v5 := by
      rcases c466 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
    rcases c7 with a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u4 a
  have c1182 : v18 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v39 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v3 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v10 := by
      rcases c1180 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v1 := by
      rcases c1181 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n15
    have u8 : v2 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
      · exact a
      · exact absurd a n14
    have u9 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact a
    have u11 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n13
    rcases c742 with a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
  have c1183 : ¬v19 ∨ ¬v16 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n2 a
  have c1184 : ¬v22 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c1178 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v34 := by
      rcases c1177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v41 := by
      rcases c295 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n12
    have u6 : ¬v19 := by
      rcases c1183 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u4
    have u7 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v18 := by
      rcases c1182 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    rcases c237 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd n0 a
  have c1185 : v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v39 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
    have u3 : ¬v18 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
    have u7 : ¬v4 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v7 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
    have u10 : v5 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n15
      · exact a
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a u4
    have u11 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u10 a
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n13
    · exact absurd a n11
    · exact absurd a n7
  have c1186 : v20 ∨ ¬v16 ∨ v17 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v39 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n13
    have u3 : v30 := by
      rcases c1184 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v41 := by
      rcases c1176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v19 := by
      rcases c1185 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n17
  have c1187 : v20 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v11 := by
      rcases c706 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u4 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
  have c1188 : ¬v3 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c27 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1189 : v21 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n13
    have u3 : ¬v39 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n13
    have u4 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n9
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v2 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    rcases c539 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n7
  have c1190 : v20 ∨ ¬v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v39 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v22 := by
      rcases c1186 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v19 := by
      rcases c1187 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v9 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v15 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v12 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
    have u13 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n8
    have u14 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u12 a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd u9 a
  have c1191 : v15 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    have u7 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v5 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd n1 a
    have u10 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
    have u13 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
    have u14 : v37 := by
      rcases c334 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a n14
    have u15 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a u17
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v27 := by
      rcases c211 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u18 a
      · exact absurd a u17
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n18
    rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a n10
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1192 : v15 ∨ v3 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v43 := by
      rcases c164 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u6 : v37 := by
      rcases c334 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n10 a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n11
    have u7 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v42 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v39 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v35 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a u9
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v22 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u16 : ¬v27 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v25 := by
      rcases c211 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u10
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
    rcases c102 with a|a
    · exact absurd u15 a
    · exact absurd u17 a
  have c1193 : v45 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v39 := by
      rcases c415 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v44 := by
      rcases c1175 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v17 := by
      rcases c1190 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v12 := by
      rcases c1191 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u9 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n12
    have u10 : ¬v7 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v3 := by
      rcases c1188 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v4 := by
      rcases c1192 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact a
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v6 := by
      rcases c608 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n9
    have u15 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u9 a
    have u16 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    rcases c329 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd u14 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a n6
  have c1194 : ¬v16 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v19 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n2
      · exact a
    have u2 : v17 := by
      rcases c869 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c74 with a|a|a
    · exact absurd n0 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c1195 : v38 ∨ ¬v16 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v25 := by
      rcases c1193 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v18 := by
      rcases c1194 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n9
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n10
    have u11 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n7
    rcases c1188 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1196 : v26 ∨ ¬v16 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v19 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c78 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u7 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u8 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c51 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1197 : ¬v11 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
  have c1198 : v17 ∨ v15 ∨ ¬v16 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v21 := by
      rcases c98 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    have u2 : ¬v11 := by
      rcases c1197 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v4 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n18
    have u4 : v13 := by
      rcases c839 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u5
  exact ⟨c1150, c1151, c1155, c1156, c1164, c1165, c1166, c1169, c1175, c1176, c1178, c1179, c1182, c1183, c1185, c1188, c1191, c1195, c1196, c1197, c1198⟩
