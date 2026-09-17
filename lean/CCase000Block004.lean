import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 200-249 of the 2189-step refutation of ccase000: 116 core clauses and 41 earlier-derived ones give 22 more. -/
theorem CCase000_block004
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
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
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c118 : ¬v31 ∨ ¬v35)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c202 : v46 ∨ ¬v3 ∨ v2 ∨ v44 ∨ v4 ∨ v10 ∨ v9 ∨ v45)
    (c209 : v36 ∨ v42 ∨ v44 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v7 ∨ v49)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c245 : v11 ∨ v48 ∨ v4 ∨ v6 ∨ v47 ∨ ¬v5 ∨ v46 ∨ v12)
    (c247 : ¬v27 ∨ v21 ∨ v19 ∨ v20 ∨ v26 ∨ v28 ∨ v34 ∨ v33)
    (c278 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v9 ∨ v18 ∨ v16 ∨ v10)
    (c281 : v36 ∨ ¬v37 ∨ v45 ∨ v29 ∨ v38 ∨ v31 ∨ v30 ∨ v44)
    (c282 : v15 ∨ v29 ∨ v35 ∨ v16 ∨ v23 ∨ ¬v22 ∨ v28 ∨ v21)
    (c299 : ¬v35 ∨ v29 ∨ v42 ∨ v22 ∨ v27 ∨ v41 ∨ v28 ∨ v34)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c337 : v48 ∨ v6 ∨ ¬v5 ∨ v4 ∨ v47 ∨ v46 ∨ v12 ∨ v13)
    (c344 : ¬v15 ∨ v22 ∨ v23 ∨ v14 ∨ v9 ∨ v16 ∨ v21 ∨ v8)
    (c350 : ¬v9 ∨ v8 ∨ v17 ∨ v16 ∨ v2 ∨ v15 ∨ v1 ∨ v10)
    (c382 : v21 ∨ v6 ∨ v5 ∨ v19 ∨ v14 ∨ ¬v13 ∨ v20 ∨ v12)
    (c390 : v46 ∨ v10 ∨ v2 ∨ v4 ∨ v45 ∨ v11 ∨ v44 ∨ ¬v3)
    (c392 : v12 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v25 ∨ v20 ∨ v18 ∨ v13)
    (c400 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v23 ∨ v16 ∨ v28)
    (c401 : v15 ∨ ¬v16 ∨ v23 ∨ v9 ∨ v10 ∨ v24 ∨ v17 ∨ v8)
    (c420 : v11 ∨ v9 ∨ ¬v10 ∨ v3 ∨ v16 ∨ v2 ∨ v4 ∨ v17)
    (c428 : v36 ∨ ¬v29 ∨ v23 ∨ v22 ∨ v41 ∨ v27 ∨ v14 ∨ v15 ∨ v30 ∨ v9 ∨ v35 ∨ v8 ∨ v34 ∨ v42)
    (c439 : v15 ∨ ¬v8 ∨ v1 ∨ v14 ∨ v21 ∨ v2 ∨ v16 ∨ v9)
    (c463 : v36 ∨ ¬v43 ∨ v1 ∨ v2 ∨ v15 ∨ v6 ∨ v8 ∨ v21 ∨ v16 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c472 : v12 ∨ v18 ∨ v4 ∨ v19 ∨ v17 ∨ v5 ∨ v10 ∨ ¬v11)
    (c508 : v1 ∨ v6 ∨ v13 ∨ v8 ∨ v14 ∨ v5 ∨ v19 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c551 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v25 ∨ v18 ∨ v10 ∨ v16)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c562 : ¬v3 ∨ ¬v8 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c567 : ¬v18 ∨ ¬v10 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c627 : v18 ∨ ¬v2 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c629 : ¬v11 ∨ v2 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v44)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c634 : ¬v7 ∨ ¬v9 ∨ v16 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c637 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c638 : v47 ∨ ¬v9 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v48)
    (c639 : v8 ∨ v6 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c662 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c671 : v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c678 : v27 ∨ v6 ∨ v9 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c687 : ¬v13 ∨ ¬v18 ∨ v25 ∨ v26)
    (c688 : v24 ∨ v11 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c714 : ¬v10 ∨ v6 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c731 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c742 : ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c744 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v26)
    (c751 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c752 : v41 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c753 : ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c754 : v14 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42)
    (c757 : ¬v11 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42)
    (c758 : v7 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    : (v3 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v10 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42) ∧ (v15 ∨ v1 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31) ∧ (¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44) ∧ (¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25) ∧ (v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23) ∧ (v23 ∨ v24 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v46 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v6 ∨ ¬v12 ∨ v14 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47) ∧ (v26 ∨ ¬v3 ∨ ¬v4 ∨ v14 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v39 ∨ ¬v3 ∨ v14 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v32 ∨ v3 ∨ v14 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24) ∧ (v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45) ∧ (v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45) ∧ (v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46) ∧ (¬v5 ∨ v3 ∨ v4 ∨ ¬v10 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49) := by
  have c761 : v3 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    rcases c551 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u2
  have c762 : ¬v10 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 := by
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
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v27 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u5
    have u8 : v26 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c100 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c763 : v9 ∨ v2 ∨ v10 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c631 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c764 : v22 ∨ v28 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v35 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v27 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u4
    have u10 : ¬v10 := by
      rcases c762 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v18 := by
      rcases c752 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u8
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
    have u12 : ¬v24 := by
      rcases c95 with a|a
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
    have u15 : ¬v7 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v11 := by
      rcases c757 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v3 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n9
    have u18 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n4
    have u19 : ¬v2 := by
      rcases c758 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u20 : v9 := by
      rcases c763 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n8
    have u21 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n1
    have u26 : ¬v19 := by
      rcases c744 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
    have u27 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n5
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a u5
    have u28 : v20 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u25
      · exact absurd a u26
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
    have u29 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u17 a
      · exact absurd u18 a
    have u30 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u28 a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u19
    · exact absurd a u31
    · exact absurd a u29
    · exact absurd a u10
  have c765 : ¬v16 ∨ v10 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
    have u4 : ¬v8 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : v9 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n21
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n17
    have u10 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
    have u11 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n7
      · exact a
      · exact absurd a n19
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n15
    rcases c31 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u3 a
    · exact absurd u9 a
    · exact absurd u11 a
  have c766 : v26 ∨ ¬v9 ∨ v10 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
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
    have u5 : v16 := by
      rcases c638 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u6 : ¬v19 := by
      rcases c744 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v20 := by
      rcases c637 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    rcases c765 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n6
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
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
  have c767 : v15 ∨ v1 ∨ v5 ∨ v6 ∨ v8 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n6 a
    rcases c508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c768 : v15 ∨ v1 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n5 a
    rcases c767 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c769 : v40 ∨ v10 ∨ v11 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v35 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v28 := by
      rcases c764 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v18 := by
      rcases c752 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a u8
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
      · exact absurd a n14
    have u14 : v3 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
    have u15 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n11
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n6
    have u16 : ¬v9 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
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
    have u17 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
    have u18 : v2 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n9
    have u19 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd u18 a
      · exact absurd u14 a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u15 a
      · exact absurd u18 a
      · exact absurd u14 a
      · exact a
    have u21 : v12 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n12
    have u22 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u21 a
    rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n13
  have c770 : v49 ∨ v7 ∨ ¬v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n19
    have u6 : v2 := by
      rcases c629 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n18
    have u7 : v6 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
    have u8 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd a u2
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n20
    rcases c24 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u8 a
    · exact absurd u5 a
    · exact absurd u7 a
  have c771 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    rcases c731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c772 : v37 ∨ v22 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v18 := by
      rcases c752 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v28 := by
      rcases c764 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u11 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v7 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v11 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n3
    have u18 : v10 := by
      rcases c769 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
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
    have u19 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v6 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
    have u23 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u24 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u23
    · exact absurd a u12
  have c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a
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
    have u4 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a n2
  have c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    rcases c551 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
  have c775 : v23 ∨ ¬v4 ∨ ¬v6 ∨ v11 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    rcases c761 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n17
  have c776 : v18 ∨ v11 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n12
    have u2 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v6 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : ¬v10 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
    have u10 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
    have u11 : v3 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
    have u16 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u11 a
      · exact absurd u15 a
    have u17 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n15
      · exact a
      · exact absurd a u2
    have u18 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u17 a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u17 a
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u12
  have c777 : v49 ∨ v18 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v11 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
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
      · exact absurd a n0
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
    have u12 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
    have u13 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v19 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u7
    have u16 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a u14
      · exact absurd a u1
    have u17 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n13
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n8
    rcases c24 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd u11 a
    · exact absurd u12 a
  have c778 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v22 := by
      rcases c772 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v35 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c109 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v18 := by
      rcases c777 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
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
    have u13 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u12 a
    rcases c400 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u1 a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u4
  have c779 : v42 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v27 ∨ ¬v29 ∨ v30 ∨ v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
    have u10 : v22 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n5 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
    have u11 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v10 := by
      rcases c567 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v13 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
    have u15 : v11 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u17 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n12
    have u18 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a u5
    have u21 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n16
    rcases c34 with a|a|a|a
    · exact absurd u16 a
    · exact absurd u20 a
    · exact absurd u21 a
    · exact absurd u17 a
  have c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    rcases c344 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
  have c781 : v14 ∨ v8 ∨ v9 ∨ v23 ∨ v27 ∨ ¬v28 ∨ ¬v29 ∨ v30 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a u3
    have u5 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
    rcases c428 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n6 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n10
  have c782 : v40 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n16
    have u8 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v29 := by
      rcases c281 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n12
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n11
    have u10 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v18 := by
      rcases c779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u10
    have u16 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
    have u17 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
    have u18 : ¬v28 := by
      rcases c781 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v22 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u9 a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n10
    have u20 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u18
    have u21 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n10
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a n16
    have u23 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u18
    have u24 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n15
    have u25 : ¬v4 := by
      rcases c33 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    have u26 : ¬v19 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u1
    have u27 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    rcases c472 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a u27
    · exact absurd a u6
    · exact absurd n1 a
  have c783 : v26 ∨ v9 ∨ v11 ∨ v18 ∨ v24 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
    have u3 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n20
      · exact absurd a n21
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n19
    have u5 : v6 := by
      rcases c678 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u6 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact absurd u2 a
    have u10 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a u9
    · exact absurd u4 a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n21
  have c784 : v42 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v29 := by
      rcases c281 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n12
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n11
    have u5 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v22 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
    have u10 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v18 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u10
      · exact a
      · exact absurd a n13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n8
    have u14 : v9 := by
      rcases c783 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n15
    have u19 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n14
    have u20 : v3 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
    rcases c31 with a|a|a|a
    · exact absurd u19 a
    · exact absurd u20 a
    · exact absurd u18 a
    · exact absurd u13 a
  have c785 : v24 ∨ v23 ∨ v27 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n13
    have u3 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v29 := by
      rcases c281 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n10
    have u5 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v28 := by
      rcases c784 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd a u8
    have u15 : ¬v11 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
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
    have u16 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact a
      · exact absurd a n12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n6
    have u17 : ¬v9 := by
      rcases c638 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u18 : v6 := by
      rcases c678 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
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
    have u19 : v5 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u16 a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u16 a
      · exact absurd u19 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact absurd u16 a
    have u22 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u21
    · exact absurd u2 a
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n15
  have c786 : v23 ∨ v24 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v27 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
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
    have u4 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v29 := by
      rcases c281 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n9
    have u7 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    rcases c319 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n8
  have c787 : v36 ∨ ¬v4 ∨ ¬v14 ∨ v17 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n8
    have u4 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
    have u5 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u6 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact absurd n1 a
    have u7 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a u6
    · exact absurd n12 a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n16
  have c788 : v16 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ v9 ∨ v14 ∨ v15 ∨ v21 ∨ v36 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v8 := by
      rcases c439 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
    rcases c463 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n12 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c789 : v16 ∨ v11 ∨ v15 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
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
      · exact absurd a n22
      · exact absurd a n23
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n23
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n19
      · exact absurd a n18
      · exact absurd a n21
    have u4 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n9
      · exact a
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n14
    have u9 : ¬v14 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u8 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd u3 a
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
    have u10 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n17
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n23
    have u11 : ¬v9 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
    have u12 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u10 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u13 : ¬v3 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd u3 a
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n23
    have u14 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n19
    have u15 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u16 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd u15 a
    have u19 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u15 a
      · exact absurd u10 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n22
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd u10 a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u9
    · exact absurd a n23
  have c790 : v46 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u11 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
    have u12 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v11 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v3 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
    have u22 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a u5
    have u23 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n14
    have u24 : ¬v1 := by
      rcases c15 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u21 a
      · exact absurd u23 a
    have u25 : ¬v6 := by
      rcases c34 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u22 a
      · exact absurd u23 a
      · exact a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd a u17
    · exact absurd a u24
    · exact absurd u23 a
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a n14
  have c791 : v4 ∨ ¬v3 ∨ v18 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n17
    have u9 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v2 := by
      rcases c202 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd n1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n15
    have u11 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n18
    rcases c26 with a|a|a|a
    · exact absurd u10 a
    · exact absurd n1 a
    · exact absurd u11 a
    · exact absurd u8 a
  have c792 : ¬v7 ∨ ¬v3 ∨ ¬v10 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : v6 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u3 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n7
    rcases c34 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u2 a
  have c793 : v10 ∨ ¬v3 ∨ v4 ∨ ¬v6 ∨ ¬v7 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c26 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : v11 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd n1 a
    have u4 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n7
    rcases c55 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c794 : v4 ∨ ¬v3 ∨ v14 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v18 := by
      rcases c791 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
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
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c282 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u5
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n16
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n22
    have u9 : ¬v10 := by
      rcases c792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u10 : ¬v6 := by
      rcases c793 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n21
    have u12 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v5 := by
      rcases c382 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u13
    rcases c245 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n21
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n20
    · exact absurd u14 a
    · exact absurd a n19
    · exact absurd a u13
  have c795 : ¬v3 ∨ v4 ∨ v14 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
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
      · exact absurd a n17
    have u2 : ¬v27 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n4
      · exact a
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
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v28 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
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
    have u9 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a u7
    have u12 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n8
    have u13 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v6 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
    have u19 : v2 := by
      rcases c202 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd n0 a
      · exact a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n13
    have u20 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd n0 a
      · exact absurd u18 a
    have u21 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u19 a
      · exact absurd n0 a
      · exact a
      · exact absurd u18 a
    rcases c556 with a|a|a|a|a|a|a|a
    · exact absurd a n16
    · exact absurd a u14
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a n17
    · exact absurd a n15
  have c796 : v7 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c12 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c22 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n8
  have c797 : v6 ∨ ¬v12 ∨ v14 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v28 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u3 a
    rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n6
    have u2 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v13 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact a
    have u6 : v11 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c56 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c799 : v36 ∨ ¬v3 ∨ ¬v4 ∨ v7 ∨ v14 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v6 := by
      rcases c796 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n18
    have u2 : ¬v12 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u3 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n16
    have u4 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n15
    · exact absurd a u4
    · exact absurd n14 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n18
  have c800 : v26 ∨ ¬v3 ∨ ¬v4 ∨ v14 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v7 := by
      rcases c799 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v12 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
    rcases c798 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n15
  have c801 : v44 ∨ ¬v3 ∨ v14 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v27 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v4 := by
      rcases c800 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u9
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
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c802 : v39 ∨ ¬v3 ∨ v14 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v27 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n13
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v26 := by
      rcases c801 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u14 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n15
    have u19 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : ¬v9 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u21 : ¬v4 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u22 : v10 := by
      rcases c202 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u21
      · exact a
      · exact absurd a u20
      · exact absurd a n11
    have u23 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n0
    rcases c51 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c803 : v32 ∨ v3 ∨ v14 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v11 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
    have u8 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact a
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n12
    have u9 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n18
    have u10 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
    have u11 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd u11 a
    have u14 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd u9 a
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n18
  have c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v11 := by
      rcases c245 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n3
    have u2 : v13 := by
      rcases c337 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact a
    rcases c56 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n4 a
      · exact a
    rcases c278 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v16 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    rcases c67 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c807 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
  have c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v11 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    rcases c624 with a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
  have c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
    rcases c684 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c811 : ¬v5 ∨ v3 ∨ v4 ∨ ¬v10 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v2 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u7
    rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u11 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
  exact ⟨c761, c762, c768, c771, c773, c774, c778, c780, c786, c790, c797, c798, c800, c802, c803, c805, c806, c807, c808, c809, c810, c811⟩
