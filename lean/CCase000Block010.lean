import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 500-549 of the 2189-step refutation of ccase000: 124 core clauses and 62 earlier-derived ones give 21 more. -/
theorem CCase000_block010
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
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
    (c65 : ¬v15 ∨ ¬v20)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
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
    (c102 : ¬v27 ∨ ¬v28)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c118 : ¬v31 ∨ ¬v35)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c148 : ¬v44 ∨ ¬v43)
    (c149 : ¬v45 ∨ ¬v43)
    (c150 : ¬v46 ∨ ¬v43)
    (c152 : ¬v48 ∨ ¬v43)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c183 : v43 ∨ v14 ∨ v1 ∨ v13 ∨ v6 ∨ v48 ∨ ¬v7 ∨ v49)
    (c198 : v36 ∨ ¬v35 ∨ v48 ∨ v42 ∨ v29 ∨ v25 ∨ v28 ∨ v33 ∨ v39 ∨ v27 ∨ v34 ∨ v43 ∨ v32 ∨ v49)
    (c232 : v33 ∨ ¬v25 ∨ v32 ∨ v19 ∨ v18 ∨ v24 ∨ v26 ∨ v17)
    (c235 : v13 ∨ ¬v19 ∨ v26 ∨ v25 ∨ v20 ∨ v12 ∨ v18 ∨ v11)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c272 : v4 ∨ v7 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v9 ∨ v14 ∨ v36 ∨ v8 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c280 : ¬v27 ∨ v34 ∨ v7 ∨ v33 ∨ v5 ∨ v20 ∨ v13 ∨ v6 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v18 ∨ v21)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c298 : ¬v15 ∨ v22 ∨ v23 ∨ v8 ∨ v9 ∨ v16 ∨ v21 ∨ v28)
    (c299 : ¬v35 ∨ v29 ∨ v42 ∨ v22 ∨ v27 ∨ v41 ∨ v28 ∨ v34)
    (c307 : ¬v27 ∨ v34 ∨ v18 ∨ v41 ∨ v32 ∨ v35 ∨ v25 ∨ v26 ∨ v28 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c311 : ¬v42 ∨ v7 ∨ v35 ∨ v30 ∨ v29 ∨ v8 ∨ v13 ∨ v14 ∨ v36 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c312 : v36 ∨ ¬v35 ∨ v42 ∨ v41 ∨ v22 ∨ v34 ∨ v29 ∨ v28)
    (c314 : v5 ∨ v7 ∨ v6 ∨ v14 ∨ v13 ∨ v19 ∨ v32 ∨ v18 ∨ v11 ∨ ¬v12 ∨ v26 ∨ v21 ∨ v33 ∨ v34)
    (c349 : v43 ∨ ¬v35 ∨ v42 ∨ v48 ∨ v24 ∨ v22 ∨ v31 ∨ v30 ∨ v41 ∨ v28 ∨ v29 ∨ v34 ∨ v38 ∨ v49)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c415 : v36 ∨ v6 ∨ v13 ∨ v37 ∨ v1 ∨ v7 ∨ ¬v2 ∨ v9 ∨ v3 ∨ v8 ∨ v38 ∨ v44 ∨ v45 ∨ v48)
    (c445 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v32 ∨ v25 ∨ v24 ∨ v23)
    (c458 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c483 : v28 ∨ v6 ∨ v5 ∨ v27 ∨ v7 ∨ v9 ∨ v13 ∨ v19 ∨ v16 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v15 ∨ v12)
    (c498 : v43 ∨ ¬v28 ∨ v42 ∨ v23 ∨ v35 ∨ v48 ∨ v34 ∨ v21 ∨ v27 ∨ v16 ∨ v22 ∨ v15 ∨ v30 ∨ v49)
    (c523 : ¬v40 ∨ v47 ∨ v41 ∨ v48 ∨ v34 ∨ v46 ∨ v39 ∨ v33)
    (c544 : v5 ∨ v7 ∨ v20 ∨ v6 ∨ v14 ∨ v19 ∨ v12 ∨ ¬v13)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c627 : v18 ∨ ¬v2 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c635 : v15 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c670 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c671 : v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c681 : v23 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c742 : ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c820 : v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c836 : ¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c861 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c939 : ¬v34 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c964 : v20 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13 ∨ v21)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c979 : ¬v18 ∨ v4 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c993 : v6 ∨ ¬v3 ∨ ¬v4 ∨ ¬v12 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1019 : v24 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c1024 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1027 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1042 : ¬v34 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1047 : v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1053 : v24 ∨ v2 ∨ v23 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1056 : v44 ∨ v2 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1060 : v26 ∨ ¬v24 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1061 : ¬v13 ∨ ¬v2 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ ¬v43 ∨ v45 ∨ v46 ∨ v47)
    (c1062 : v27 ∨ v4 ∨ v10 ∨ v11 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v10 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v3 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v5 ∨ ¬v2 ∨ v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v7 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v5 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (v49 ∨ v7 ∨ ¬v11 ∨ v22 ∨ v28 ∨ v42 ∨ v47 ∨ v48) ∧ (v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45) ∧ (¬v28 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (v49 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v4 ∨ ¬v2 ∨ ¬v11 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ ¬v28 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (v19 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v20) ∧ (v7 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v11 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v18 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v28 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v27 ∨ v28) ∧ (v13 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v16 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48) := by
  have c1063 : v4 ∨ v10 ∨ v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v2 := by
      rcases c1056 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c1060 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v11 := by
      rcases c1062 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n7
    have u15 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v3 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n5
    rcases c24 with a|a|a|a
    · exact absurd u1 a
    · exact absurd u14 a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1064 : v44 ∨ v4 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v2 := by
      rcases c1056 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u4 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v10 := by
      rcases c1063 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n6
    have u17 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact absurd u1 a
    rcases c272 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd u3 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n8
  have c1065 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v10 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
    have u8 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd n2 a
    rcases c415 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n17
  have c1066 : v36 ∨ ¬v2 ∨ v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v23 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    have u2 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
    have u3 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v48 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n14 a
    have u5 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u4
      · exact absurd a n19
    have u6 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v13 := by
      rcases c1061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd n14 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v34 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u13 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n11
  have c1067 : ¬v34 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n5 a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1068 : v27 ∨ v11 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c1060 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v4 := by
      rcases c1064 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v2 := by
      rcases c1056 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
    have u17 : ¬v13 := by
      rcases c1061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v10 := by
      rcases c1065 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : v3 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u13 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u20 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u13 a
      · exact absurd u19 a
      · exact a
    have u21 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n6
    have u22 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v34 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v28 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n7
    have u26 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u24
      · exact a
      · exact absurd a n0
      · exact absurd a u4
    have u27 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u26 a
    rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1069 : v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v24 := by
      rcases c1060 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : v11 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
    have u19 : v3 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
    have u20 : v4 := by
      rcases c1064 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u23 : ¬v6 := by
      rcases c31 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v34 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v23 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
    have u26 : v28 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c92 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1070 : ¬v3 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c24 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v4 := by
      rcases c21 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c824 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1071 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c979 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
  have c1072 : ¬v5 ∨ ¬v2 ∨ v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v3 := by
      rcases c1070 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
    have u3 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
    have u4 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd u8 a
    rcases c415 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n19
  have c1073 : v7 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n8
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v13 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n4
    rcases c964 with a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd a u5
  have c1074 : v5 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n8
    have u2 : v11 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1075 : v26 ∨ ¬v4 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v7 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v2 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v5 := by
      rcases c1072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : v12 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u18 a
      · exact absurd n1 a
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
      · exact absurd a u6
      · exact absurd a u4
    have u28 : ¬v6 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u23
      · exact a
      · exact absurd a n6
      · exact absurd a n5
    have u29 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u7
    have u30 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a u6
    have u31 : ¬v18 := by
      rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u27
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
    have u32 : ¬v34 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u33 : v20 := by
      rcases c280 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u32
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u31
      · exact absurd a u29
    have u34 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u33 a
    rcases c314 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u34
    · exact absurd a u16
    · exact absurd a u31
    · exact absurd a u24
    · exact absurd u20 a
    · exact absurd a n0
    · exact absurd a u29
    · exact absurd a u15
    · exact absurd a u32
  have c1076 : v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v2 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v4 := by
      rcases c1075 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v13 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u19 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u20 : ¬v7 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v5 := by
      rcases c1072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u14
    have u23 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v11 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u22 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u23
      · exact a
    have u26 : v10 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u21
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c51 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c1077 : v4 ∨ ¬v2 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u8 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
    have u9 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
    have u10 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n9
    have u12 : ¬v7 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u14
      · exact absurd u15 a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n16
      · exact absurd a n14
    rcases c24 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u16 a
    · exact absurd u9 a
    · exact absurd u15 a
  have c1078 : ¬v13 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    rcases c964 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
  have c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v26 := by
      rcases c1076 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v42 := by
      rcases c1024 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v34 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
    have u19 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v2 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v7 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u22 a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v4 := by
      rcases c1077 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v13 := by
      rcases c1078 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u26 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u27 : ¬v3 := by
      rcases c22 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u26 a
      · exact absurd u24 a
    have u28 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd u22 a
      · exact absurd u24 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c624 with a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n1
  have c1080 : v7 ∨ ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : v11 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v12 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
    rcases c55 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1081 : v23 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ ¬v11 ∨ v13 ∨ ¬v26 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v6 := by
      rcases c1080 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v39 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v30 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u6
    have u11 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u4
    have u12 : v41 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n6 a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u13 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n17
  have c1082 : v23 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v13 ∨ v15 ∨ v24 ∨ ¬v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd n2 a
    have u9 : v37 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd n9 a
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
    have u10 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u8
  have c1083 : ¬v38 ∨ v7 ∨ ¬v11 ∨ v21 ∨ v22 ∨ v28 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    have u6 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    rcases c312 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n5
  have c1084 : v13 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v15 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u7 : v32 := by
      rcases c1082 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n18
  have c1085 : v24 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v13 ∨ v23 ∨ ¬v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
    have u9 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v15 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
    have u11 : ¬v38 := by
      rcases c1083 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n15
    have u12 : v31 := by
      rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd n8 a
      · exact a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n7
  have c1086 : v18 ∨ v17 ∨ v24 ∨ ¬v25 ∨ v26 ∨ ¬v31 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v16 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd u4 a
      · exact a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c1087 : v13 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v7 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
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
    have u4 : ¬v26 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v25 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n8
    have u7 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v31 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd u5 a
      · exact absurd a u4
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : v32 := by
      rcases c684 with a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd a n8
    have u12 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v42 := by
      rcases c1052 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n14
  have c1088 : ¬v40 ∨ v33 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c523 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n1
  have c1089 : ¬v40 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1088 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1089 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1091 : v48 ∨ ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c7 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : v11 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v6 := by
      rcases c29 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    rcases c183 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a n7
  have c1092 : v49 ∨ v7 ∨ ¬v11 ∨ v22 ∨ v28 ∨ v42 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v35 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u2 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v41 := by
      rcases c1000 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u7 : v27 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u3
    have u8 : v36 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
    have u9 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v43 := by
      rcases c349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n0
    have u12 : ¬v46 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v45 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v44 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u11 a
    rcases c1079 with a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1093 : v28 ∨ v6 ∨ v7 ∨ ¬v11 ∨ ¬v24 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v34 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n9
    have u7 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u6 a
      · exact a
    rcases c286 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c1094 : v3 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v33 ∨ v38 ∨ ¬v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
  have c1095 : v45 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v23 ∨ v26 ∨ v28 ∨ v33 ∨ v38 ∨ v40 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1080 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v24 := by
      rcases c1093 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v5 := by
      rcases c1087 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v42 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v35 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n3 a
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a n13
    have u12 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1096 : ¬v4 ∨ ¬v2 ∨ ¬v11 ∨ v26 ∨ v28 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u6 : v23 := by
      rcases c1095 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v5 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd u11 a
    rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
  have c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v18 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
  have c1098 : v38 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v28 := by
      rcases c1096 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v5 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u9 : v31 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
    have u10 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v39 := by
      rcases c912 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c445 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u5
  have c1099 : v26 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ ¬v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v6 := by
      rcases c1080 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u3
    have u9 : v28 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n3 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
    rcases c879 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd u9 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n9
  have c1100 : ¬v28 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v34 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c836 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1101 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    rcases c198 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n10
  have c1102 : v48 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v26 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c56 with a|a
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
    have u5 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v6 := by
      rcases c1080 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u8 : ¬v33 := by
      rcases c1099 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u9 : v38 := by
      rcases c1098 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u10 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v28 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
    have u15 : v35 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a u11
      · exact absurd a n9
    have u16 : v22 := by
      rcases c1092 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
    have u17 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u11
    have u18 : v27 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
    rcases c86 with a|a
    · exact absurd u16 a
    · exact absurd u18 a
  have c1103 : v49 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v26 := by
      rcases c1102 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v42 := by
      rcases c1092 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a n0
    have u14 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a n0
    have u15 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a n0
    have u16 : v3 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
    have u17 : v6 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    rcases c22 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd n2 a
  have c1104 : ¬v4 ∨ ¬v2 ∨ ¬v11 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v40 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v7 := by
      rcases c1091 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u16 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n7
    have u17 : v28 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n2 a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n7
    have u18 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u14
      · exact absurd a u13
    have u23 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u20
    have u24 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n3
    have u25 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u18
      · exact a
    rcases c1 with a|a|a|a
    · exact absurd u25 a
    · exact absurd n1 a
    · exact absurd u24 a
    · exact absurd n0 a
  have c1105 : ¬v20 ∨ ¬v28 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n1 a
    rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n8
  have c1106 : v19 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n5 a
    rcases c544 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd n5 a
  have c1107 : v7 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v11 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v10 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n10
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u5
    have u11 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u12 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n12
    have u13 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
    have u15 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    rcases c1106 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd u12 a
    · exact absurd a u7
  have c1108 : v20 ∨ v18 ∨ v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n4 a
      · exact a
    rcases c307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1109 : v28 ∨ v7 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v26 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n13
    have u7 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
    have u8 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v27 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a n0
    rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd u11 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1110 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n14
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
    have u7 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
    have u8 : ¬v13 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
    have u10 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v3 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n15
    have u13 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact absurd n2 a
    have u15 : ¬v12 := by
      rcases c993 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u12 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
    have u16 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n5
    have u17 : ¬v19 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u18 : v20 := by
      rcases c1108 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u19 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u19
      · exact absurd a n19
    have u22 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a u14
    rcases c45 with a|a
    · exact absurd u22 a
    · exact absurd u21 a
  have c1111 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    rcases c483 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n5
  have c1112 : v13 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v16 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n11
    rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  exact ⟨c1065, c1069, c1070, c1072, c1073, c1074, c1079, c1090, c1092, c1097, c1100, c1101, c1103, c1104, c1105, c1106, c1107, c1108, c1110, c1111, c1112⟩
