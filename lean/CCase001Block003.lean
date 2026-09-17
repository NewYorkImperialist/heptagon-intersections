import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 150-199 of the 2915-step refutation of ccase001: 128 core clauses and 30 earlier-derived ones give 18 more. -/
theorem CCase001_block003
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c47 : ¬v8 ∨ ¬v14 ∨ ¬v10)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c97 : ¬v18 ∨ ¬v21)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c100 : ¬v20 ∨ ¬v21)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c208 : v22 ∨ ¬v21 ∨ v20 ∨ v28 ∨ v13 ∨ v14 ∨ v15 ∨ v8)
    (c210 : v4 ∨ v9 ∨ v17 ∨ v3 ∨ ¬v10 ∨ v18 ∨ v2 ∨ v11)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c214 : ¬v31 ∨ v38 ∨ v37 ∨ v25 ∨ v39 ∨ v32 ∨ v24 ∨ v30)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c242 : ¬v20 ∨ v27 ∨ v13 ∨ v12 ∨ v28 ∨ v11 ∨ v34 ∨ v40 ∨ v19 ∨ v21 ∨ v25 ∨ v18 ∨ v41 ∨ v42)
    (c252 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v6 ∨ v7 ∨ ¬v13)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c288 : v8 ∨ v9 ∨ v45 ∨ v3 ∨ v44 ∨ v1 ∨ ¬v2 ∨ v10)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c300 : v24 ∨ ¬v17 ∨ v23 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c312 : ¬v19 ∨ v26 ∨ v13 ∨ v11 ∨ v12 ∨ v27 ∨ v18 ∨ v20)
    (c332 : v11 ∨ v4 ∨ v45 ∨ v1 ∨ v14 ∨ v2 ∨ v10 ∨ v7 ∨ ¬v3 ∨ v18 ∨ v17 ∨ v44 ∨ v16 ∨ v49)
    (c338 : ¬v33 ∨ v40 ∨ v39 ∨ v26 ∨ v34 ∨ v25 ∨ v32 ∨ v41)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c385 : ¬v33 ∨ v40 ∨ v41 ∨ v39 ∨ v26 ∨ v27 ∨ v34 ∨ v32)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c412 : ¬v16 ∨ v22 ∨ v24 ∨ v23 ∨ v15 ∨ v10 ∨ v17 ∨ v9)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c474 : v11 ∨ v4 ∨ v18 ∨ v13 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v6)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c490 : ¬v32 ∨ v39 ∨ v40 ∨ v38 ∨ v24 ∨ v25 ∨ v31 ∨ v33)
    (c491 : ¬v32 ∨ v39 ∨ v40 ∨ v31 ∨ v38 ∨ v26 ∨ v25 ∨ v33)
    (c502 : v24 ∨ ¬v17 ∨ v23 ∨ v12 ∨ v11 ∨ v10 ∨ v26 ∨ v16 ∨ v19 ∨ v18 ∨ v31 ∨ v37 ∨ v38 ∨ v39)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c558 : ¬v20 ∨ v27 ∨ v12 ∨ v26 ∨ v28 ∨ v21 ∨ v13 ∨ v19)
    (c576 : ¬v16 ∨ v22 ∨ v24 ∨ v9 ∨ v8 ∨ v17 ∨ v23 ∨ v15)
    (c592 : v11 ∨ v19 ∨ v16 ∨ v45 ∨ v24 ∨ v25 ∨ v4 ∨ v12 ∨ ¬v18 ∨ v17 ∨ v9 ∨ v23 ∨ v46 ∨ v47)
    (c597 : v22 ∨ ¬v15 ∨ v23 ∨ v21 ∨ v16 ∨ v14 ∨ v28 ∨ v8)
    (c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c616 : ¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c634 : v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c650 : v23 ∨ v5 ∨ v10 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c654 : ¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c656 : ¬v11 ∨ ¬v2 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c668 : ¬v2 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c672 : v21 ∨ ¬v2 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c676 : ¬v9 ∨ ¬v4 ∨ ¬v5 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c679 : v2 ∨ ¬v3 ∨ v10 ∨ ¬v12 ∨ v16 ∨ v17 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c690 : v27 ∨ ¬v3 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48)
    (c692 : v47 ∨ ¬v10 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v44 ∨ v48 ∨ v49)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c694 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v19 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c709 : v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c718 : ¬v13 ∨ ¬v9 ∨ v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c740 : v25 ∨ ¬v10 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c743 : v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c746 : ¬v25 ∨ ¬v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c752 : v33 ∨ v10 ∨ ¬v11 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c754 : v45 ∨ v10 ∨ v11 ∨ v13 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c756 : ¬v13 ∨ v10 ∨ v11 ∨ ¬v20 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c759 : v11 ∨ v10 ∨ v12 ∨ ¬v13 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c761 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    : (v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40) ∧ (v21 ∨ ¬v10 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v10 ∨ v12 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24) ∧ (v37 ∨ ¬v10 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v10 ∨ v2 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (v27 ∨ v10 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v11 ∨ ¬v12 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49) ∧ (v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v20 ∨ ¬v2 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v38 ∨ ¬v20 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v12 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v5 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47) ∧ (v9 ∨ ¬v10 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c762 : v11 ∨ v10 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v20 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v12 := by
      rcases c759 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u5 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n5
    have u6 : ¬v18 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n18
    have u8 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n21
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n16
    rcases c22 with a|a|a
    · exact absurd u8 a
    · exact absurd u5 a
    · exact absurd u7 a
  have c763 : ¬v13 ∨ v10 ∨ v11 ∨ v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v20 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v16 := by
      rcases c762 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u6 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a n21
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n16
    have u7 : ¬v9 := by
      rcases c718 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u8 : v8 := by
      rcases c745 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v12 := by
      rcases c51 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v14 := by
      rcases c53 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u11 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a n22
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n17
    have u12 : v7 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u5
    rcases c33 with a|a|a
    · exact absurd u11 a
    · exact absurd u6 a
    · exact absurd u12 a
  have c764 : v47 ∨ v10 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v31 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a u2
    have u5 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v11 := by
      rcases c752 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
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
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v13 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
    have u12 : ¬v20 := by
      rcases c756 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n16
    have u13 : v21 := by
      rcases c763 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n16
    have u14 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n8
    have u20 : v5 := by
      rcases c650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
    have u21 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
    have u23 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u15
      · exact absurd a u8
    have u24 : v8 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u23 a
      · exact absurd a u15
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u22
    rcases c42 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u11 a
  have c765 : ¬v10 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n1 a
      · exact a
    rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
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
  have c766 : v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v31 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c130 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c746 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v24 := by
      rcases c214 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u2
    have u5 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v10 := by
      rcases c764 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
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
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v19 := by
      rcases c740 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u10 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v16 := by
      rcases c765 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
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
    have u13 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd u10 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n7
    have u15 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u8
    have u17 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u10 a
    have u18 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u10 a
    have u20 : ¬v20 := by
      rcases c694 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
    have u22 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n2
    have u23 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n9
    rcases c35 with a|a|a
    · exact absurd u14 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c767 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
    have u2 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    rcases c491 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
  have c768 : v21 ∨ ¬v10 ∨ v16 ∨ v19 ∨ v20 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n19
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n14
    have u3 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n5
    have u5 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u7 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n11
    have u8 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n21
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n16
    rcases c35 with a|a|a
    · exact absurd u2 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c769 : ¬v9 ∨ ¬v10 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c312 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n5
  have c770 : ¬v10 ∨ v12 ∨ v16 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v9 := by
      rcases c769 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n2
      · exact absurd a n7
    have u4 : ¬v11 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u5 : v13 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n9
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
    have u6 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n25
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n19
    have u8 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v4 := by
      rcases c22 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u7 a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a u4
  have c771 : v34 ∨ ¬v10 ∨ v16 ∨ v20 ∨ v21 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v19 := by
      rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u11 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v12 := by
      rcases c770 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u14 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u16 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v4 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n18
    have u18 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n0
    have u19 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u6
    have u20 : v3 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd n1 a
      · exact absurd a u16
    rcases c18 with a|a|a
    · exact absurd u18 a
    · exact absurd u20 a
    · exact absurd u19 a
  have c772 : ¬v12 ∨ ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    rcases c576 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u3
  have c773 : v9 ∨ v4 ∨ ¬v5 ∨ ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v12 := by
      rcases c772 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v8 := by
      rcases c576 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u1
    have u6 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u5 a
      · exact absurd n3 a
      · exact a
    have u8 : v3 := by
      rcases c210 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u9 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
    rcases c29 with a|a|a
    · exact absurd n2 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c774 : v35 ∨ ¬v10 ∨ v20 ∨ v21 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u11 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v12 := by
      rcases c772 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n9
    have u15 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u16 : v9 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n1 a
    have u19 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n5
    have u20 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n11
    rcases c35 with a|a|a
    · exact absurd u14 a
    · exact absurd u19 a
    · exact absurd u20 a
  have c775 : ¬v10 ∨ v20 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v21 := by
      rcases c774 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n1
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
    have u11 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd n0 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n8
    have u16 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u17 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a u6
    have u18 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n0 a
    have u19 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd n0 a
    have u20 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n0 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u20
  have c776 : v37 ∨ ¬v10 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
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
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v20 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
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
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v12 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n7
    have u15 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v13 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact a
      · exact absurd a u12
    have u17 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u6
    rcases c56 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd n1 a
  have c777 : ¬v2 ∨ v10 ∨ v12 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
    rcases c17 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd n2 a
    have u6 : v11 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u7 : v8 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a n4
    rcases c49 with a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c779 : v48 ∨ v9 ∨ v12 ∨ v16 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v10 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n17
    have u2 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n17
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a u7
    have u12 : ¬v20 := by
      rcases c777 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n16
    have u13 : ¬v5 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
    have u14 : v19 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a n4
      · exact a
      · exact absurd a n10
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v11 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a n10
    rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u18 a
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a n0
    · exact absurd a n17
  have c780 : v27 ∨ ¬v9 ∨ v10 ∨ v12 ∨ v16 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v11 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n15
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n9
    have u7 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u9 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n19
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n11
    have u10 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n17
    rcases c31 with a|a|a
    · exact absurd u6 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c781 : v20 ∨ ¬v5 ∨ ¬v9 ∨ ¬v11 ∨ v16 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u2 : v21 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n0
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
    have u3 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u4 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u2 a
    rcases c208 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u1
  have c782 : ¬v17 ∨ v10 ∨ v11 ∨ v12 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v31 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    rcases c502 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c783 : v12 ∨ v2 ∨ ¬v5 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : ¬v11 := by
      rcases c781 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n26
      · exact absurd a n27
    have u2 : ¬v17 := by
      rcases c782 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v4 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n26
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n19
      · exact absurd a n24
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n15
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a n23
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n24
    · exact absurd a n25
    · exact absurd a n1
  have c784 : v44 ∨ v2 ∨ v12 ∨ v16 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v9 := by
      rcases c779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
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
      · exact absurd a n17
    have u2 : ¬v10 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
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
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v19 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u14 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n10
    have u15 : v20 := by
      rcases c783 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u16 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v13 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u16
      · exact a
      · exact absurd a u13
    have u20 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u4
    have u21 : ¬v11 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n15
    have u22 : ¬v4 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u23 : ¬v14 := by
      rcases c63 with a|a|a
      · exact absurd u1 a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v1 := by
      rcases c7 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u14 a
    have u25 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u14 a
      · exact absurd u20 a
      · exact a
    rcases c332 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n13
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd u20 a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n17
  have c785 : v35 ∨ v12 ∨ v16 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v10 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u2 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v2 := by
      rcases c784 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
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
    have u10 : v9 := by
      rcases c779 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n14
      · exact absurd a n16
    have u11 : ¬v20 := by
      rcases c777 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
    have u12 : ¬v19 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n8
    have u14 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u13 a
      · exact absurd u9 a
      · exact a
    have u17 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n12
      · exact a
      · exact absurd a u6
      · exact absurd a u3
    have u18 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n15
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n4
    have u19 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v14 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a u16
    rcases c63 with a|a|a
    · exact absurd u10 a
    · exact absurd u18 a
    · exact absurd u20 a
  have c786 : v46 ∨ v12 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v10 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
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
    have u2 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v16 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
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
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v9 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u14
      · exact a
    have u18 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n8
    have u19 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u3
    have u20 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u22 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n10
    have u23 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n14
      · exact a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n9
      · exact absurd a n3
    rcases c63 with a|a|a
    · exact absurd u17 a
    · exact absurd u23 a
    · exact absurd u22 a
  have c787 : v10 ∨ ¬v12 ∨ ¬v16 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
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
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u6 : v9 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u3
      · exact a
    have u7 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
    have u8 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v2 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n23
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a n18
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a u9
  have c788 : v10 ∨ v2 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
    have u6 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v15 := by
      rcases c597 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u3
    have u8 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n14
    have u9 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u8 a
    have u10 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n0
  have c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    have u5 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n10
  have c790 : ¬v2 ∨ v9 ∨ v10 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v3 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n20
      · exact a
      · exact absurd a n8
      · exact absurd a n12
    have u3 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v11 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
    have u5 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u6 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v6 := by
      rcases c656 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n22
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n17
    · exact absurd a n13
  have c791 : v22 ∨ v10 ∨ ¬v12 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v16 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n13
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
    have u2 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n23
      · exact absurd a n24
    have u3 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n23
      · exact absurd a n24
    have u4 : v21 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u5 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n10
    have u9 : ¬v11 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n23
    have u10 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u2 a
    have u11 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u8 a
    have u12 : v13 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd n2 a
    have u13 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n2 a
    have u14 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u12 a
    rcases c723 with a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c792 : v27 ∨ v10 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v20 := by
      rcases c791 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n9
    have u8 : ¬v11 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u7 a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n22
    have u9 : v2 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u10 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
    have u11 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u7 a
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
    have u14 : v13 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u10
    have u15 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n17
    rcases c73 with a|a|a
    · exact absurd n2 a
    · exact absurd u15 a
    · exact absurd u14 a
  have c793 : v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v10 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n1
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
    have u2 : v32 := by
      rcases c766 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v25 := by
      rcases c767 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v12 := by
      rcases c792 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u12
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
  have c794 : ¬v2 ∨ ¬v11 ∨ ¬v12 ∨ v17 ∨ v21 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    rcases c19 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c525 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u2
  have c796 : ¬v20 ∨ ¬v2 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v11 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
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
    have u6 : ¬v12 := by
      rcases c794 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u7 : v10 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    have u8 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u5 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u2
  have c797 : v12 ∨ ¬v9 ∨ ¬v10 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u4
  have c798 : ¬v9 ∨ v2 ∨ ¬v3 ∨ v11 ∨ v12 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v10 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n11
    have u9 : v13 := by
      rcases c242 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u8 a
    have u11 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u9 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u10
  have c799 : ¬v20 ∨ v2 ∨ ¬v9 ∨ v12 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n8
    have u6 : v11 := by
      rcases c798 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u7 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    have u8 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd n2 a
      · exact absurd u6 a
      · exact a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u2
  have c800 : v38 ∨ ¬v20 ∨ v27 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v33 := by
      rcases c793 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v26 := by
      rcases c385 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
    have u11 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v2 := by
      rcases c796 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u16 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u11
    have u17 : v12 := by
      rcases c799 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd u16 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
    have u20 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u16 a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
    have u22 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n6
    have u23 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n9
    have u24 : v3 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd u16 a
      · exact absurd a u1
    rcases c28 with a|a|a
    · exact absurd u24 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c801 : ¬v27 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n1 a
    rcases c338 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n5
  have c802 : v25 ∨ v10 ∨ ¬v12 ∨ ¬v16 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v9 := by
      rcases c412 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u3
      · exact a
    have u5 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
    have u6 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n2 a
    have u7 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n2 a
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n11
    have u9 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n13
    rcases c27 with a|a|a
    · exact absurd u9 a
    · exact absurd u5 a
    · exact absurd u8 a
  have c803 : ¬v12 ∨ v10 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v16 := by
      rcases c802 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
    have u2 : v2 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n23
      · exact absurd a n24
    have u3 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n23
      · exact absurd a n24
    have u4 : v21 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u5 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
    rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n19
    · exact absurd a n21
    · exact absurd a n23
  have c804 : ¬v12 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v10 := by
      rcases c803 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v16 := by
      rcases c772 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u4 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u7 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a n3
    have u8 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n11
    have u10 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n17
    rcases c25 with a|a|a
    · exact absurd u7 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c805 : v5 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ v18 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact a
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n4
  have c806 : v20 ∨ ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29⟩ := hc
    have u1 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
      · exact absurd a n29
    have u2 : ¬v5 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
    have u3 : v11 := by
      rcases c805 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u4 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v6 := by
      rcases c656 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a n27
      · exact absurd a n28
      · exact absurd a n29
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n28
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n22
    · exact absurd a n17
  have c807 : v3 ∨ ¬v2 ∨ v9 ∨ ¬v10 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28⟩ := hc
    have u1 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v5 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u3 : v18 := by
      rcases c806 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
    have u4 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v11 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
    have u7 : v4 := by
      rcases c592 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n24
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n25
      · exact absurd a n26
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n26
    · exact absurd a n0
    · exact absurd a n25
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n24
    · exact absurd u7 a
  have c808 : ¬v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v16 := by
      rcases c807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u2 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := by
      rcases c576 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
    have u6 : v11 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n27
    rcases c44 with a|a|a
    · exact absurd u5 a
    · exact absurd n3 a
    · exact absurd u6 a
  have c809 : v20 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u2 : ¬v2 := by
      rcases c808 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u3 : v16 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n21
      · exact a
      · exact absurd a n6
    have u4 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v8 := by
      rcases c576 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
    have u8 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u7 a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v14 := by
      rcases c47 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u10 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n13
      · exact absurd a n23
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n18
    have u11 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n26
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a n20
    have u12 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n24
      · exact absurd a n1
      · exact absurd a n23
      · exact a
      · exact absurd a u8
      · exact absurd a n22
      · exact absurd u10 a
    rcases c33 with a|a|a
    · exact absurd u12 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c810 : ¬v3 ∨ v9 ∨ ¬v10 ∨ ¬v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v8 := by
      rcases c576 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u1
    have u4 : ¬v11 := by
      rcases c44 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c46 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u6 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n13
    have u7 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n12
    rcases c27 with a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c811 : v9 ∨ ¬v10 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v12 := by
      rcases c804 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u2 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u3 : ¬v16 := by
      rcases c810 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n24
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a u3
      · exact absurd a n5
    have u5 : ¬v5 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u6 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u8 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n24
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n13
    have u9 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u10 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
    have u11 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    rcases c252 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u8 a
  exact ⟨c767, c768, c770, c772, c776, c778, c788, c789, c792, c793, c794, c795, c796, c800, c801, c804, c805, c811⟩
