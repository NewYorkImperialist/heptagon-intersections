import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 150-199 of the 2189-step refutation of ccase000: 118 core clauses and 31 earlier-derived ones give 22 more. -/
theorem CCase000_block003
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c107 : ¬v29 ∨ ¬v33)
    (c109 : ¬v29 ∨ ¬v35)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c188 : v18 ∨ v11 ∨ v17 ∨ v2 ∨ v4 ∨ v3 ∨ v9 ∨ ¬v10)
    (c204 : v12 ∨ ¬v19 ∨ v10 ∨ v39 ∨ v27 ∨ v33 ∨ v24 ∨ v26 ∨ v18 ∨ v20 ∨ v17 ∨ v11 ∨ v40 ∨ v41)
    (c217 : v28 ∨ ¬v20 ∨ v27 ∨ v11 ∨ v21 ∨ v12 ∨ v19 ∨ v13 ∨ v18 ∨ v25 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c235 : v13 ∨ ¬v19 ∨ v26 ∨ v25 ∨ v20 ∨ v12 ∨ v18 ∨ v11)
    (c238 : v22 ∨ ¬v21 ∨ v27 ∨ v15 ∨ v28 ∨ v8 ∨ v14 ∨ v20)
    (c245 : v11 ∨ v48 ∨ v4 ∨ v6 ∨ v47 ∨ ¬v5 ∨ v46 ∨ v12)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c271 : ¬v20 ∨ v28 ∨ v14 ∨ v27 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c278 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v9 ∨ v18 ∨ v16 ∨ v10)
    (c288 : v12 ∨ ¬v19 ∨ v18 ∨ v20 ∨ v26 ∨ v11 ∨ v27 ∨ v13)
    (c299 : ¬v35 ∨ v29 ∨ v42 ∨ v22 ∨ v27 ∨ v41 ∨ v28 ∨ v34)
    (c303 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v24 ∨ v17 ∨ v11 ∨ v19)
    (c306 : v40 ∨ ¬v33 ∨ v26 ∨ v34 ∨ v39 ∨ v25 ∨ v32 ∨ v41)
    (c324 : ¬v35 ∨ v29 ∨ v13 ∨ v28 ∨ v40 ∨ v33 ∨ v8 ∨ v26 ∨ v21 ∨ v22 ∨ v34 ∨ v14 ∨ v41 ∨ v42)
    (c346 : v41 ∨ ¬v33 ∨ v27 ∨ v40 ∨ v39 ∨ v34 ∨ v26 ∨ v32)
    (c364 : v25 ∨ ¬v18 ∨ v10 ∨ v24 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c373 : v22 ∨ v21 ∨ v1 ∨ v49 ∨ v12 ∨ ¬v7 ∨ v6 ∨ v5 ∨ v8 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v14)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c401 : v15 ∨ ¬v16 ∨ v23 ∨ v9 ∨ v10 ∨ v24 ∨ v17 ∨ v8)
    (c424 : ¬v34 ∨ v42 ∨ v27 ∨ v35 ∨ v40 ∨ v41 ∨ v26 ∨ v33)
    (c443 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v40 ∨ v33 ∨ v24 ∨ v31)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c471 : v20 ∨ v5 ∨ v4 ∨ v11 ∨ v18 ∨ v13 ∨ v19 ∨ ¬v12)
    (c474 : v29 ∨ ¬v16 ∨ v27 ∨ v23 ∨ v9 ∨ v24 ∨ v15 ∨ v21 ∨ v17 ∨ v13 ∨ v8 ∨ v20 ∨ v30 ∨ v31)
    (c476 : ¬v35 ∨ v29 ∨ v20 ∨ v25 ∨ v28 ∨ v39 ∨ v22 ∨ v34 ∨ v32 ∨ v33 ∨ v15 ∨ v21 ∨ v41 ∨ v42)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c522 : ¬v35 ∨ v29 ∨ v41 ∨ v37 ∨ v22 ∨ v30 ∨ v28 ∨ v1 ∨ v23 ∨ v34 ∨ v6 ∨ v42 ∨ v7 ∨ v49)
    (c543 : v3 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v44 ∨ v10 ∨ v15 ∨ v18 ∨ v11 ∨ v8 ∨ v16 ∨ v22 ∨ v45 ∨ v46)
    (c551 : ¬v17 ∨ v23 ∨ v11 ∨ v24 ∨ v25 ∨ v18 ∨ v10 ∨ v16)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c567 : ¬v18 ∨ ¬v10 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c573 : ¬v4 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c588 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v28)
    (c608 : v21 ∨ ¬v5 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c609 : v21 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c627 : v18 ∨ ¬v2 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c629 : ¬v11 ∨ v2 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v44)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c634 : ¬v7 ∨ ¬v9 ∨ v16 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c637 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c639 : v8 ∨ v6 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c666 : v14 ∨ v7 ∨ v8 ∨ v13 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c687 : ¬v13 ∨ ¬v18 ∨ v25 ∨ v26)
    (c688 : v24 ∨ v11 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c689 : ¬v24 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c692 : v44 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c695 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c704 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c705 : v31 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c707 : v24 ∨ ¬v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c708 : ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    : (v17 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v10 ∨ v6 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25) ∧ (¬v4 ∨ ¬v3 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v18 ∨ ¬v10 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31) ∧ (v26 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41) ∧ (v18 ∨ v3 ∨ ¬v4 ∨ ¬v7 ∨ v8 ∨ v11 ∨ v13 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v9 ∨ ¬v18 ∨ v24 ∨ v25) ∧ (¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v26) ∧ (v16 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ ¬v35 ∨ v41 ∨ v42) ∧ (v14 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42) ∧ (v28 ∨ ¬v11 ∨ v13 ∨ v22 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42) ∧ (¬v11 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42) ∧ (v7 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46) := by
  have c709 : v18 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v12 := by
      rcases c708 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v17 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
    have u5 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n19
      · exact absurd a u3
      · exact absurd a n9
    have u6 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n20
    have u7 : ¬v4 := by
      rcases c22 with a|a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    rcases c471 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u1 a
  have c710 : ¬v6 ∨ v10 ∨ v13 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v32 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u2
    have u5 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v18 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
    have u13 : ¬v9 := by
      rcases c707 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u14 : v19 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u15 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v12 := by
      rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u21 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u15
      · exact absurd a u8
    have u22 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
    have u23 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v7 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd n0 a
      · exact absurd a n17
      · exact absurd a n16
    rcases c26 with a|a|a|a
    · exact absurd u21 a
    · exact absurd u22 a
    · exact absurd u24 a
    · exact absurd n0 a
  have c711 : v17 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n5 a
      · exact a
    rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n12
  have c712 : v26 ∨ ¬v6 ∨ v10 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v32 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
    have u5 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v18 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u12 : v13 := by
      rcases c710 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
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
      · exact absurd a n17
    have u13 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
    have u17 : ¬v17 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n2
    have u18 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a u16
      · exact absurd a u8
    have u19 : ¬v19 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n13
    have u21 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a n9
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a n3
  have c713 : v37 ∨ ¬v6 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v32 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u2
    have u5 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v18 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
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
    have u11 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v10 := by
      rcases c712 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
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
    have u13 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v20 := by
      rcases c637 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v7 := by
      rcases c666 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n16
    have u20 : ¬v19 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u14
    have u21 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n3
    have u22 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact absurd n1 a
    have u23 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact absurd n1 a
    have u24 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact absurd n1 a
    have u25 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n11
      · exact a
      · exact absurd a u8
    have u26 : v17 := by
      rcases c188 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd u12 a
    rcases c67 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c714 : ¬v10 ∨ v6 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
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
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    rcases c696 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c716 : v46 ∨ v26 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v32 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
    have u5 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v18 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v6 := by
      rcases c713 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n14
    have u14 : ¬v10 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
    have u15 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u8
    have u19 : ¬v17 := by
      rcases c278 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u14
    have u20 : ¬v19 := by
      rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a n8
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n2
    have u22 : ¬v4 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c245 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n14
    · exact absurd a u22
    · exact absurd a u12
    · exact absurd a n13
    · exact absurd u21 a
    · exact absurd a n0
    · exact absurd a u17
  have c717 : v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v26 := by
      rcases c716 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v32 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    rcases c443 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u5
  have c719 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    rcases c364 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
  have c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    rcases c719 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c721 : v24 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u8 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
    have u9 : ¬v15 := by
      rcases c588 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n6
    have u10 : ¬v17 := by
      rcases c551 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u7
    have u11 : v21 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u12 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u11 a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u11 a
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u12
  have c722 : ¬v6 ∨ ¬v3 ∨ ¬v12 ∨ v13 ∨ v16 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
    have u5 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n13
    have u6 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n6
    rcases c26 with a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd n0 a
  have c723 : v23 ∨ v10 ∨ v13 ∨ ¬v18 ∨ v22 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
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
      · exact absurd a n20
      · exact absurd a n21
    have u7 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n20
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n15
    have u8 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n18
    have u9 : ¬v12 := by
      rcases c722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
    have u10 : v7 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n21
      · exact absurd a n19
    have u11 : v11 := by
      rcases c719 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v2 := by
      rcases c26 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact absurd u7 a
    have u13 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u11 a
      · exact a
    rcases c631 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n17
  have c724 : ¬v6 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
    rcases c24 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c725 : v28 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v12 ∨ v13 ∨ v18 ∨ v22 ∨ v25 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v6 := by
      rcases c724 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a n12
    have u3 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v11 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v14 := by
      rcases c271 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
    rcases c57 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c726 : v22 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v33 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v13 := by
      rcases c721 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
    have u7 : ¬v18 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v2 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n16
    have u10 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n17
    have u11 : ¬v7 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u9 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u12 : v12 := by
      rcases c725 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u9 a
      · exact absurd u10 a
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u13 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u12 a
    rcases c666 with a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n15
    · exact absurd a n21
  have c727 : v27 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v33 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v9 := by
      rcases c726 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n20
    have u9 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u10 : v16 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd u4 a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
    have u11 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a n17
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n11
    have u12 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n19
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n13
    have u15 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n16
    rcases c33 with a|a|a|a
    · exact absurd u15 a
    · exact absurd u11 a
    · exact absurd u8 a
    · exact absurd u14 a
  have c728 : ¬v4 ∨ ¬v3 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n5
  have c729 : ¬v18 ∨ ¬v10 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    rcases c567 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c730 : v15 ∨ v8 ∨ v9 ∨ v13 ∨ ¬v16 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n4 a
      · exact a
    rcases c474 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
  have c731 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    rcases c730 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c732 : v37 ∨ ¬v26 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : v33 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u8 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v10 := by
      rcases c727 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
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
    have u13 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v18 := by
      rcases c729 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u5
    have u19 : v7 := by
      rcases c666 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n14
    have u20 : ¬v16 := by
      rcases c731 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u21 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u19 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a u20
    · exact absurd a u6
  have c733 : v26 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c346 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n6
  have c734 : v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v33 := by
      rcases c717 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v26 := by
      rcases c733 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c732 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u3 a
    · exact absurd a n0
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
  have c735 : v18 ∨ v3 ∨ ¬v4 ∨ ¬v7 ∨ v8 ∨ v11 ∨ v13 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd u1 a
    have u3 : ¬v6 := by
      rcases c35 with a|a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v14 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a n15
    have u6 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c736 : v8 ∨ ¬v7 ∨ v13 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u2 : ¬v11 := by
      rcases c629 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u3 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n13
    have u4 : v3 := by
      rcases c735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v1 := by
      rcases c13 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd u4 a
    have u6 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c632 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd n1 a
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v14 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n19
    have u9 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n14
      · exact a
      · exact absurd a n5
    have u10 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u9 a
      · exact a
    rcases c401 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u9 a
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a n0
  have c737 : ¬v7 ∨ ¬v2 ∨ ¬v3 ∨ v8 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c26 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v5 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : v14 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n11
    have u5 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n7
    rcases c59 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c738 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    rcases c720 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
  have c739 : v24 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v18 := by
      rcases c736 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c738 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
    have u6 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n5
    have u7 : ¬v3 := by
      rcases c737 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
    have u9 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u8 a
    rcases c303 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u1 a
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u2
  have c741 : v8 ∨ ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v13 := by
      rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c687 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a n15
    · exact absurd a u5
    · exact absurd a n3
  have c742 : ¬v7 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v8 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
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
    have u2 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u7 : ¬v2 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c631 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n14
  have c743 : ¬v4 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v19 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
    have u2 : v21 := by
      rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
    rcases c80 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c744 : ¬v19 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
  have c745 : v25 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v8 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28⟩ := hc
    have u1 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n26
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n21
    have u2 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v13 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
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
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
    have u4 : v14 := by
      rcases c666 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n23
      · exact absurd a n28
    have u5 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v19 := by
      rcases c744 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n22
    · exact absurd a u6
    · exact absurd a n12
    · exact absurd a n27
    · exact absurd a n17
  have c746 : v8 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v11 := by
      rcases c745 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
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
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u2 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n12
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n22
    · exact absurd a n12
    · exact absurd a n17
    · exact absurd a u4
    · exact absurd a n27
  have c747 : v16 ∨ ¬v2 ∨ ¬v3 ∨ v7 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v8 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u2 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c744 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n9
      · exact a
      · exact absurd a n24
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n19
    have u7 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n25
      · exact absurd a n15
    rcases c21 with a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u7 a
  have c748 : v40 ∨ v7 ∨ v10 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n23
    have u2 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v2 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n19
    have u5 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
    rcases c747 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a u2
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
    · exact absurd a n0
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n23
  have c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
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
    have u4 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n6
  have c750 : v35 ∨ v28 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v34 := by
      rcases c734 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v27 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n5
      · exact a
    have u7 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v7 := by
      rcases c742 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u2
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
    have u13 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n13
    have u14 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n13
    have u15 : v18 := by
      rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u2
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
      · exact absurd a n13
    have u16 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v11 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n13
    rcases c57 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c751 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c750 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v34 := by
      rcases c734 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u5 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd u4 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u5
  have c752 : v41 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
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
    have u7 : v35 := by
      rcases c751 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u8 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v24 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v23 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u6
    have u16 : ¬v9 := by
      rcases c738 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a n3
    have u17 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u15
    have u18 : v28 := by
      rcases c476 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n8
    have u19 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v11 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v10 := by
      rcases c729 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v13 := by
      rcases c687 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u20
    have u24 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n10
    have u26 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n13
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a n0
    have u27 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n12
      · exact absurd a u11
    rcases c24 with a|a|a|a
    · exact absurd u17 a
    · exact absurd u27 a
    · exact absurd u25 a
    · exact absurd u26 a
  have c753 : ¬v25 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n1 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
  have c754 : v14 ∨ v8 ∨ v13 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
    rcases c324 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c755 : v28 ∨ ¬v11 ∨ v13 ∨ v22 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : v27 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
    have u7 : v26 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c100 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c756 : v7 ∨ ¬v2 ∨ ¬v3 ∨ v11 ∨ v18 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v27 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u3
    have u7 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n9
    have u8 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v6 := by
      rcases c22 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u7 a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n15
  have c757 : ¬v11 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    rcases c755 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c758 : v7 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v3 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v25 := by
      rcases c753 with a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v27 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u3
    have u8 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
    have u9 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v5 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd u8 a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n14
  have c759 : v15 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n5 a
    rcases c543 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n5 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
  have c760 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    rcases c759 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    · exact absurd a n11
  exact ⟨c711, c714, c715, c720, c728, c729, c731, c733, c735, c738, c742, c744, c747, c749, c751, c752, c753, c754, c755, c757, c758, c760⟩
