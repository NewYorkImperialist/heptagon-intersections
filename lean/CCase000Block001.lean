import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 50-99 of the 2189-step refutation of ccase000: 117 core clauses and 6 earlier-derived ones give 32 more. -/
theorem CCase000_block001
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c42 : ¬v11 ∨ ¬v8)
    (c45 : ¬v8 ∨ ¬v14)
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
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
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
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c111 : ¬v32 ∨ ¬v30)
    (c128 : ¬v39 ∨ ¬v36)
    (c151 : ¬v47 ∨ ¬v43)
    (c152 : ¬v48 ∨ ¬v43)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c186 : v22 ∨ ¬v21 ∨ v15 ∨ v8 ∨ v14 ∨ v13 ∨ v20 ∨ v28)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c196 : ¬v21 ∨ v15 ∨ v14 ∨ v20 ∨ v8 ∨ v27 ∨ v13 ∨ v28)
    (c200 : v3 ∨ v6 ∨ v33 ∨ v5 ∨ v11 ∨ ¬v4 ∨ v45 ∨ v13 ∨ v32 ∨ v31 ∨ v39 ∨ v12 ∨ v46 ∨ v48)
    (c202 : v46 ∨ ¬v3 ∨ v2 ∨ v44 ∨ v4 ∨ v10 ∨ v9 ∨ v45)
    (c206 : ¬v10 ∨ v18 ∨ v4 ∨ v17 ∨ v16 ∨ v11 ∨ v3 ∨ v9)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c220 : ¬v28 ∨ v35 ∨ v20 ∨ v27 ∨ v22 ∨ v34 ∨ v21 ∨ v15)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c228 : v22 ∨ ¬v16 ∨ v23 ∨ v9 ∨ v17 ∨ v10 ∨ v15 ∨ v8)
    (c239 : ¬v20 ∨ v34 ∨ v14 ∨ v33 ∨ v35 ∨ v13 ∨ v26 ∨ v21 ∨ v19 ∨ v15 ∨ v27 ∨ v16 ∨ v9 ∨ v23)
    (c248 : ¬v27 ∨ v20 ∨ v26 ∨ v35 ∨ v28 ∨ v34 ∨ v33 ∨ v19)
    (c265 : v22 ∨ v28 ∨ v37 ∨ v23 ∨ v3 ∨ v1 ∨ ¬v30 ∨ v31 ∨ v29 ∨ v35 ∨ v2 ∨ v38 ∨ v42 ∨ v44)
    (c305 : v29 ∨ ¬v30 ∨ v38 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v22)
    (c307 : ¬v27 ∨ v34 ∨ v18 ∨ v41 ∨ v32 ∨ v35 ∨ v25 ∨ v26 ∨ v28 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49)
    (c317 : v1 ∨ v7 ∨ v6 ∨ v8 ∨ ¬v14 ∨ v13 ∨ v15 ∨ v21)
    (c350 : ¬v9 ∨ v8 ∨ v17 ∨ v16 ∨ v2 ∨ v15 ∨ v1 ∨ v10)
    (c361 : v10 ∨ ¬v17 ∨ v16 ∨ v24 ∨ v25 ∨ v18 ∨ v23 ∨ v9)
    (c375 : v22 ∨ ¬v16 ∨ v23 ∨ v24 ∨ v10 ∨ v9 ∨ v15 ∨ v17)
    (c390 : v46 ∨ v10 ∨ v2 ∨ v4 ∨ v45 ∨ v11 ∨ v44 ∨ ¬v3)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c422 : v22 ∨ v15 ∨ v16 ∨ v25 ∨ v10 ∨ v26 ∨ v8 ∨ v11 ∨ v19 ∨ ¬v18 ∨ v17 ∨ v31 ∨ v32 ∨ v33)
    (c473 : v43 ∨ v29 ∨ v44 ∨ v49 ∨ v35 ∨ v42 ∨ ¬v36 ∨ v37)
    (c481 : v22 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v34 ∨ v13 ∨ v21 ∨ v15 ∨ v14 ∨ v19 ∨ v8 ∨ v40 ∨ v41 ∨ v42)
    (c484 : ¬v30 ∨ v37 ∨ v8 ∨ v38 ∨ v23 ∨ v22 ∨ v31 ∨ v16 ∨ v10 ∨ v25 ∨ v32 ∨ v9 ∨ v29 ∨ v39)
    (c507 : v3 ∨ ¬v17 ∨ v25 ∨ v10 ∨ v26 ∨ v24 ∨ v9 ∨ v19 ∨ v12 ∨ v18 ∨ v16 ∨ v44 ∨ v45 ∨ v46)
    (c520 : v22 ∨ ¬v16 ∨ v23 ∨ v17 ∨ v9 ∨ v8 ∨ v15 ∨ v24)
    (c521 : v12 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v11 ∨ v18 ∨ v26 ∨ v27)
    (c551 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v25 ∨ v18 ∨ v10 ∨ v16)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c569 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c573 : ¬v4 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c582 : v20 ∨ ¬v3 ∨ v10 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c606 : v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    : (v21 ∨ ¬v5 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v21 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28) ∧ (¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45) ∧ (v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (v18 ∨ ¬v2 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24) ∧ (¬v11 ∨ v2 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24) ∧ (v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49) ∧ (¬v16 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (¬v7 ∨ ¬v9 ∨ v16 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v15 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33) ∧ (¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42) ∧ (v47 ∨ ¬v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48) ∧ (v8 ∨ v6 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v18 ∨ ¬v28 ∨ v34 ∨ v35) ∧ (v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28) ∧ (v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23) ∧ (v23 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v25 ∨ v29 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39) ∧ (v31 ∨ ¬v6 ∨ ¬v11 ∨ v18 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (v2 ∨ ¬v4 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44) := by
  have c608 : v21 ∨ ¬v5 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n19
      · exact absurd a n4
      · exact absurd a n7
    have u3 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v1 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a u5
    have u7 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n22
    have u8 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
    rcases c15 with a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c609 : v21 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n5
    have u6 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
    have u7 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n19
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n15
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n20
    rcases c23 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c610 : v17 ∨ ¬v2 ∨ ¬v6 ∨ ¬v7 ∨ v18 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
    have u4 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c51 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c611 : ¬v6 ∨ ¬v7 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v2 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n6
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v1 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
    have u7 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u8 : v4 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u4
      · exact absurd a u1
      · exact a
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd u7 a
    rcases c19 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c612 : v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v26 := by
      rcases c606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v13 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u13 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u14 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n18
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n12
    have u15 : ¬v7 := by
      rcases c611 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u16 : v12 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n19
      · exact absurd a n17
    have u17 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n19
    rcases c59 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    rcases c186 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
  have c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u4 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    rcases c613 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    rcases c307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n1 a
    rcases c248 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
  have c617 : v19 ∨ v7 ∨ v16 ∨ v17 ∨ v18 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n21
      · exact absurd a n26
    have u2 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n21
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n26
    have u3 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a n22
      · exact absurd a n2
      · exact absurd a n7
    have u4 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n20
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n25
      · exact absurd a n15
    have u8 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n9
      · exact a
      · exact absurd a n24
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n19
    have u9 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n23
    rcases c21 with a|a|a|a
    · exact absurd u8 a
    · exact absurd u3 a
    · exact absurd u9 a
    · exact absurd u7 a
  have c618 : ¬v7 ∨ ¬v2 ∨ ¬v14 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
    have u4 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c23 with a|a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u3 a
  have c619 : v18 ∨ ¬v2 ∨ ¬v3 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact a
    have u3 : v8 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd n4 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n12
    have u4 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c42 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c620 : v6 ∨ ¬v7 ∨ v9 ∨ v13 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a n7
    have u2 : ¬v14 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v3 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u4 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n18
    have u5 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v4 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n2
    have u8 : ¬v5 := by
      rcases c28 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd u7 a
    · exact absurd a n18
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n16
    · exact absurd a u5
    · exact absurd a n19
    · exact absurd a n20
  have c621 : v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u8
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v13 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u15 : v7 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u16 : ¬v6 := by
      rcases c611 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : v9 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u15 a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u18 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v1 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u14
      · exact a
      · exact absurd u15 a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n18
    have u23 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n16
      · exact absurd a n4
    have u24 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n14
    rcases c15 with a|a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd u15 a
  have c622 : v18 ∨ ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ v14 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u3 : v13 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c56 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
  have c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c215 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v12 := by
      rcases c191 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
    rcases c52 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c626 : v45 ∨ ¬v2 ∨ v3 ∨ ¬v7 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n11
    have u3 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    rcases c28 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd n3 a
    · exact absurd u3 a
  have c627 : v18 ∨ ¬v2 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v3 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v14 := by
      rcases c622 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    rcases c57 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c628 : ¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    rcases c520 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
  have c629 : ¬v11 ∨ v2 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u4 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u3 a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
  have c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
  have c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n5
    rcases c630 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
  have c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n1 a
    rcases c220 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
  have c634 : ¬v7 ∨ ¬v9 ∨ v16 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
    have u4 : ¬v17 := by
      rcases c551 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
    have u5 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u6 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact absurd u5 a
    have u7 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd u5 a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    rcases c632 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a n13
    · exact absurd a n14
  have c635 : v15 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n5 a
    rcases c422 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c636 : ¬v18 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c637 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 := by
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
    rcases c481 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c638 : v47 ∨ ¬v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v20 := by
      rcases c637 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v18 := by
      rcases c636 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v17 := by
      rcases c551 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n2
    have u10 : ¬v19 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n20
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n16
    have u12 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n19
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n14
    have u13 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
    have u14 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n15
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
    rcases c31 with a|a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd u11 a
    · exact absurd u12 a
  have c639 : v8 ∨ v6 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c637 with a|a|a|a|a|a|a|a|a|a|a
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
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n9
  have c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    rcases c521 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
  have c641 : ¬v4 ∨ v6 ∨ v7 ∨ v9 ∨ v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n20
      · exact absurd a n13
      · exact a
      · exact absurd a n10
      · exact absurd a n17
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v14 := by
      rcases c239 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n13
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
    have u6 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n19
      · exact absurd a n12
    have u10 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n18
    have u11 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact absurd n0 a
    rcases c317 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u3
  have c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c27 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v3 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c625 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c643 : v13 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v9 ∨ v16 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n19
      · exact absurd a n12
      · exact a
      · exact absurd a n9
      · exact absurd a n16
    have u2 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u2
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
  have c644 : v9 ∨ v7 ∨ v11 ∨ v16 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n23
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n18
    have u2 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n21
      · exact absurd a n3
      · exact absurd a n5
    have u3 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u4 : v13 := by
      rcases c643 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n24
      · exact absurd a n25
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v17 := by
      rcases c551 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n3
    have u8 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n19
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n24
  have c645 : v7 ∨ v18 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v28 := by
      rcases c621 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v9 := by
      rcases c638 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u10 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a u8
      · exact absurd a u4
    have u11 : v11 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n15
    have u17 : v6 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
    have u18 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u17 a
      · exact a
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a u12
    rcases c24 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u18 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n1 a
    rcases c220 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
  have c647 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v28 := by
      rcases c621 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v9 := by
      rcases c638 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u11 : v7 := by
      rcases c645 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u4
    rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c648 : v15 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v21 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n4 a
    rcases c196 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
  have c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    rcases c648 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c650 : v44 ∨ ¬v6 ∨ ¬v11 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : v22 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n7 a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u9 : v36 := by
      rcases c391 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v43 := by
      rcases c473 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd u9 a
      · exact absurd a n10
    have u14 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
    have u15 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u11
    have u16 : ¬v48 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v47 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a n15
    have u19 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n15
    have u20 : ¬v4 := by
      rcases c33 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    rcases c202 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd u14 a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n13
  have c651 : ¬v11 ∨ ¬v6 ∨ v18 ∨ v24 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : v23 := by
      rcases c650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
    have u9 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v20 := by
      rcases c637 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v19 := by
      rcases c569 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n4
    have u16 : ¬v3 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u17 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n17
    have u18 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u17 a
    rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd u17 a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c652 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n4 a
      · exact a
    rcases c228 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n1
  have c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    rcases c652 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c654 : v23 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v25 ∨ v29 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    rcases c484 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n12
  have c655 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v18 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v24 := by
      rcases c651 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u7 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u6 a
    rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c656 : ¬v4 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : v10 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd n12 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n11
    have u7 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n21
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a u6
      · exact absurd a n23
    have u9 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n20
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n22
      · exact absurd a n15
    rcases c35 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd n1 a
  have c657 : v2 ∨ ¬v4 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n7 a
      · exact a
    rcases c265 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n7 a
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  exact ⟨c608, c609, c613, c614, c615, c616, c623, c624, c625, c627, c628, c629, c630, c631, c632, c633, c634, c635, c637, c638, c639, c640, c642, c646, c647, c649, c652, c653, c654, c655, c656, c657⟩
