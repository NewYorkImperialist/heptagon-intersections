import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 450-499 of the 2934-step refutation of ccase002: 144 core clauses and 34 earlier-derived ones give 19 more. -/
theorem CCase002_block009
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c52 : ¬v11 ∨ ¬v13)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
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
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c124 : ¬v32 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c150 : ¬v39 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c165 : ¬v45 ∨ ¬v43)
    (c168 : ¬v48 ∨ ¬v43)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c204 : ¬v40 ∨ v33 ∨ v39 ∨ v46 ∨ v32 ∨ v41 ∨ v48 ∨ v47)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c227 : ¬v39 ∨ v32 ∨ v47 ∨ v45 ∨ v40 ∨ v46 ∨ v38 ∨ v33)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c237 : v29 ∨ v30 ∨ v15 ∨ v35 ∨ v28 ∨ v23 ∨ v21 ∨ ¬v22)
    (c243 : v13 ∨ v6 ∨ v25 ∨ v47 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v18 ∨ v11 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c261 : ¬v27 ∨ v34 ∨ v35 ∨ v20 ∨ v33 ∨ v28 ∨ v26 ∨ v19)
    (c268 : v36 ∨ ¬v43 ∨ v37 ∨ v44 ∨ v7 ∨ v2 ∨ v1 ∨ v49)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c288 : ¬v26 ∨ v33 ∨ v18 ∨ v20 ∨ v19 ∨ v34 ∨ v25 ∨ v27)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c304 : v36 ∨ ¬v43 ∨ v42 ∨ v37 ∨ v44 ∨ v1 ∨ v7 ∨ v49)
    (c311 : ¬v24 ∨ v31 ∨ v18 ∨ v38 ∨ v30 ∨ v25 ∨ v17 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c343 : v13 ∨ v6 ∨ v46 ∨ v48 ∨ v4 ∨ ¬v5 ∨ v47 ∨ v12)
    (c350 : v4 ∨ v11 ∨ v45 ∨ v2 ∨ v9 ∨ ¬v3 ∨ v10 ∨ v46)
    (c362 : v36 ∨ ¬v43 ∨ v42 ∨ v37 ∨ v44 ∨ v2 ∨ v1 ∨ v49)
    (c366 : ¬v17 ∨ v18 ∨ v24 ∨ v23 ∨ v25 ∨ v9 ∨ v10 ∨ v16)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c374 : ¬v24 ∨ v31 ∨ v17 ∨ v30 ∨ v25 ∨ v16 ∨ v18 ∨ v23)
    (c381 : v21 ∨ v20 ∨ v14 ∨ v6 ∨ v19 ∨ v5 ∨ v12 ∨ ¬v13)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c387 : v15 ∨ v10 ∨ v17 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v2 ∨ v16)
    (c392 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ v46 ∨ ¬v3 ∨ v10)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c401 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v8 ∨ v17 ∨ v9)
    (c426 : v29 ∨ v22 ∨ v24 ∨ v30 ∨ v15 ∨ v31 ∨ ¬v23 ∨ v16)
    (c429 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v32 ∨ v17 ∨ v25 ∨ v23)
    (c452 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v31 ∨ v46 ∨ v38 ∨ v45)
    (c460 : ¬v27 ∨ v34 ∨ v20 ∨ v35 ∨ v21 ∨ v19 ∨ v28 ∨ v26)
    (c498 : v44 ∨ v11 ∨ v45 ∨ v2 ∨ v4 ∨ ¬v3 ∨ v9 ∨ v10)
    (c510 : ¬v40 ∨ v33 ∨ v39 ∨ v41 ∨ v47 ∨ v34 ∨ v46 ∨ v48)
    (c514 : ¬v25 ∨ v32 ∨ v20 ∨ v19 ∨ v26 ∨ v24 ∨ v18 ∨ v34 ∨ v31 ∨ v27 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c525 : v36 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v22 ∨ v17 ∨ v27 ∨ v31 ∨ v24 ∨ v15 ∨ v23 ∨ v34 ∨ v41 ∨ v21)
    (c526 : v26 ∨ v44 ∨ v3 ∨ v18 ∨ v2 ∨ v46 ∨ v45 ∨ v5 ∨ v24 ∨ v25 ∨ v12 ∨ v9 ∨ ¬v4 ∨ v11)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c530 : v14 ∨ v19 ∨ v5 ∨ v12 ∨ v7 ∨ v6 ∨ v20 ∨ ¬v13)
    (c537 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v10 ∨ v25 ∨ v11 ∨ v16)
    (c541 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v33 ∨ v40 ∨ v48 ∨ v27 ∨ v31 ∨ v47 ∨ v19 ∨ v46 ∨ v17 ∨ v24)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c560 : ¬v20 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c594 : v20 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c669 : ¬v17 ∨ ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c726 : ¬v17 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c740 : ¬v21 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c754 : ¬v3 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49)
    (c780 : v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c782 : v24 ∨ ¬v9 ∨ v13 ∨ v16 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c786 : v9 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c924 : v46 ∨ ¬v13 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c958 : ¬v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49)
    (c963 : v25 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v32 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49)
    (c972 : ¬v25 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v19 ∨ v34 ∨ v41 ∨ v48)
    (c976 : v13 ∨ v6 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c998 : v42 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v32 ∨ v38 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20) ∧ (v31 ∨ ¬v13 ∨ ¬v19 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17) ∧ (v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31) ∧ (v28 ∨ ¬v19 ∨ ¬v20 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v13 ∨ ¬v6 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ ¬v6 ∨ v17 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ ¬v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v42 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v35 ∨ ¬v13 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v46 ∨ ¬v13 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v10 ∨ ¬v3 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48) ∧ (v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25) := by
  have c999 : v32 ∨ v38 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v33 := by
      rcases c227 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n1
      · exact a
    have u2 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
  have c1000 : v30 ∨ v7 ∨ ¬v13 ∨ ¬v19 ∨ v28 ∨ v29 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v1 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n12 a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n13
      · exact a
      · exact absurd a n1
      · exact absurd a n15
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n11
    have u5 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u6 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u7 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u9 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u10 : v27 := by
      rcases c613 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u9
      · exact a
      · exact absurd a n4
    have u11 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n0
    have u12 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n13
      · exact a
    have u14 : v3 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
    rcases c1 with a|a|a
    · exact absurd u1 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
  have c1002 : v5 ∨ v2 ∨ v3 ∨ v6 ∨ ¬v13 ∨ ¬v19 ∨ v20 ∨ v31 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v18 := by
      rcases c958 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v24 := by
      rcases c1001 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd n5 a
      · exact absurd a n6
    have u8 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
    have u9 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n5 a
    have u10 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n5 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a n6
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a u1
  have c1003 : v31 ∨ ¬v13 ∨ ¬v19 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v7 := by
      rcases c1000 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    have u5 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v1 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n11 a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u5
      · exact a
      · exact absurd a n16
    have u7 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact a
    have u10 : v20 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u12 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u13 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u14 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v23 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u5
    rcases c865 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd u15 a
    · exact absurd a n5
  have c1004 : ¬v9 ∨ v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    rcases c387 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n4
  have c1005 : v2 ∨ v3 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c1004 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1006 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    rcases c374 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
  have c1007 : v30 ∨ v3 ∨ ¬v19 ∨ ¬v20 ∨ v23 ∨ v28 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c1006 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u5 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n6
    have u6 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u1
    rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c1008 : ¬v2 ∨ ¬v3 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
  have c1009 : v28 ∨ ¬v19 ∨ ¬v20 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a n4
    have u7 : v3 := by
      rcases c1007 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    have u8 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n16
    have u9 : v1 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n11 a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u8
      · exact a
      · exact absurd a n16
    have u10 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u8
    have u11 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u10 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n10
  have c1010 : ¬v6 ∨ v7 ∨ v13 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v2 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n10
    have u3 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
    have u4 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
    have u5 : v12 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n2
    rcases c55 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1011 : v13 ∨ ¬v6 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v7 := by
      rcases c1010 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n9
  have c1012 : v49 ∨ ¬v19 ∨ v28 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v39 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v32 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v29 := by
      rcases c124 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v13 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u14 : ¬v20 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u15 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u16 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a u14
      · exact a
      · exact absurd a n4
      · exact absurd a u11
    have u17 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v21 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n2
      · exact a
    rcases c922 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a n2
  have c1013 : v24 ∨ ¬v6 ∨ v17 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n3
    have u6 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n13
    have u7 : ¬v4 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u3
  have c1014 : ¬v13 ∨ ¬v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v16 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n8
    have u7 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n14
      · exact a
    rcases c1008 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd n13 a
    · exact absurd a n14
    · exact absurd a n16
  have c1015 : v41 ∨ ¬v19 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v39 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u3 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v32 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v28 := by
      rcases c1012 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v13 := by
      rcases c1014 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u19 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
    have u20 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n8
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u10
    have u22 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n1 a
    have u23 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n1 a
    rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u22
  have c1016 : v26 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v5 ∨ v19 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    rcases c498 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a u4
  have c1017 : ¬v20 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v24 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n19
    have u2 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n19
    have u3 : v1 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u2
      · exact a
      · exact absurd a n19
    have u4 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u7 : v26 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u8 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v18 := by
      rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n17
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n4
    have u11 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a n19
    · exact absurd a n13
  have c1018 : ¬v20 ∨ v13 ∨ v17 ∨ v19 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v18 := by
      rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n20
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n4
    have u5 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
    have u7 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n21
      · exact absurd a n15
    have u9 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
    have u10 : ¬v3 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u11 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u9 a
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n17
    · exact absurd a n13
    · exact absurd a n8
  have c1019 : v46 ∨ v13 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n19
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n21
    have u2 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd u1 a
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v3 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u4 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n8
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v26 := by
      rcases c1018 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
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
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u10 : v21 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd n4 a
    have u11 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n9
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n19
      · exact absurd a n15
    have u12 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n4 a
    have u13 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n4 a
    have u14 : v4 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n20
      · exact a
      · exact absurd u11 a
      · exact absurd a n19
      · exact absurd a u5
    have u15 : v2 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u3
    rcases c19 with a|a|a
    · exact absurd u15 a
    · exact absurd u11 a
    · exact absurd u14 a
  have c1020 : v48 ∨ v6 ∨ v13 ∨ v17 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u2 : v39 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u3 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v32 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u11
    have u13 : v24 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd u12 a
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u14 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v18 := by
      rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u14
    rcases c91 with a|a|a
    · exact absurd u18 a
    · exact absurd u19 a
    · exact absurd u12 a
  have c1021 : v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n7
    have u2 : ¬v45 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v13 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v4 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n1
    have u5 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u6 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n9 a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n14
  have c1022 : v42 ∨ v13 ∨ v17 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v39 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v19 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n10
    have u4 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v32 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v27 := by
      rcases c1020 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u8
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
      · exact absurd a n10
    have u12 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v12 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u10
    have u19 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n10
    have u20 : v4 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a n7
    have u21 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a n10
  have c1023 : ¬v27 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v20 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
    have u7 : v16 := by
      rcases c537 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact a
    rcases c75 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd n4 a
  have c1024 : ¬v17 ∨ v13 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v25 := by
      rcases c972 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n17
    have u3 : v12 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v27 := by
      rcases c1023 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n17
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n6
    have u10 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n16
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd u9 a
    · exact absurd a n17
    · exact absurd a n18
  have c1025 : v45 ∨ v13 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v39 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v19 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
    have u4 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v32 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : v17 := by
      rcases c1022 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v25 := by
      rcases c972 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n8
    have u16 : ¬v18 := by
      rcases c976 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u14 a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v26 := by
      rcases c1024 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u2
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v20 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u9
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u20
    have u23 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u14 a
    have u24 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u21
    have u26 : ¬v9 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u27 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u20
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u25
    have u28 : v10 := by
      rcases c366 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u26
      · exact a
      · exact absurd a u23
    rcases c48 with a|a
    · exact absurd u28 a
    · exact absurd u27 a
  have c1026 : ¬v2 ∨ ¬v13 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v3 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n14
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v21 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
    have u7 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n14
    · exact absurd a n10
  have c1027 : v42 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : v13 := by
      rcases c1025 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v39 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v37 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v32 := by
      rcases c999 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v30 := by
      rcases c129 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v35 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v19 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v26 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v2 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
    have u23 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u3
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u22
    have u24 : ¬v21 := by
      rcases c740 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd u23 a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
    have u25 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n0
    have u26 : v1 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u22
      · exact a
      · exact absurd a n8
    have u27 : ¬v6 := by
      rcases c14 with a|a|a
      · exact absurd u26 a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u26 a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u25 a
    have u30 : v20 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u6
      · exact absurd a u27
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a u4
      · exact absurd u2 a
    have u31 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u29
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u13
    rcases c75 with a|a|a
    · exact absurd u23 a
    · exact absurd u30 a
    · exact absurd u31 a
  have c1028 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v32 := by
      rcases c204 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
    have u2 : ¬v34 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    rcases c510 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
  have c1029 : v44 ∨ ¬v13 ∨ ¬v26 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u13 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u14
    have u19 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v2 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
    have u24 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u23
    have u25 : ¬v21 := by
      rcases c740 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u24 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
    have u26 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n4
    have u27 : v20 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u28 : v3 := by
      rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u29 : v4 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd u28 a
      · exact absurd a u9
      · exact absurd a n6
    rcases c26 with a|a|a
    · exact absurd u26 a
    · exact absurd u28 a
    · exact absurd u29 a
  have c1030 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v20 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c1031 : ¬v20 ∨ ¬v13 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v16 := by
      rcases c1030 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n12
      · exact a
    have u7 : ¬v3 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n14
    have u8 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n5
    have u9 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u4
  have c1032 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n1
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n5 a
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u3
  have c1033 : v35 ∨ ¬v13 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v23 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v16 := by
      rcases c1032 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v17 := by
      rcases c75 with a|a|a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v7 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n20
    · exact absurd a n14
  have c1034 : v37 ∨ ¬v4 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v18 := by
      rcases c941 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v7 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n7
    have u5 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n17
    have u6 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n13 a
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n17
  have c1035 : ¬v13 ∨ ¬v16 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v4 := by
      rcases c734 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
    have u9 : v17 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u10 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u12 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n21
      · exact absurd a n15
    have u13 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n17
      · exact absurd a n18
    have u14 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    have u15 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u8 a
    rcases c526 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n17
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n19
    · exact absurd a n18
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd u8 a
    · exact absurd a u6
  have c1036 : v30 ∨ ¬v13 ∨ ¬v23 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v20 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v16 := by
      rcases c1035 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : v17 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact a
    have u10 : v15 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd n2 a
      · exact absurd a u8
    have u11 : v18 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u9 a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u4
    rcases c63 with a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd u11 a
  have c1037 : ¬v17 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v18 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u1
    have u7 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n15
      · exact a
    have u8 : ¬v28 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u6 a
    have u10 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n16
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a n17
    · exact absurd a n13
  have c1038 : v29 ∨ ¬v13 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v23 := by
      rcases c1036 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd n17 a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v20 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd n17 a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : v16 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd n17 a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
    have u4 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v22 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact a
    rcases c121 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
  have c1039 : v32 ∨ ¬v13 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v20 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n16 a
    have u7 : ¬v23 := by
      rcases c1036 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : v25 := by
      rcases c1038 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u9 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v19 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a u6
      · exact absurd a n21
    have u11 : v18 := by
      rcases c514 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u12 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u13 : ¬v16 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u14 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n21
      · exact absurd a n15
    have u15 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n17
      · exact a
    rcases c887 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n17
    · exact absurd a n18
  have c1040 : v37 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n10
    have u2 : v4 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n2
    have u3 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n6 a
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n10
  have c1041 : v34 ∨ ¬v13 ∨ v24 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n14 a
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u5 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n6
    have u6 : v27 := by
      rcases c1039 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v19 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a u1
      · exact absurd a n19
    have u11 : ¬v21 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
    have u12 : ¬v20 := by
      rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c460 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n3
  have c1042 : v28 ∨ v3 ∨ ¬v13 ∨ ¬v16 ∨ ¬v17 ∨ v25 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n9
    have u7 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    rcases c231 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u3
  have c1043 : v25 ∨ v3 ∨ ¬v13 ∨ ¬v17 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v19 := by
      rcases c726 with a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v16 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n14
      · exact a
    have u10 : ¬v5 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v1 := by
      rcases c276 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v7 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v4 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a u4
    have u14 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u9 a
      · exact absurd u11 a
      · exact a
    have u15 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n18
      · exact absurd a n13
    have u16 : v20 := by
      rcases c530 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd n2 a
    have u17 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n9
    rcases c91 with a|a|a
    · exact absurd u17 a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1044 : v46 ∨ ¬v13 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
    have u7 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v3 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u19 : ¬v26 := by
      rcases c1029 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v24 := by
      rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n1 a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u21 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v19 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n1 a
      · exact a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd u6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v17 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd n1 a
      · exact a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u27 : ¬v18 := by
      rcases c370 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
    rcases c429 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u18
    · exact absurd a u27
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u23
  have c1045 : v10 ∨ ¬v3 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v9 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c1008 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
    have u4 : v4 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n0
    have u5 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    have u6 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n9
  have c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
    have u2 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact absurd u1 a
      · exact a
    rcases c561 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
  have c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c537 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n2
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    rcases c366 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
  have c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  exact ⟨c999, c1001, c1003, c1004, c1005, c1006, c1009, c1011, c1013, c1014, c1021, c1027, c1028, c1033, c1044, c1045, c1046, c1047, c1048⟩
