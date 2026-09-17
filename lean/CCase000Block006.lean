import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 300-349 of the 2189-step refutation of ccase000: 116 core clauses and 42 earlier-derived ones give 22 more. -/
theorem CCase000_block006
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v1 ∨ ¬v3 ∨ ¬v7 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c42 : ¬v11 ∨ ¬v8)
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
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v20)
    (c72 : ¬v17 ∨ ¬v18)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
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
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c225 : v48 ∨ v13 ∨ v1 ∨ ¬v7 ∨ v8 ∨ v6 ∨ v14 ∨ v49)
    (c262 : ¬v25 ∨ v5 ∨ v3 ∨ v4 ∨ v18 ∨ v17 ∨ v11 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c293 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v7 ∨ v44 ∨ v49)
    (c300 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v46 ∨ v45 ∨ v44 ∨ v32)
    (c302 : ¬v24 ∨ v38 ∨ v18 ∨ v46 ∨ v25 ∨ v17 ∨ v31 ∨ v33 ∨ v19 ∨ v23 ∨ v26 ∨ v44 ∨ v45 ∨ v30)
    (c310 : ¬v11 ∨ v12 ∨ v5 ∨ v18 ∨ v17 ∨ v4 ∨ v3 ∨ v10)
    (c318 : ¬v18 ∨ v26 ∨ v4 ∨ v13 ∨ v25 ∨ v11 ∨ v10 ∨ v27 ∨ v17 ∨ v19 ∨ v20 ∨ v45 ∨ v46 ∨ v47)
    (c345 : v4 ∨ ¬v3 ∨ v2 ∨ v10 ∨ v46 ∨ v45 ∨ v9 ∨ v11)
    (c358 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v49)
    (c380 : v35 ∨ ¬v26 ∨ v20 ∨ v25 ∨ v27 ∨ v33 ∨ v32 ∨ v28 ∨ v19 ∨ v21 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c386 : v2 ∨ v10 ∨ v17 ∨ v3 ∨ v15 ∨ v8 ∨ ¬v9 ∨ v16)
    (c390 : v46 ∨ v10 ∨ v2 ∨ v4 ∨ v45 ∨ v11 ∨ v44 ∨ ¬v3)
    (c394 : ¬v39 ∨ v32 ∨ v38 ∨ v45 ∨ v31 ∨ v40 ∨ v46 ∨ v33)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c425 : v3 ∨ v7 ∨ v20 ∨ v47 ∨ ¬v13 ∨ v17 ∨ v11 ∨ v14 ∨ v6 ∨ v10 ∨ v12 ∨ v19 ∨ v48 ∨ v49)
    (c458 : ¬v39 ∨ v32 ∨ v38 ∨ v40 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c466 : v13 ∨ v32 ∨ v4 ∨ v17 ∨ v19 ∨ v5 ∨ v3 ∨ v11 ∨ v10 ∨ v20 ∨ v26 ∨ ¬v12 ∨ v33 ∨ v34)
    (c471 : v20 ∨ v5 ∨ v4 ∨ v11 ∨ v18 ∨ v13 ∨ v19 ∨ ¬v12)
    (c486 : v3 ∨ ¬v4 ∨ v46 ∨ v5 ∨ v10 ∨ v11 ∨ v12 ∨ v47)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c540 : ¬v20 ∨ v27 ∨ v14 ∨ v26 ∨ v21 ∨ v12 ∨ v19 ∨ v13)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c623 : ¬v17 ∨ v9 ∨ v10 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v9 ∨ v2 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c633 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c692 : v44 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c705 : v31 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c753 : ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c761 : v3 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c773 : ¬v10 ∨ v2 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v44)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c797 : v6 ∨ ¬v12 ∨ v14 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c819 : ¬v3 ∨ v4 ∨ v5 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c823 : v12 ∨ v5 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c825 : v30 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ ¬v7 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c856 : v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c858 : ¬v6 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c860 : v26 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c861 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    : (¬v27 ∨ v4 ∨ v5 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47) ∧ (v26 ∨ v5 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49) ∧ (v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49) ∧ (v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (v6 ∨ ¬v4 ∨ ¬v5 ∨ ¬v11 ∨ v26 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (v15 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v17) ∧ (¬v4 ∨ ¬v2 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v6 ∨ v4 ∨ ¬v5 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v7 ∨ v2 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (v48 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v27 ∨ v2 ∨ v3 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46) ∧ (¬v5 ∨ ¬v1 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v24 ∨ ¬v16 ∨ v23 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v1 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ v11 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v5 ∨ v6 ∨ v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45) ∧ (v27 ∨ v2 ∨ v22 ∨ v28 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ v2 ∨ v27 ∨ v31 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v1 ∨ v2 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c862 : v39 ∨ ¬v4 ∨ v5 ∨ v26 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u4
    have u6 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v11 := by
      rcases c860 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
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
    have u8 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u1
    have u11 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v25 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n11
    rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c863 : ¬v4 ∨ v5 ∨ v13 ∨ v20 ∨ v22 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n16
    have u3 : ¬v3 := by
      rcases c858 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n18
    have u4 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n0 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v7 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n17
      · exact absurd a n16
      · exact a
      · exact absurd a n2
    have u11 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v2 := by
      rcases c29 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
      · exact absurd u1 a
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n13
    · exact absurd a u11
    · exact absurd a n5
  have c864 : v39 ∨ ¬v4 ∨ v5 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u4
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v26 := by
      rcases c862 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u11 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
    have u16 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v13 := by
      rcases c863 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u14
    have u26 : v3 := by
      rcases c486 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n10
    have u27 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n12
    rcases c23 with a|a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u27 a
    · exact absurd n1 a
  have c865 : v39 ∨ ¬v4 ∨ v5 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
    have u5 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v27 := by
      rcases c864 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u10 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u14 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u7
    have u16 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u5
    have u18 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n11
    have u22 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u10
    rcases c23 with a|a|a|a
    · exact absurd u22 a
    · exact absurd u23 a
    · exact absurd u21 a
    · exact absurd n1 a
  have c866 : ¬v27 ∨ v4 ∨ v5 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n7
    have u9 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n4
    rcases c55 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c867 : v26 ∨ v5 ∨ v12 ∨ v13 ∨ v25 ∨ v27 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n6
    rcases c79 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c868 : v18 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v25 ∨ v27 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : v26 := by
      rcases c867 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u8 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
    have u13 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n4
    have u14 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a n15
    have u15 : v3 := by
      rcases c310 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u6
    have u16 : v2 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    have u17 : ¬v1 := by
      rcases c4 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
      · exact absurd u16 a
    have u18 : ¬v6 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd a n14
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd u14 a
    · exact absurd a u5
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a n15
  have c869 : v45 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u5 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u4
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v27 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v25 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n2 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c870 : v18 ∨ v5 ∨ v13 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v11 := by
      rcases c869 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u6
    have u8 : v25 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n3
    have u9 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u8 a
    have u18 : ¬v3 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
    have u20 : v17 := by
      rcases c262 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
    have u21 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v12 := by
      rcases c471 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u21
      · exact a
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a u9
  have c871 : v39 ∨ v5 ∨ v18 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v4 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u4
    have u6 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v11 := by
      rcases c869 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
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
    have u9 : v25 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
    have u10 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v13 := by
      rcases c870 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
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
    have u15 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u13
    have u19 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
    rcases c861 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c872 : v5 ∨ ¬v25 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v35 := by
      rcases c753 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v4 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u8 : v18 := by
      rcases c871 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
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
      · exact absurd a n11
    have u9 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v34 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
    have u12 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u15
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u17
    have u19 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u10
    have u20 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n5
    have u21 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v3 := by
      rcases c819 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c466 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd u19 a
    · exact absurd a u10
    · exact absurd a u11
  have c873 : v45 ∨ v5 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
    have u5 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v4 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v27 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v18 := by
      rcases c871 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v25 := by
      rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v26 := by
      rcases c380 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a u5
    have u19 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u18 a
    rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c874 : v42 ∨ v4 ∨ ¬v5 ∨ v11 ∨ v13 ∨ ¬v18 ∨ v25 ∨ v26 ∨ ¬v31 ∨ v36 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n8 a
    have u7 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u8 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n8 a
      · exact a
    have u9 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n8 a
      · exact a
    have u10 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n15
    have u11 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
    have u12 : ¬v27 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u8
    have u13 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n16
    have u14 : v10 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v7 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u16 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u14 a
      · exact a
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n17
  have c875 : v25 ∨ v4 ∨ ¬v5 ∨ v11 ∨ v26 ∨ ¬v31 ∨ v32 ∨ v36 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n13
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v13 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u2 a
      · exact a
    rcases c843 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n4
  have c876 : ¬v18 ∨ v7 ∨ v14 ∨ v34 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
  have c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n7
    have u2 : v27 := by
      rcases c649 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
    have u3 : v22 := by
      rcases c613 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
    rcases c86 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c878 : v25 ∨ v4 ∨ ¬v5 ∨ v26 ∨ ¬v31 ∨ v32 ∨ v36 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n14
    have u6 : v11 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
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
    have u10 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v7 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u12 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd u5 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    have u14 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n7
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n16
    have u15 : v28 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n16
    have u16 : ¬v2 := by
      rcases c8 with a|a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a u4
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a u18
    · exact absurd a u17
  have c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v12 := by
      rcases c797 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n7
    have u4 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u3 a
      · exact a
    rcases c540 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n2
  have c880 : v6 ∨ ¬v4 ∨ ¬v5 ∨ ¬v11 ∨ v26 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v28 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u6 : v1 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u1
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n11
    rcases c18 with a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd n2 a
  have c881 : ¬v7 ∨ ¬v4 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v2 := by
      rcases c28 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c358 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
  have c882 : v2 ∨ v6 ∨ v7 ∨ v13 ∨ v26 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n13
    · exact absurd a u4
    · exact absurd a u3
  have c883 : v15 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    rcases c386 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a n5
  have c884 : v2 ∨ v3 ∨ v6 ∨ v7 ∨ v13 ∨ v26 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v28 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
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
    have u2 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v14 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
    have u4 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u3 a
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a n14
    · exact absurd a u4
    · exact absurd a u2
  have c885 : ¬v28 ∨ v2 ∨ v9 ∨ v10 ∨ v18 ∨ v30 ∨ v37 ∨ v44 := by
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
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u3
    have u6 : ¬v17 := by
      rcases c623 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    rcases c630 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c886 : v42 ∨ v25 ∨ v26 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v5 := by
      rcases c873 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u6
    have u8 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v4 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v7 := by
      rcases c881 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n11
    have u13 : v1 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n11
    have u14 : ¬v2 := by
      rcases c5 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u2 a
      · exact absurd u11 a
    have u15 : ¬v3 := by
      rcases c11 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd u13 a
      · exact absurd u2 a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v11 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u11 a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v13 := by
      rcases c884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v28 := by
      rcases c885 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n6
    have u25 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u10
      · exact a
      · exact absurd a n11
    have u26 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd u25 a
      · exact a
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u26
    · exact absurd a n9
    · exact absurd u18 a
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u27
    · exact absurd a n10
    · exact absurd a n11
  have c887 : v2 ∨ ¬v5 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n11
      · exact a
      · exact absurd n14 a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n17
    have u2 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n6
    have u3 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v3 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
    rcases c11 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c888 : v49 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
    have u2 : v5 := by
      rcases c873 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
    have u4 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u6
    have u8 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v26 := by
      rcases c886 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u13 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
    have u17 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : v2 := by
      rcases c887 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u24 : v13 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd u23 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
    have u25 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n2
    have u28 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a n0
    rcases c28 with a|a|a|a
    · exact absurd u23 a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u2 a
  have c889 : ¬v4 ∨ ¬v2 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n6 a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n8
  have c890 : v6 ∨ v4 ∨ ¬v5 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v12 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    rcases c58 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c891 : v37 ∨ ¬v2 ∨ ¬v5 ∨ v11 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n14
    have u3 : ¬v4 := by
      rcases c889 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n16
    have u4 : v6 := by
      rcases c890 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd u2 a
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n16
  have c892 : v7 ∨ v2 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u3 : v17 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    rcases c807 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
  have c893 : v48 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
    have u2 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u5
    have u7 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v5 := by
      rcases c873 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u11 : v25 := by
      rcases c888 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u12 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v11 := by
      rcases c692 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
    have u19 : ¬v2 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u10 a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u20 : v7 := by
      rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u21 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n9
    have u22 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u10 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
      · exact absurd u10 a
    rcases c890 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd u10 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c894 : ¬v27 ∨ v2 ∨ v3 ∨ ¬v12 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
    have u8 : v31 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u9 : v30 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    rcases c110 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c895 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n1 a
    rcases c394 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
  have c896 : ¬v5 ∨ ¬v1 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v3 := by
      rcases c15 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u4 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c897 : v5 ∨ v3 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v25 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u6 : v26 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n7
    rcases c97 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c898 : ¬v7 ∨ ¬v1 ∨ v2 ∨ v11 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n14
    have u2 : ¬v5 := by
      rcases c896 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v3 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
    have u4 : v4 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd u3 a
    rcases c13 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd n0 a
    · exact absurd u3 a
  have c899 : ¬v24 ∨ ¬v16 ∨ v23 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c69 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
  have c900 : ¬v1 ∨ v2 ∨ ¬v7 ∨ v11 ∨ v23 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v24 := by
      rcases c898 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
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
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v16 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n4
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v5 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
    have u8 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n20
    rcases c20 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd n2 a
    · exact absurd u8 a
  have c901 : v31 ∨ ¬v1 ∨ v2 ∨ v11 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u2 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n10
    have u8 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v7 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n16
    have u13 : v24 := by
      rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
    have u14 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n11
      · exact a
      · exact absurd a n5
    rcases c899 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c902 : v2 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v11 := by
      rcases c901 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
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
    have u5 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n10
      · exact a
      · exact absurd a n3
    rcases c653 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
  have c903 : ¬v1 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
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
    have u5 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
    have u6 : v7 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u7 : v5 := by
      rcases c867 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    rcases c20 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c904 : v26 ∨ ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ v11 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    rcases c890 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c905 : v5 ∨ v6 ∨ v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    rcases c661 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
  have c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    rcases c669 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
  have c907 : v26 ∨ ¬v1 ∨ ¬v7 ∨ v11 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v5 := by
      rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v6 := by
      rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
    have u4 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
    have u5 : v10 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u6 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    rcases c867 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n16
  have c908 : v27 ∨ v2 ∨ v22 ∨ v28 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v39 := by
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
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n11
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
    have u6 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n13
    have u7 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v23 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u6 a
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
    have u12 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v11 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v7 := by
      rcases c907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u6 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n13
    have u18 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n13
    have u19 : v3 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n9
    have u20 : v4 := by
      rcases c345 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u18
      · exact absurd a u15
    have u21 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u6 a
      · exact absurd u19 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n12
  have c909 : v22 ∨ v2 ∨ v27 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c908 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
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
      · exact absurd a n11
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
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n12
    have u13 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n7
    have u19 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v16 := by
      rcases c633 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u16
    have u21 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u5
    have u22 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v6 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
    have u27 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n10
    have u28 : v3 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n8
    rcases c14 with a|a|a|a
    · exact absurd u12 a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd u26 a
  have c910 : v41 ∨ v2 ∨ v27 ∨ v31 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
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
    have u6 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v1 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u5
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n11
    have u8 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c106 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v22 := by
      rcases c909 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u14 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v10 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
    have u20 : ¬v11 := by
      rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v18 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v3 := by
      rcases c761 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
    have u23 : v4 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd u22 a
    have u24 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u22 a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u22 a
      · exact absurd u23 a
    rcases c905 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
  have c911 : ¬v1 ∨ v2 ∨ v31 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v27 := by
      rcases c910 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v39 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u3 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v30 := by
      rcases c895 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v32 := by
      rcases c458 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c121 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v34 := by
      rcases c120 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u15 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u13
    have u16 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a u4
    have u21 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n11
    have u24 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a u11
    have u25 : v3 := by
      rcases c883 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd u20 a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u17
    rcases c15 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u24 a
    · exact absurd u25 a
    · exact absurd u23 a
  exact ⟨c866, c867, c876, c877, c879, c880, c883, c889, c890, c892, c893, c894, c895, c896, c899, c903, c904, c905, c906, c908, c910, c911⟩
