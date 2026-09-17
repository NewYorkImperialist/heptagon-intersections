import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 350-399 of the 2189-step refutation of ccase000: 121 core clauses and 38 earlier-derived ones give 23 more. -/
theorem CCase000_block007
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c9 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c60 : ¬v14 ∨ ¬v13)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
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
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c112 : ¬v33 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c188 : v18 ∨ v11 ∨ v17 ∨ v2 ∨ v4 ∨ v3 ∨ v9 ∨ ¬v10)
    (c189 : ¬v40 ∨ v41 ∨ v33 ∨ v46 ∨ v47 ∨ v32 ∨ v39 ∨ v48)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c191 : ¬v4 ∨ v12 ∨ v5 ∨ v46 ∨ v45 ∨ v3 ∨ v11 ∨ v47)
    (c206 : ¬v10 ∨ v18 ∨ v4 ∨ v17 ∨ v16 ∨ v11 ∨ v3 ∨ v9)
    (c210 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v47 ∨ v45 ∨ v46 ∨ v33)
    (c215 : v3 ∨ ¬v4 ∨ v45 ∨ v5 ∨ v11 ∨ v10 ∨ v46 ∨ v47)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c238 : v22 ∨ ¬v21 ∨ v27 ∨ v15 ∨ v28 ∨ v8 ∨ v14 ∨ v20)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c279 : v33 ∨ ¬v26 ∨ v19 ∨ v20 ∨ v34 ∨ v25 ∨ v18 ∨ v27)
    (c293 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v7 ∨ v44 ∨ v49)
    (c322 : ¬v34 ∨ v42 ∨ v27 ∨ v35 ∨ v41 ∨ v26 ∨ v28 ∨ v33)
    (c330 : ¬v9 ∨ v7 ∨ v2 ∨ v14 ∨ v3 ∨ v16 ∨ v15 ∨ v10 ∨ v8 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c339 : v15 ∨ v5 ∨ v3 ∨ v16 ∨ ¬v2 ∨ v1 ∨ v4 ∨ v12 ∨ v8 ∨ v9 ∨ v17 ∨ v44 ∨ v45 ∨ v47)
    (c345 : v4 ∨ ¬v3 ∨ v2 ∨ v10 ∨ v46 ∨ v45 ∨ v9 ∨ v11)
    (c358 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v49)
    (c373 : v22 ∨ v21 ∨ v1 ∨ v49 ∨ v12 ∨ ¬v7 ∨ v6 ∨ v5 ∨ v8 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v14)
    (c420 : v11 ∨ v9 ∨ ¬v10 ∨ v3 ∨ v16 ∨ v2 ∨ v4 ∨ v17)
    (c430 : v29 ∨ ¬v23 ∨ v30 ∨ v22 ∨ v24 ∨ v31 ∨ v16 ∨ v15)
    (c454 : v32 ∨ ¬v3 ∨ v31 ∨ v2 ∨ v45 ∨ v30 ∨ v4 ∨ v11 ∨ v10 ∨ v5 ∨ v38 ∨ v44 ∨ v12 ∨ v47)
    (c458 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c480 : v5 ∨ ¬v19 ∨ v27 ∨ v26 ∨ v28 ∨ v46 ∨ v11 ∨ v12 ∨ v18 ∨ v20 ∨ v21 ∨ v14 ∨ v47 ∨ v48)
    (c523 : ¬v40 ∨ v47 ∨ v41 ∨ v48 ∨ v34 ∨ v46 ∨ v39 ∨ v33)
    (c548 : v2 ∨ v10 ∨ v23 ∨ v4 ∨ v24 ∨ v3 ∨ v11 ∨ ¬v17 ∨ v15 ∨ v18 ∨ v21 ∨ v14 ∨ v16 ∨ v28)
    (c555 : v33 ∨ ¬v26 ∨ v25 ∨ v31 ∨ v40 ∨ v27 ∨ v34 ∨ v24 ∨ v19 ∨ v18 ∨ v17 ∨ v46 ∨ v47 ∨ v48)
    (c593 : v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c624 : ¬v11 ∨ v3 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c670 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c692 : v44 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c761 : v3 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c771 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c797 : v6 ∨ ¬v12 ∨ v14 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c822 : ¬v19 ∨ v12 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c867 : v26 ∨ v5 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c889 : ¬v4 ∨ ¬v2 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c890 : v6 ∨ v4 ∨ ¬v5 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c893 : v48 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c894 : ¬v27 ∨ v2 ∨ v3 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c895 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c903 : ¬v1 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c905 : v5 ∨ v6 ∨ v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c908 : v27 ∨ v2 ∨ v22 ∨ v28 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c910 : v41 ∨ v2 ∨ v27 ∨ v31 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c911 : ¬v1 ∨ v2 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49) ∧ (¬v2 ∨ v1 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v20 ∨ v18 ∨ v19 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34) ∧ (¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47) ∧ (¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27) ∧ (v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47) ∧ (v44 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42) ∧ (¬v34 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v15 ∨ v2 ∨ v3 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ v44) ∧ (v3 ∨ v2 ∨ v7 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v3 ∨ ¬v1 ∨ v2 ∨ ¬v5 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v44 ∨ ¬v5 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44) ∧ (¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44) ∧ (v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11) ∧ (v24 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45) ∧ (v3 ∨ v2 ∨ v5 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v24 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v46 ∨ v49) ∧ (v47 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v5 ∨ ¬v9 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v2 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44) := by
  have c912 : ¬v31 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n1 a
    rcases c210 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u2
  have c913 : ¬v12 ∨ ¬v1 ∨ ¬v2 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v3 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u5 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c4 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd n2 a
  have c914 : v46 ∨ ¬v1 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u7 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u8 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v2 := by
      rcases c911 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
    have u12 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a u8
    have u13 : ¬v4 := by
      rcases c889 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n14
    have u14 : ¬v6 := by
      rcases c8 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n13
  have c915 : v23 ∨ ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v4 := by
      rcases c28 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v3 := by
      rcases c25 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u4 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c808 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c916 : v48 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
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
    have u6 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
    have u7 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u16 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u14
    have u17 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v1 := by
      rcases c914 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u19 : v2 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u20 : v7 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd u6 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
    have u21 : ¬v5 := by
      rcases c915 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u19 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u22 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u12
    have u23 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : v3 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u22 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n6
    have u27 : v6 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd u20 a
      · exact absurd a u24
      · exact a
      · exact absurd a u25
      · exact absurd a n9
    rcases c26 with a|a|a|a
    · exact absurd u19 a
    · exact absurd u26 a
    · exact absurd u20 a
    · exact absurd u27 a
  have c917 : ¬v2 ∨ v1 ∨ v5 ∨ ¬v7 ∨ ¬v12 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v3 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v6 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n12
    rcases c26 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd n3 a
    · exact absurd u5 a
  have c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n9
    have u2 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u3 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u2 a
      · exact a
    rcases c555 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u2 a
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c919 : v22 ∨ v1 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v14 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v21 := by
      rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u1 a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u3
  have c920 : v5 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v22 := by
      rcases c919 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u5 a
      · exact a
    rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n17
    · exact absurd a n18
  have c921 : v4 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v5 ∨ v12 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v15 := by
      rcases c339 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v18 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u3
    rcases c63 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c922 : v20 ∨ v18 ∨ v19 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n3 a
      · exact a
    rcases c279 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n4
  have c923 : v5 ∨ v1 ∨ v23 ∨ v24 ∨ v28 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v27 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n11
    have u3 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u4 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u9 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : v7 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
    have u11 : v2 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
    have u12 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v12 := by
      rcases c917 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u10 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u17 : v6 := by
      rcases c920 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd u10 a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u10 a
      · exact absurd u17 a
    have u19 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact absurd u17 a
    have u20 : v17 := by
      rcases c921 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u21 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v26 := by
      rcases c922 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u21
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u15
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a n11
    · exact absurd a u12
  have c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c922 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n4
  have c925 : v17 ∨ ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ v22 ∨ v24 ∨ v28 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v3 := by
      rcases c3 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
  have c926 : v28 ∨ ¬v1 ∨ ¬v2 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v6 := by
      rcases c925 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
    have u2 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
    have u9 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v7 := by
      rcases c4 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    have u11 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a n21
    have u12 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u11 a
    rcases c238 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u11 a
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u12
  have c927 : v5 ∨ v23 ∨ v24 ∨ v28 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v2 := by
      rcases c910 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v1 := by
      rcases c923 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v12 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
    have u13 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n10
    have u14 : v22 := by
      rcases c926 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd u6 a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v13 := by
      rcases c867 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n10
    have u18 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a u7
    have u19 : ¬v11 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    rcases c480 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u18 a
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a n11
  have c928 : ¬v19 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    rcases c822 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c929 : v12 ∨ v5 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : v13 := by
      rcases c867 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c56 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c930 : v49 ∨ v5 ∨ v23 ∨ v24 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v27 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u2 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v2 := by
      rcases c910 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u7 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v28 := by
      rcases c927 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n0
    have u11 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u8
    have u14 : v12 := by
      rcases c929 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n10
    have u15 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v6 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
    have u18 : v3 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    rcases c818 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd u18 a
    · exact absurd a n1
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
  have c931 : ¬v3 ∨ ¬v2 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c2 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c25 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
  have c932 : v42 ∨ v23 ∨ v24 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v27 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v5 := by
      rcases c930 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
    have u9 : v2 := by
      rcases c910 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v3 := by
      rcases c931 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n10
    have u11 : ¬v4 := by
      rcases c889 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n10
    have u12 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n6
    have u13 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact absurd u9 a
    have u15 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
      · exact absurd u13 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd u3 a
    · exact absurd a u15
    · exact absurd a n5
    · exact absurd a n10
  have c933 : v37 ∨ ¬v2 ∨ ¬v5 ∨ v11 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v4 := by
      rcases c889 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n16
    have u2 : v6 := by
      rcases c890 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd n11 a
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n16
  have c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
    have u2 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c928 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c640 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c935 : v47 ∨ v23 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v27 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
    have u4 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v24 := by
      rcases c932 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v2 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v5 := by
      rcases c933 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u18 a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v6 := by
      rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
    have u22 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
    have u23 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
    have u24 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n9
    have u29 : ¬v3 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u20
      · exact absurd u21 a
      · exact absurd a u24
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u30 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd u18 a
      · exact absurd a u27
      · exact absurd a u23
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u25
    rcases c10 with a|a|a|a
    · exact absurd u30 a
    · exact absurd u18 a
    · exact absurd u28 a
    · exact absurd u21 a
  have c936 : ¬v2 ∨ v5 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u2 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u3 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u7 : v3 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    rcases c818 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd a n1
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c937 : v44 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u2 : ¬v27 := by
      rcases c916 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u3 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v31 := by
      rcases c912 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v23 := by
      rcases c935 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v2 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : v5 := by
      rcases c936 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v3 := by
      rcases c931 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
    have u21 : v11 := by
      rcases c933 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v1 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u18 a
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u23
  have c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c322 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
  have c939 : ¬v34 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v33 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n1 a
    rcases c189 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
  have c940 : ¬v6 ∨ ¬v2 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
  have c941 : v32 ∨ ¬v2 ∨ ¬v5 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n12
    have u2 : ¬v4 := by
      rcases c889 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n14
    have u3 : ¬v6 := by
      rcases c940 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n14
    have u4 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v3 := by
      rcases c931 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n14
    have u12 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
    have u13 : ¬v7 := by
      rcases c9 with a|a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u14 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n14
    have u15 : v28 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n14
    have u16 : v25 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n7
    rcases c99 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c942 : ¬v28 ∨ v2 ∨ v3 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v11 := by
      rcases c624 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
    have u7 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
    rcases c761 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n11
  have c943 : v15 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n5 a
      · exact a
    rcases c330 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c944 : v15 ∨ v2 ∨ v3 ∨ v7 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v21 ∨ v36 ∨ v37 ∨ v38 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n4 a
      · exact a
    rcases c943 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c945 : v2 ∨ v7 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u4 : v17 := by
      rcases c593 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n11
      · exact a
      · exact absurd a u2
    rcases c67 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c946 : v10 ∨ v2 ∨ v3 ∨ v7 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v24 := by
      rcases c945 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u2 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n15
    have u3 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v9 := by
      rcases c944 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u8 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n16
    have u9 : v11 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n4
    rcases c57 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c947 : v10 ∨ v2 ∨ v3 ∨ v7 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v25 := by
      rcases c946 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
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
    have u2 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
    have u6 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
    have u7 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n13
      · exact a
      · exact absurd a u4
    rcases c67 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c948 : v3 ∨ v2 ∨ v7 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v10 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
    have u2 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n14
  have c949 : v32 ∨ v2 ∨ v3 ∨ v7 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v28 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c948 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
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
    · exact absurd a n16
  have c950 : ¬v3 ∨ ¬v1 ∨ v2 ∨ ¬v5 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v4 := by
      rcases c11 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact a
    have u3 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u3 a
    rcases c345 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u4
  have c951 : v44 ∨ ¬v5 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c937 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u3 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c939 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v33 := by
      rcases c523 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u4
      · exact a
    have u9 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v2 := by
      rcases c941 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd u2 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n8
    have u16 : ¬v3 := by
      rcases c950 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v28 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v7 := by
      rcases c949 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
    have u19 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
    have u21 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v27 := by
      rcases c894 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd u21 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
    have u25 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n7
    have u26 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u7
      · exact a
      · exact absurd a u24
      · exact absurd a n2
    have u27 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u26 a
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a n4
  have c952 : ¬v23 ∨ v15 ∨ v16 ∨ v24 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    rcases c430 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
  have c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v17 := by
      rcases c593 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a u2
    rcases c67 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c954 : ¬v17 ∨ v2 ∨ v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a u3
  have c955 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c188 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    rcases c420 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n0
  have c956 : v2 ∨ v3 ∨ v5 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u4 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v4 := by
      rcases c955 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a u5
    rcases c191 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n13
  have c957 : v24 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v14 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v23 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
    rcases c952 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c958 : v3 ∨ v2 ∨ v5 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v9 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v4 := by
      rcases c215 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v28 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : v24 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n13
    have u9 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n14
      · exact a
      · exact absurd a n6
      · exact absurd a n11
    rcases c843 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u10
  have c959 : ¬v24 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v9 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u6 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u7 : v17 := by
      rcases c593 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
      · exact absurd n3 a
    have u10 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u7 a
      · exact a
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a n12
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a n9
  have c960 : v47 ∨ ¬v1 ∨ v2 ∨ ¬v3 ∨ v5 ∨ ¬v9 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v4 := by
      rcases c454 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n0
    have u8 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u10 : v28 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u11 : ¬v18 := by
      rcases c876 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u12 : ¬v25 := by
      rcases c99 with a|a
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
    have u15 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u16 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a n9
      · exact a
      · exact absurd a u13
      · exact absurd a n12
    rcases c670 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n17
  have c961 : ¬v28 ∨ v2 ∨ v9 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v17 := by
      rcases c954 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u3
    have u7 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c630 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  exact ⟨c912, c913, c917, c918, c922, c924, c928, c934, c937, c938, c939, c944, c948, c950, c951, c953, c954, c955, c957, c958, c959, c960, c961⟩
