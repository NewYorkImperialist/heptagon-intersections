import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 100-149 of the 2189-step refutation of ccase000: 106 core clauses and 26 earlier-derived ones give 24 more. -/
theorem CCase000_block002
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
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
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c74 : ¬v17 ∨ ¬v20)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c81 : ¬v20 ∨ ¬v21)
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
    (c97 : ¬v26 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c110 : ¬v30 ∨ ¬v31)
    (c126 : ¬v37 ∨ ¬v36)
    (c148 : ¬v44 ∨ ¬v43)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c182 : v29 ∨ ¬v30 ∨ v16 ∨ v37 ∨ v38 ∨ v23 ∨ v33 ∨ v22 ∨ v26 ∨ v17 ∨ v31 ∨ v40 ∨ v32 ∨ v15)
    (c184 : ¬v31 ∨ v45 ∨ v24 ∨ v28 ∨ v44 ∨ v35 ∨ v30 ∨ v38 ∨ v32 ∨ v29 ∨ v42 ∨ v39 ∨ v23 ∨ v46)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c194 : ¬v31 ∨ v37 ∨ v24 ∨ v38 ∨ v32 ∨ v39 ∨ v25 ∨ v30)
    (c209 : v36 ∨ v42 ∨ v44 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v7 ∨ v49)
    (c217 : v28 ∨ ¬v20 ∨ v27 ∨ v11 ∨ v21 ∨ v12 ∨ v19 ∨ v13 ∨ v18 ∨ v25 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c230 : ¬v28 ∨ v14 ∨ v1 ∨ v33 ∨ v6 ∨ v22 ∨ v7 ∨ v21 ∨ v19 ∨ v26 ∨ v27 ∨ v15 ∨ v34 ∨ v35)
    (c231 : v6 ∨ ¬v20 ∨ v27 ∨ v47 ∨ v26 ∨ v13 ∨ v18 ∨ v14 ∨ v21 ∨ v25 ∨ v19 ∨ v11 ∨ v48 ∨ v49)
    (c238 : v22 ∨ ¬v21 ∨ v27 ∨ v15 ∨ v28 ∨ v8 ∨ v14 ∨ v20)
    (c241 : v15 ∨ v7 ∨ v16 ∨ v2 ∨ v14 ∨ v9 ∨ v1 ∨ ¬v8)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c269 : v15 ∨ v27 ∨ v1 ∨ v33 ∨ v6 ∨ v14 ∨ v8 ∨ v12 ∨ ¬v13 ∨ v7 ∨ v20 ∨ v19 ∨ v34 ∨ v35)
    (c274 : v14 ∨ v7 ∨ v6 ∨ v19 ∨ v21 ∨ v20 ∨ v12 ∨ ¬v13)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c289 : ¬v17 ∨ v24 ∨ v25 ∨ v9 ∨ v10 ∨ v16 ∨ v11 ∨ v18)
    (c305 : v29 ∨ ¬v30 ∨ v38 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v22)
    (c365 : v10 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c378 : v26 ∨ ¬v18 ∨ v38 ∨ v25 ∨ v23 ∨ v19 ∨ v17 ∨ v9 ∨ v16 ∨ v11 ∨ v32 ∨ v10 ∨ v39 ∨ v40)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c432 : v29 ∨ ¬v28 ∨ v35 ∨ v22 ∨ v34 ∨ v15 ∨ v27 ∨ v21)
    (c453 : v10 ∨ ¬v17 ∨ v16 ∨ v23 ∨ v31 ∨ v37 ∨ v38 ∨ v24 ∨ v18 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v39)
    (c457 : v29 ∨ ¬v24 ∨ v38 ∨ v25 ∨ v17 ∨ v31 ∨ v22 ∨ v23 ∨ v15 ∨ v32 ∨ v16 ∨ v44 ∨ v45 ∨ v46)
    (c488 : v15 ∨ v9 ∨ v1 ∨ ¬v8 ∨ v7 ∨ v21 ∨ v14 ∨ v2)
    (c498 : v43 ∨ ¬v28 ∨ v42 ∨ v23 ∨ v35 ∨ v48 ∨ v34 ∨ v21 ∨ v27 ∨ v16 ∨ v22 ∨ v15 ∨ v30 ∨ v49)
    (c507 : v3 ∨ ¬v17 ∨ v25 ∨ v10 ∨ v26 ∨ v24 ∨ v9 ∨ v19 ∨ v12 ∨ v18 ∨ v16 ∨ v44 ∨ v45 ∨ v46)
    (c540 : ¬v20 ∨ v27 ∨ v14 ∨ v26 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c546 : v10 ∨ ¬v18 ∨ v25 ∨ v24 ∨ v19 ∨ v26 ∨ v11 ∨ v17)
    (c567 : ¬v18 ∨ ¬v10 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c571 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c598 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c599 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c605 : v16 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c637 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c639 : v8 ∨ v6 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c647 : v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c654 : v23 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v25 ∨ v29 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c655 : v31 ∨ ¬v6 ∨ ¬v11 ∨ v18 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c656 : ¬v4 ∨ ¬v6 ∨ v8 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c657 : v2 ∨ ¬v4 ∨ ¬v5 ∨ ¬v6 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44)
    : (v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v6 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v10 ∨ v3 ∨ v9 ∨ v12 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46) ∧ (v14 ∨ v7 ∨ v8 ∨ v13 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25) ∧ (¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v3 ∨ v6 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v6 ∨ v9 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39) ∧ (¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33) ∧ (¬v13 ∨ ¬v18 ∨ v25 ∨ v26) ∧ (v24 ∨ v11 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v24 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (v44 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v25 ∨ v26) ∧ (v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v31 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ ¬v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v47) := by
  have c658 : ¬v6 ∨ v11 ∨ v18 ∨ ¬v24 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n12
    have u7 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v5 := by
      rcases c657 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u9 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n20
    have u12 : v8 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n20
    have u13 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u12 a
      · exact a
    rcases c396 with a|a|a|a|a|a|a|a
    · exact absurd a n20
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd n0 a
    · exact absurd a n19
    · exact absurd a n18
  have c659 : v3 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c660 : v8 ∨ ¬v5 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n18
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n15
    have u2 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
    have u3 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v10 := by
      rcases c659 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u5 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n13
      · exact a
      · exact absurd a n19
    rcases c649 with a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
  have c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n7
  have c662 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v12 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u2 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c396 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a n13
    · exact absurd a n12
  have c663 : v11 ∨ ¬v6 ∨ v9 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n21
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n16
    have u2 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u3 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : v8 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
    have u5 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n15
    · exact absurd a n20
  have c664 : v11 ∨ ¬v6 ∨ v18 ∨ v23 ∨ v24 ∨ v27 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v22 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd a n19
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n14
    have u7 : v9 := by
      rcases c663 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u5
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u8 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u9 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u6 a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u5
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a n17
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a u13
    · exact absurd a n22
  have c665 : v10 ∨ v3 ∨ v9 ∨ v12 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n4 a
    rcases c507 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c666 : v14 ∨ v7 ∨ v8 ∨ v13 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
    rcases c613 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c667 : v11 ∨ v3 ∨ v9 ∨ ¬v14 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c668 : v27 ∨ ¬v6 ∨ v18 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v11 := by
      rcases c655 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v24 := by
      rcases c658 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
      · exact absurd a n19
    have u4 : v23 := by
      rcases c664 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd u2 a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u6
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n10
    have u10 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u11 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u13 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd u9 a
    have u15 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n19
    have u16 : ¬v14 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n7
      · exact a
      · exact absurd a n19
    have u18 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : v8 := by
      rcases c238 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd a u19
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u13
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd u21 a
  have c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    rcases c289 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
  have c670 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    rcases c231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n12
  have c671 : v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u5 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c673 : v21 ∨ v1 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v19 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n9 a
    rcases c230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a n12
  have c674 : v14 ∨ v1 ∨ v6 ∨ v7 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v28 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n11
      · exact a
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
    rcases c673 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd u3 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v20 := by
      rcases c674 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n17
    have u3 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n13
    have u4 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v21 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u3 a
    have u6 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u5 a
    rcases c269 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n12
  have c676 : v6 ∨ ¬v3 ∨ ¬v4 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u3 : ¬v10 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u6 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd n2 a
    have u7 : v14 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n5
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
    have u8 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n13
    have u11 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v28 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v29 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u12
    have u20 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v43 := by
      rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n14
      · exact absurd a u18
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n17
    have u22 : ¬v44 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v36 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd u21 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n17
    have u24 : v37 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u22
    rcases c126 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c677 : ¬v4 ∨ ¬v3 ∨ v6 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
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
    have u2 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n12
    have u5 : v19 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c79 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c678 : v27 ∨ v6 ∨ v9 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n19
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
    have u2 : ¬v10 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : ¬v3 := by
      rcases c677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n18
  have c679 : v9 ∨ v6 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v11 := by
      rcases c678 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n21
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n15
    have u6 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u5 a
      · exact a
    rcases c540 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u2
  have c680 : v31 ∨ v9 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v6 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
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
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v26 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u5 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u4 a
    rcases c305 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u5
  have c681 : v23 ∨ v9 ∨ ¬v11 ∨ v22 ∨ v25 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n5 a
      · exact a
    rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c682 : v27 ∨ v9 ∨ v18 ∨ v25 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v6 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
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
      · exact absurd a n20
    have u2 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n20
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v24 := by
      rcases c680 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
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
    have u5 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v11 := by
      rcases c681 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v10 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : v8 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n19
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n13
    have u15 : v19 := by
      rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c640 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n0
  have c683 : v27 ∨ v18 ∨ v25 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v6 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
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
    have u2 : v9 := by
      rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n12
    have u7 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v26 := by
      rcases c540 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
    rcases c607 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd u9 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    rcases c598 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c685 : v18 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c683 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
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
  have c686 : ¬v25 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd n1 a
      · exact a
    rcases c305 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
  have c687 : ¬v13 ∨ ¬v18 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    rcases c365 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
  have c688 : v24 ∨ v11 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v10 := by
      rcases c567 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c546 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u3
  have c689 : ¬v24 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    rcases c457 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c690 : v35 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u2 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v18 := by
      rcases c685 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u11 : ¬v25 := by
      rcases c686 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v26 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v13 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u12
    have u14 : ¬v24 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n10
    have u16 : v11 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v10 := by
      rcases c567 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n13
    have u21 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n15
      · exact absurd a n4
    have u22 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n17
    rcases c34 with a|a|a|a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd u15 a
  have c691 : v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u2 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v30 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u11 a
      · exact a
    rcases c182 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u11 a
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u10
  have c692 : v44 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : v7 := by
      rcases c666 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
    have u7 : v6 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u8 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
    have u10 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u11 : ¬v1 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact absurd u7 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a u4
  have c693 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n5 a
      · exact a
    rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n5 a
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n12
  have c694 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v18 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n4 a
    rcases c693 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c695 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n0 a
      · exact a
    rcases c571 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c697 : v28 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v18 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n22
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n17
    have u3 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u4 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd u3 a
    have u5 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd n1 a
    have u7 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n18
      · exact a
      · exact absurd a n8
    have u8 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v8 := by
      rcases c653 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v14 := by
      rcases c599 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u8
    rcases c488 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd u10 a
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u4
  have c698 : v18 ∨ ¬v4 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v13 := by
      rcases c697 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
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
    have u2 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n20
    have u6 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a u4
      · exact absurd a n6
    have u7 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd n1 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a u2
  have c699 : v34 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v18 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n20
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n15
    rcases c698 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u2 a
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
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n23
  have c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
    rcases c35 with a|a|a|a
    · exact absurd u2 a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c701 : v35 ∨ v9 ∨ v25 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v31 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u2 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v24 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u2
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v10 := by
      rcases c699 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
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
      · exact absurd a n17
    have u11 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v20 := by
      rcases c637 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v7 := by
      rcases c666 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n17
    have u17 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v6 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
    have u19 : v18 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact absurd a u9
      · exact absurd a u13
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n4
    have u24 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u23 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u24
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u22
    · exact absurd a u8
  have c702 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    rcases c365 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
  have c703 : v33 ∨ v25 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v31 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v24 := by
      rcases c194 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u2
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u10 : v9 := by
      rcases c701 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n16
    have u15 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u16 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n9
    have u17 : v18 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u17 a
    rcases c702 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a n1
    · exact absurd a u7
  have c704 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v31 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c703 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    rcases c184 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n12
  have c705 : v31 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    rcases c605 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
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
  have c706 : ¬v17 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    rcases c453 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n12
  have c707 : v24 ∨ ¬v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
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
    have u6 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a n22
    have u7 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v6 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
    have u9 : ¬v19 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u1
    have u10 : ¬v17 := by
      rcases c706 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n20
      · exact absurd a n10
    have u12 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
    rcases c34 with a|a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c708 : ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n20
      · exact absurd a n13
    have u2 : ¬v17 := by
      rcases c706 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v2 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
    have u4 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n19
    rcases c24 with a|a|a|a
    · exact absurd u3 a
    · exact absurd u1 a
    · exact absurd u4 a
    · exact absurd n0 a
  exact ⟨c661, c662, c665, c666, c669, c670, c671, c675, c677, c678, c681, c684, c687, c688, c689, c692, c695, c696, c700, c702, c704, c705, c707, c708⟩
