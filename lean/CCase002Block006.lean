import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 300-349 of the 2934-step refutation of ccase002: 143 core clauses and 24 earlier-derived ones give 29 more. -/
theorem CCase002_block006
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c41 : ¬v8 ∨ ¬v14)
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
    (c53 : ¬v11 ∨ ¬v14)
    (c54 : ¬v12 ∨ ¬v13)
    (c55 : ¬v12 ∨ ¬v14)
    (c56 : ¬v14 ∨ ¬v13)
    (c57 : v14 ∨ v13 ∨ v12 ∨ v8 ∨ v9 ∨ v11 ∨ v10)
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
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
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c123 : ¬v31 ∨ ¬v29)
    (c124 : ¬v32 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c143 : ¬v37 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c168 : ¬v48 ∨ ¬v43)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c226 : v36 ∨ ¬v43 ∨ v42 ∨ v44 ∨ v2 ∨ v7 ∨ v1 ∨ v49)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c254 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v34 ∨ v20 ∨ v27 ∨ v22)
    (c257 : v12 ∨ v48 ∨ v4 ∨ v6 ∨ ¬v5 ∨ v47 ∨ v11 ∨ v46)
    (c276 : v1 ∨ ¬v2 ∨ v44 ∨ v3 ∨ v9 ∨ v45 ∨ v8 ∨ v10)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c289 : ¬v37 ∨ v36 ∨ v31 ∨ v45 ∨ v38 ∨ v29 ∨ v30 ∨ v44)
    (c290 : v29 ∨ v16 ∨ v35 ∨ v23 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v28)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c306 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v9 ∨ v21 ∨ v8)
    (c307 : v29 ∨ ¬v35 ∨ v34 ∨ v27 ∨ v41 ∨ v22 ∨ v28 ∨ v42)
    (c315 : ¬v25 ∨ v32 ∨ v18 ∨ v24 ∨ v26 ∨ v33 ∨ v17 ∨ v31)
    (c323 : v36 ∨ ¬v35 ∨ v42 ∨ v28 ∨ v29 ∨ v22 ∨ v41 ∨ v34)
    (c328 : v36 ∨ v22 ∨ v23 ∨ v28 ∨ v42 ∨ ¬v29 ∨ v30 ∨ v35)
    (c345 : v36 ∨ ¬v37 ∨ v47 ∨ v30 ∨ v39 ∨ v44 ∨ v24 ∨ v33 ∨ v22 ∨ v40 ∨ v23 ∨ v38 ∨ v45 ∨ v29)
    (c351 : ¬v33 ∨ v40 ∨ v27 ∨ v26 ∨ v32 ∨ v34 ∨ v41 ∨ v39)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c356 : v22 ∨ ¬v25 ∨ v23 ∨ v26 ∨ v38 ∨ v32 ∨ v18 ∨ v17 ∨ v33 ∨ v15 ∨ v29 ∨ v24 ∨ v39 ∨ v40)
    (c357 : ¬v41 ∨ v48 ∨ v40 ∨ v34 ∨ v47 ∨ v49 ∨ v33 ∨ v42)
    (c360 : v36 ∨ v29 ∨ v28 ∨ ¬v43 ∨ v22 ∨ v1 ∨ v3 ∨ v2 ∨ v23 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c361 : ¬v23 ∨ v30 ∨ v31 ∨ v16 ∨ v15 ∨ v22 ∨ v24 ∨ v17)
    (c362 : v36 ∨ ¬v43 ∨ v42 ∨ v37 ∨ v44 ∨ v2 ∨ v1 ∨ v49)
    (c365 : ¬v24 ∨ v31 ∨ v17 ∨ v16 ∨ v20 ∨ v11 ∨ v23 ∨ v9 ∨ v10 ∨ v26 ∨ v27 ∨ v25 ∨ v32 ∨ v34)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c387 : v15 ∨ v10 ∨ v17 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v2 ∨ v16)
    (c391 : v36 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v15 ∨ v32 ∨ v16 ∨ v17 ∨ v29 ∨ v30 ∨ v39 ∨ v23 ∨ v38 ∨ v46)
    (c397 : ¬v24 ∨ v31 ∨ v16 ∨ v25 ∨ v32 ∨ v17 ∨ v18 ∨ v23)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c420 : ¬v27 ∨ v34 ∨ v33 ∨ v26 ∨ v28 ∨ v48 ∨ v47 ∨ v15 ∨ v21 ∨ v22 ∨ v41 ∨ v20 ∨ v29 ∨ v49)
    (c424 : v4 ∨ v6 ∨ v18 ∨ v11 ∨ v13 ∨ v19 ∨ v5 ∨ ¬v12)
    (c436 : ¬v8 ∨ v9 ∨ v21 ∨ v2 ∨ v14 ∨ v16 ∨ v1 ∨ v15)
    (c441 : ¬v31 ∨ v38 ∨ v30 ∨ v24 ∨ v25 ∨ v39 ∨ v32 ∨ v23)
    (c453 : ¬v4 ∨ v5 ∨ v45 ∨ v12 ∨ v3 ∨ v10 ∨ v11 ∨ v46)
    (c455 : ¬v37 ∨ v30 ∨ v38 ∨ v10 ∨ v2 ∨ v9 ∨ v29 ∨ v35 ∨ v36 ∨ v8 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c459 : v29 ∨ ¬v23 ∨ v30 ∨ v15 ∨ v24 ∨ v17 ∨ v16 ∨ v22)
    (c490 : v36 ∨ ¬v43 ∨ v1 ∨ v5 ∨ v8 ∨ v9 ∨ v14 ∨ v2 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c525 : v36 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v22 ∨ v17 ∨ v27 ∨ v31 ∨ v24 ∨ v15 ∨ v23 ∨ v34 ∨ v41 ∨ v21)
    (c529 : ¬v15 ∨ v22 ∨ v23 ∨ v16 ∨ v28 ∨ v8 ∨ v21 ∨ v14)
    (c535 : ¬v37 ∨ v36 ∨ v29 ∨ v30 ∨ v34 ∨ v3 ∨ v2 ∨ v1 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c608 : v6 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c610 : ¬v4 ∨ v19 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c639 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c642 : ¬v27 ∨ ¬v18 ∨ ¬v19 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v42)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c689 : v44 ∨ v4 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49)
    (c690 : ¬v20 ∨ ¬v4 ∨ ¬v7 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c720 : v16 ∨ ¬v5 ∨ v12 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c723 : v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c771 : ¬v27 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41)
    (c785 : v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c787 : v17 ∨ ¬v4 ∨ v14 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49)
    (c810 : v48 ∨ ¬v4 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c812 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c832 : ¬v24 ∨ ¬v35 ∨ v41 ∨ v42)
    (c842 : v41 ∨ v19 ∨ v26 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c848 : v41 ∨ v20 ∨ v26 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v27 ∨ ¬v17 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v36 ∨ ¬v4 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42) ∧ (¬v33 ∨ v26 ∨ v32 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32) ∧ (v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30) ∧ (¬v43 ∨ ¬v19 ∨ ¬v20 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v25 ∨ v17 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33) ∧ (¬v5 ∨ v12 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39) ∧ (¬v7 ∨ v4 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49) ∧ (v19 ∨ ¬v17 ∨ ¬v18 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v5 ∨ ¬v6 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v14 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v46 ∨ v7 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45) ∧ (v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48) ∧ (¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v21 ∨ ¬v6 ∨ ¬v8 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v23 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34) ∧ (v20 ∨ v13 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35) := by
  have c849 : ¬v27 ∨ ¬v17 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    rcases c420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n11
  have c850 : ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v18 := by
      rcases c642 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v15 := by
      rcases c420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n12
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n14
    have u7 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
    have u8 : ¬v16 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
    have u9 : v14 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n2
      · exact a
    have u10 : v9 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u7
    rcases c46 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c851 : v39 ∨ v20 ∨ v26 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v19 := by
      rcases c842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c832 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v27 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v21 := by
      rcases c850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v17 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : ¬v18 := by
      rcases c642 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u1 a
    have u19 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u1 a
    have u20 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n2
    have u22 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
    have u23 : v13 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u12
      · exact a
    have u24 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u8
    rcases c52 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c852 : v38 ∨ v26 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
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
    have u2 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c832 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v19 := by
      rcases c842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v20 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u10 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u11 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u12 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u13 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u14 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u15 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
    have u16 : ¬v25 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u4
    have u17 : ¬v23 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u12
    have u18 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
    have u20 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u6
    have u21 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : v5 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c720 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u22 a
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c853 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v26 := by
      rcases c852 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v35 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    rcases c307 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n5
  have c854 : v36 ∨ ¬v4 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c360 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd n9 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c855 : v42 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v33 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : v30 := by
      rcases c345 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n11 a
      · exact absurd a n19
      · exact a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n9
    have u3 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u7 : ¬v7 := by
      rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u8 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n20
      · exact absurd a n0
    have u9 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a u3
    have u11 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u6 a
    have u12 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u6 a
    rcases c226 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n15 a
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n20
  have c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    rcases c328 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u2
  have c857 : ¬v37 ∨ v17 ∨ v18 ∨ v21 ∨ ¬v26 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n8
    have u8 : v33 := by
      rcases c855 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n10
  have c858 : ¬v33 ∨ v26 ∨ v32 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c351 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n4
    rcases c771 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c859 : ¬v33 ∨ v26 ∨ v32 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    rcases c858 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    rcases c859 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c861 : v29 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v32 := by
      rcases c391 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
    have u3 : v31 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
    rcases c133 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c863 : v17 ∨ v15 ∨ v16 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v29 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v26 := by
      rcases c857 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v30 := by
      rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
    have u10 : ¬v25 := by
      rcases c356 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v28 := by
      rcases c855 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u12 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u11 a
    · exact absurd a u6
    · exact absurd a n13
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n4
  have c864 : v42 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v20 ∨ v21 ∨ v22 ∨ v29 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n14 a
    have u2 : ¬v26 := by
      rcases c857 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v23 := by
      rcases c863 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v30 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
    have u10 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u14 : ¬v7 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd u13 a
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n18
    have u15 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n19
      · exact absurd a n0
    have u16 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u13 a
      · exact a
      · exact absurd a n18
      · exact absurd a u1
      · exact absurd a n19
    have u19 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a u10
    have u20 : v1 := by
      rcases c760 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n6
    rcases c6 with a|a|a
    · exact absurd u20 a
    · exact absurd u19 a
    · exact absurd u13 a
  have c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
  have c866 : v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v20 ∨ v21 ∨ v22 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : v29 := by
      rcases c864 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a u3
    have u9 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u10 : v28 := by
      rcases c856 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a u8
      · exact a
      · exact absurd a u1
      · exact absurd a n12
    have u11 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u10 a
    rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u10 a
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n5
  have c867 : v36 ∨ v17 ∨ v18 ∨ ¬v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v29 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v32 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n10 a
    have u4 : ¬v31 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n10 a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n16 a
    have u6 : v4 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u7 : ¬v41 := by
      rcases c357 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n11
      · exact absurd a n15
    have u8 : v19 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n21
    have u9 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u10 : ¬v7 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n20
    have u11 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a n15
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u6 a
      · exact a
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n21
    have u15 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n12
      · exact absurd a u4
    have u16 : v1 := by
      rcases c760 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    rcases c6 with a|a|a
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd u6 a
  have c868 : ¬v43 ∨ ¬v19 ∨ ¬v20 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u6 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v26 := by
      rcases c857 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v22 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v29 := by
      rcases c867 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u14
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v30 := by
      rcases c844 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u15
      · exact a
    have u17 : v35 := by
      rcases c290 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u14
    rcases c132 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c869 : ¬v25 ∨ v17 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    rcases c315 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
  have c870 : ¬v5 ∨ v12 ∨ v14 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n10
    have u2 : ¬v4 := by
      rcases c810 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
    have u3 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    rcases c323 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
  have c872 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n1 a
      · exact a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
  have c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    rcases c441 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n1
  have c874 : ¬v7 ∨ v4 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
    have u2 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    rcases c608 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n10
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v6 := by
      rcases c285 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
    have u7 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n9
    rcases c12 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n5
    have u2 : v4 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c31 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n0 a
  have c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
  have c878 : v19 ∨ ¬v17 ∨ ¬v18 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
    have u4 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v4 := by
      rcases c810 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
    have u11 : v1 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u1
      · exact a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
    have u12 : v6 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
    rcases c14 with a|a|a
    · exact absurd u11 a
    · exact absurd u3 a
    · exact absurd u12 a
  have c879 : v5 ∨ ¬v6 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v14 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c490 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n9 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c880 : v46 ∨ v7 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n10
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n15
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n9
    have u9 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v1 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a n15
    have u11 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v6 := by
      rcases c12 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u8 a
    rcases c257 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n14
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u8 a
    · exact absurd a n13
    · exact absurd a u5
    · exact absurd a n0
  have c881 : v40 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v7 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v6 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v1 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a u13
      · exact absurd u4 a
      · exact a
      · exact absurd a n15
      · exact absurd a u6
    have u15 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u4 a
    have u18 : v18 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd u5 a
    have u19 : v20 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u20 : v30 := by
      rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
    have u21 : ¬v17 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u22 : v27 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u19 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u23 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u21
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a u23
    rcases c113 with a|a
    · exact absurd u22 a
    · exact absurd u24 a
  have c882 : v20 ∨ v5 ∨ ¬v7 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u6 : ¬v6 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : v1 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n20
      · exact absurd a u6
      · exact absurd n2 a
      · exact a
      · exact absurd a n21
      · exact absurd a n5
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n2 a
    have u9 : v30 := by
      rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
    have u10 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n6
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n20
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a n14
    · exact absurd a u10
  have c883 : v11 ∨ v12 ∨ v13 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v25 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
    have u2 : v27 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a n1
    rcases c116 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c884 : v2 ∨ v3 ∨ v4 ∨ v5 ∨ v8 ∨ v9 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v10 := by
      rcases c57 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
    have u2 : v18 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n13
    have u3 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u2 a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n10 a
      · exact absurd u2 a
    rcases c419 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n5
  have c885 : v6 ∨ v5 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ ¬v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v1 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n23
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n24
      · exact absurd a n7
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u7 : v11 := by
      rcases c884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u8 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v30 := by
      rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact a
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n24
    have u10 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n10
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n23
    · exact absurd a n9
    · exact absurd a u11
    · exact absurd a n17
    · exact absurd a u10
  have c886 : v4 ∨ v2 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v13 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v29 ∨ v33 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v16 := by
      rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n24
      · exact absurd a n10
      · exact absurd n7 a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n5
    have u2 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd u1 a
      · exact absurd n9 a
      · exact a
    have u7 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n9 a
    have u8 : v30 := by
      rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact a
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n24
    have u9 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n14
    rcases c734 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd u1 a
    · exact absurd a u11
    · exact absurd a n12
    · exact absurd a u10
    · exact absurd a n17
    · exact absurd a n21
  have c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c276 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
  have c888 : ¬v7 ∨ v5 ∨ v6 ∨ v8 ∨ v9 ∨ v14 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v37 := by
      rcases c852 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n19
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n21
    have u3 : v19 := by
      rcases c881 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u4 : ¬v20 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u5 : ¬v12 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd u2 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : v13 := by
      rcases c885 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v4 := by
      rcases c886 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u11 : v3 := by
      rcases c453 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a n17
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n18
    rcases c26 with a|a|a
    · exact absurd n0 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c889 : v8 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v9 := by
      rcases c888 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n5
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v18 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
    have u6 : v1 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n22
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n23
      · exact absurd a n5
    have u7 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u5 a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u5 a
    have u9 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u5 a
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n3 a
    rcases c387 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a u10
    · exact absurd a u9
  have c890 : v26 ∨ v5 ∨ ¬v7 ∨ v8 ∨ v14 ∨ v21 ∨ v28 ∨ v29 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v37 := by
      rcases c852 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n19
    have u3 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v19 := by
      rcases c881 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v20 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u6 : ¬v12 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v6 := by
      rcases c889 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
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
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v9 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u2 a
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u10 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u11 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v18 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n0
    have u15 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u14 a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u14 a
    rcases c718 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u15
  have c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n7
    rcases c205 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n3
  have c892 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd n1 a
      · exact a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
  have c893 : v21 ∨ ¬v6 ∨ ¬v8 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n10
    have u6 : v18 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a u4
    have u7 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u9 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    have u10 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    rcases c436 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u9
  have c894 : v8 ∨ ¬v6 ∨ v14 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v37 := by
      rcases c852 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact a
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
    have u2 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n17
      · exact absurd a n11
    have u5 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u4 a
    rcases c890 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
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
  have c895 : v23 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n7 a
      · exact a
    rcases c365 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n12
  have c896 : v16 ∨ ¬v6 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v20 ∨ v26 ∨ v27 ∨ v29 ∨ v34 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n15 a
    have u5 : v37 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n15 a
      · exact absurd a n14
      · exact a
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n18
    have u6 : ¬v41 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v30 := by
      rcases c535 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n12
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u4
    have u8 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n17
      · exact absurd a n13
      · exact absurd a u8
    have u11 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u10 a
    rcases c895 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u10 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n11
  have c897 : v20 ∨ v13 ∨ v21 ∨ v26 ∨ v28 ∨ v29 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v37 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n16
    have u4 : ¬v36 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v35 := by
      rcases c872 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v34 := by
      rcases c892 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v6 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n15
    have u8 : ¬v27 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n2
    have u9 : v19 := by
      rcases c881 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v8 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n16
    have u11 : v14 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
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
    have u12 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v18 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u15
    have u17 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u16 a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v7 := by
      rcases c896 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u7 a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    have u21 : v5 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u15
      · exact a
      · exact absurd a n14
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a n15
      · exact absurd a n1
    have u22 : v1 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n2
    rcases c12 with a|a|a
    · exact absurd u22 a
    · exact absurd u7 a
    · exact absurd u21 a
  have c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    rcases c254 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
  exact ⟨c849, c850, c853, c854, c856, c859, c860, c862, c865, c868, c869, c870, c871, c872, c873, c874, c875, c876, c877, c878, c879, c880, c887, c891, c892, c893, c895, c897, c898⟩
