import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 400-449 of the 2934-step refutation of ccase002: 115 core clauses and 33 earlier-derived ones give 14 more. -/
theorem CCase002_block008
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v11)
    (c40 : ¬v8 ∨ ¬v13)
    (c41 : ¬v8 ∨ ¬v14)
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
    (c60 : ¬v16 ∨ ¬v15 ∨ ¬v19)
    (c61 : ¬v16 ∨ ¬v15 ∨ ¬v20)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
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
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
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
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c123 : ¬v31 ∨ ¬v29)
    (c128 : ¬v30 ∨ ¬v31)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c144 : ¬v38 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c165 : ¬v45 ∨ ¬v43)
    (c166 : ¬v43 ∨ ¬v46)
    (c167 : ¬v47 ∨ ¬v43)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c205 : ¬v27 ∨ v20 ∨ v35 ∨ v26 ∨ v33 ∨ v34 ∨ v28 ∨ v21)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c213 : ¬v26 ∨ v33 ∨ v20 ∨ v32 ∨ v34 ∨ v19 ∨ v27 ∨ v25)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c240 : v43 ∨ v6 ∨ v3 ∨ ¬v14 ∨ v7 ∨ v15 ∨ v17 ∨ v9 ∨ v13 ∨ v10 ∨ v21 ∨ v8 ∨ v48 ∨ v49)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c244 : ¬v25 ∨ v32 ∨ v17 ∨ v26 ∨ v18 ∨ v33 ∨ v24 ∨ v19)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c285 : v21 ∨ v15 ∨ v6 ∨ v20 ∨ v7 ∨ v8 ∨ ¬v14 ∨ v13)
    (c304 : v36 ∨ ¬v43 ∨ v42 ∨ v37 ∨ v44 ∨ v1 ∨ v7 ∨ v49)
    (c308 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v37 ∨ v32 ∨ v39)
    (c322 : ¬v11 ∨ v10 ∨ v18 ∨ v5 ∨ v3 ∨ v17 ∨ v4 ∨ v12)
    (c362 : v36 ∨ ¬v43 ∨ v42 ∨ v37 ∨ v44 ∨ v2 ∨ v1 ∨ v49)
    (c366 : ¬v17 ∨ v18 ∨ v24 ∨ v23 ∨ v25 ∨ v9 ∨ v10 ∨ v16)
    (c368 : ¬v18 ∨ v17 ∨ v24 ∨ v19 ∨ v12 ∨ v25 ∨ v11 ∨ v10)
    (c375 : ¬v25 ∨ v32 ∨ v18 ∨ v39 ∨ v17 ∨ v26 ∨ v30 ∨ v33 ∨ v24 ∨ v16 ∨ v23 ∨ v45 ∨ v46 ∨ v47)
    (c398 : v21 ∨ v49 ∨ v20 ∨ ¬v13 ∨ v5 ∨ v16 ∨ v2 ∨ v6 ∨ v14 ∨ v12 ∨ v8 ∨ v47 ∨ v48 ∨ v9)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c442 : v29 ∨ v16 ∨ v35 ∨ v30 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v15)
    (c444 : v22 ∨ v21 ∨ v18 ∨ v27 ∨ v7 ∨ v15 ∨ v4 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v12 ∨ v6 ∨ v11 ∨ v28)
    (c459 : v29 ∨ ¬v23 ∨ v30 ∨ v15 ∨ v24 ∨ v17 ∨ v16 ∨ v22)
    (c479 : v12 ∨ ¬v4 ∨ v3 ∨ v5 ∨ v46 ∨ v47 ∨ v10 ∨ v11)
    (c513 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v32 ∨ v27 ∨ v33 ∨ v19)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c613 : ¬v13 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v27 ∨ v28)
    (c628 : v45 ∨ ¬v17 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c642 : ¬v27 ∨ ¬v18 ∨ ¬v19 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v42)
    (c669 : ¬v17 ∨ ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c720 : v16 ∨ ¬v5 ∨ v12 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c722 : v12 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c734 : v4 ∨ v10 ∨ v11 ∨ ¬v16 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c783 : v21 ∨ ¬v2 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c849 : ¬v27 ∨ ¬v17 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c850 : ¬v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c880 : v46 ∨ v7 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c898 : ¬v28 ∨ v20 ∨ v21 ∨ v29 ∨ v34 ∨ v35)
    (c918 : v12 ∨ v10 ∨ v11 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c924 : v46 ∨ ¬v13 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c925 : ¬v27 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v34 ∨ v35)
    (c928 : v7 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v14 ∨ v47 ∨ v48 ∨ v49)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c947 : v42 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c948 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    : (v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18) ∧ (¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v25 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v32 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49) ∧ (v24 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v32 ∨ v33) ∧ (¬v25 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v19 ∨ v34 ∨ v41 ∨ v48) ∧ (v13 ∨ v6 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ ¬v17 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v19 ∨ v20 ∨ v27 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35) ∧ (v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48) ∧ (v42 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c949 : v13 ∨ ¬v1 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c928 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u1 a
    rcases c542 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n0
  have c950 : v23 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n5 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c951 : v23 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n4 a
    rcases c950 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c952 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    rcases c951 with a|a|a|a|a|a|a|a|a|a|a|a
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
  have c953 : v32 ∨ v4 ∨ v7 ∨ ¬v13 ∨ ¬v19 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n4 a
    have u5 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n4 a
    have u7 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n9
      · exact a
      · exact absurd a n0
    rcases c952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c954 : v30 ∨ v2 ∨ v4 ∨ v7 ∨ ¬v13 ∨ ¬v19 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v28 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n1
    rcases c734 with a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd u8 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n14
  have c955 : v39 ∨ ¬v6 ∨ v7 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n0
    have u7 : v1 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n11
    have u8 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v13 := by
      rcases c949 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v3 := by
      rcases c8 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u15 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v4 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a u16
    have u19 : ¬v19 := by
      rcases c954 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd u12 a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u20 : v26 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u12 a
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u21
      · exact a
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u19
    have u26 : ¬v17 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    rcases c941 with a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u26
    · exact absurd u25 a
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u21
  have c956 : v42 ∨ ¬v6 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n10
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v7 := by
      rcases c955 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
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
    have u6 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    have u7 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n10
  have c957 : v4 ∨ v5 ∨ ¬v13 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
    have u6 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v26 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n3
    have u16 : ¬v17 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    rcases c941 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u11
  have c958 : ¬v18 ∨ v2 ∨ v5 ∨ v6 ∨ ¬v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n5 a
    have u2 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n4 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u4
  have c959 : v44 ∨ ¬v7 ∨ ¬v13 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
    have u8 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
    have u9 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n3
    have u13 : v1 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a n11
    have u14 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u16 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u17 : v19 := by
      rcases c957 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd n2 a
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
      · exact absurd a n11
    have u18 : ¬v18 := by
      rcases c958 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd u17 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v25 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a u11
    have u20 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u1
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
    have u23 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u17 a
    have u24 : ¬v15 := by
      rcases c60 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u17 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a u1
    · exact absurd a u21
    · exact absurd a u2
  have c960 : v10 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v11 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n4 a
      · exact a
    rcases c322 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u1
  have c961 : ¬v11 ∨ v3 ∨ v4 ∨ v5 ∨ v17 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    rcases c960 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c962 : ¬v1 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v4 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v11 := by
      rcases c961 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
  have c963 : v25 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v32 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v1 := by
      rcases c962 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
    have u2 : ¬v45 := by
      rcases c165 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : v2 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n9 a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a n12
    have u4 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u6 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n4
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v5 := by
      rcases c961 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c729 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u3 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a n10
    · exact absurd a u2
  have c964 : v34 ∨ v6 ∨ v13 ∨ ¬v17 ∨ ¬v19 ∨ v29 ∨ v33 ∨ v35 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u4 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n0
    have u5 : v26 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c118 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c965 : v17 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v18 ∨ ¬v19 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n20
    have u2 : v25 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd u1 a
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n20
    have u3 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v16 := by
      rcases c952 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n19
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n9
    rcases c80 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd n5 a
  have c966 : v40 ∨ ¬v7 ∨ ¬v19 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
    have u8 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v17 := by
      rcases c964 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n10
    have u14 : v18 := by
      rcases c965 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n2 a
    have u16 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n2 a
    have u17 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
    have u18 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u16
      · exact a
      · exact absurd a n4
      · exact absurd a u12
    rcases c642 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u14 a
    · exact absurd n2 a
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a n5
  have c967 : ¬v18 ∨ v19 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : v20 := by
      rcases c925 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c84 with a|a|a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact a
    have u8 : v7 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u10 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c51 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c968 : v44 ∨ v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n5
    have u7 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v27 := by
      rcases c967 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n12
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u11
    have u14 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n3 a
    have u16 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n3 a
    have u17 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u18 : ¬v28 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u19 : v26 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u14
      · exact a
      · exact absurd a u12
      · exact absurd a u18
    have u20 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u20
    have u24 : v12 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u12
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u23
    have u25 : ¬v2 := by
      rcases c783 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd u13 a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u26 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u24 a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u7
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u25
  have c969 : v24 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n4 a
      · exact a
    rcases c244 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n3
  have c970 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    rcases c969 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
  have c971 : v39 ∨ ¬v7 ∨ v17 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v19 := by
      rcases c966 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
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
    have u3 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n11
    have u5 : ¬v18 := by
      rcases c968 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
    have u10 : v25 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u11 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u9 a
      · exact a
    rcases c970 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u11
  have c972 : ¬v25 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v19 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n5
    have u5 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd u4 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    rcases c88 with a|a|a
    · exact absurd n3 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c973 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n13
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n10
    have u2 : ¬v25 := by
      rcases c972 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u4 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u5 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n5
    have u7 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v28 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u5
  have c974 : ¬v17 ∨ v6 ∨ ¬v7 ∨ v13 ∨ v18 ∨ v19 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v27 := by
      rcases c973 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    have u2 : ¬v25 := by
      rcases c972 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u3 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v20 := by
      rcases c925 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    rcases c366 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
  have c975 : v41 ∨ ¬v7 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
    have u6 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v13 := by
      rcases c959 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v17 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v19 := by
      rcases c966 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u14 : v18 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u11
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v28 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u14 a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
    have u17 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u14 a
    have u18 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a u10
    have u19 : v26 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n9
    rcases c118 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c976 : v13 ∨ v6 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v20 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
    have u4 : v26 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
    have u5 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n6
    rcases c118 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c977 : ¬v17 ∨ v6 ∨ v19 ∨ ¬v20 ∨ v27 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u5 : v13 := by
      rcases c973 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n20
    have u6 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v28 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
    have u8 : v26 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd u5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd n0 a
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n20
    · exact absurd a n21
  have c978 : ¬v26 ∨ ¬v17 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n12
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n14
  have c979 : v27 ∨ v6 ∨ ¬v17 ∨ v19 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v20 := by
      rcases c977 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v26 := by
      rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n8
    rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd u3 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c980 : ¬v26 ∨ v19 ∨ v20 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
  have c981 : v19 ∨ v6 ∨ v20 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v26 := by
      rcases c980 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n6
    rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n13
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c982 : v19 ∨ ¬v13 ∨ v17 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v26 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v18 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
    rcases c368 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
  have c983 : v22 ∨ v15 ∨ v16 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
    rcases c459 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u1 a
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n0
  have c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    rcases c442 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
  have c985 : v27 ∨ v19 ∨ v28 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v7 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
    have u5 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v1 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a n12
    have u9 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
    have u10 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v17 := by
      rcases c979 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v20 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v13 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v18 := by
      rcases c968 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v25 := by
      rcases c970 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u13
    have u20 : ¬v26 := by
      rcases c513 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n1
    have u21 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd u16 a
      · exact a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n2
    have u22 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u16 a
    have u23 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u16 a
    have u24 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u25 : v24 := by
      rcases c983 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u15
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u10
    have u26 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v12 := by
      rcases c722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u28 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a n7
      · exact a
    have u31 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u7
    rcases c2 with a|a|a
    · exact absurd u8 a
    · exact absurd u30 a
    · exact absurd u31 a
  have c986 : ¬v12 ∨ ¬v1 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact a
    have u4 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c987 : v17 ∨ ¬v1 ∨ v16 ∨ v18 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c970 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v12 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n15
    · exact absurd a n12
  have c988 : v44 ∨ ¬v1 ∨ v19 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
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
    have u2 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
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
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n4
    have u7 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v28 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
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
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v13 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n11
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u11
    have u20 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd u19 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n3
    have u21 : ¬v17 := by
      rcases c979 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : v16 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd n1 a
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v21 := by
      rcases c82 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v15 := by
      rcases c61 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u19 a
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u12 a
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u23
  have c989 : v48 ∨ ¬v1 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v7 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
    have u2 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u3 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
    have u7 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v33 := by
      rcases c134 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v27 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u12 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v20 := by
      rcases c925 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
    have u17 : v21 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u18 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u20 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u16 a
    have u21 : ¬v12 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
    have u22 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a n10
    · exact absurd a n4
  have c990 : v6 ∨ ¬v16 ∨ v17 ∨ ¬v19 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v21 := by
      rcases c81 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v27 := by
      rcases c850 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact a
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
    have u5 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n8
    have u6 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u5 a
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n3 a
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c991 : v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c992 : ¬v1 ∨ v6 ∨ v7 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v20 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u2 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n6 a
    have u3 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n6 a
    have u4 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v28 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u3
    have u6 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n18
      · exact absurd a n16
    have u7 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v4 := by
      rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u5
    have u14 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    have u16 : v43 := by
      rcases c240 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n18
    have u17 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v46 := by
      rcases c166 with a|a
      · exact absurd u16 a
      · exact a
    rcases c479 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u13 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u9
  have c993 : v27 ∨ ¬v1 ∨ v6 ∨ v7 ∨ v16 ∨ v17 ∨ ¬v19 ∨ v26 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v18 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
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
    have u3 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n6 a
    have u4 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v13 := by
      rcases c891 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n17
    have u7 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n18
      · exact absurd a n16
    rcases c56 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c994 : v5 ∨ ¬v19 ∨ v20 ∨ v26 ∨ ¬v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u5 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v7 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
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
    have u8 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
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
    have u9 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n14
    have u10 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u13 : v1 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
      · exact a
      · exact absurd a u6
      · exact absurd a n14
    have u14 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n8
    have u15 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n5
    have u16 : ¬v35 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v17 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : v21 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u3
      · exact a
    have u21 : ¬v18 := by
      rcases c642 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v16 := by
      rcases c990 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u19
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u23 : v13 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u20 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
    have u24 : ¬v12 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
    have u25 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v3 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
    have u27 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u21
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u12
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n12
    · exact absurd a u26
    · exact absurd a n0
    · exact absurd u27 a
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a u25
  have c995 : v39 ∨ ¬v1 ∨ v17 ∨ v26 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v7 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v19 := by
      rcases c989 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u6 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
    have u10 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v16 := by
      rcases c990 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v27 := by
      rcases c993 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v18 := by
      rcases c642 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u5 a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v12 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    have u21 : ¬v5 := by
      rcases c720 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v20 := by
      rcases c994 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u5 a
      · exact a
      · exact absurd a n3
      · exact absurd u15 a
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
    have u23 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u5 a
    have u24 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n12
      · exact absurd a n6
    have u25 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n7
      · exact a
    have u28 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u19
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u8
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u27 a
    · exact absurd u28 a
  have c996 : ¬v20 ∨ ¬v1 ∨ v6 ∨ v7 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u3 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u4 : ¬v21 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u5 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n12
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v12 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n13
      · exact a
    have u12 : v4 := by
      rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n8
    rcases c2 with a|a|a
    · exact absurd n1 a
    · exact absurd u11 a
    · exact absurd u12 a
  have c997 : v42 ∨ ¬v1 ∨ v17 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v19 := by
      rcases c989 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
      · exact absurd a n11
    have u2 : ¬v7 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
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
    have u5 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
    have u8 : ¬v30 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v26 := by
      rcases c995 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
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
    have u12 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v20 := by
      rcases c996 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n11
    have u17 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u10
    have u18 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n0
    have u20 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u1 a
    rcases c613 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u20
    · exact absurd a u16
    · exact absurd u19 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
  have c998 : v42 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u2 : ¬v7 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a
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
    have u3 : ¬v6 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : v38 := by
      rcases c947 with a|a|a|a|a|a|a|a|a|a|a
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
    have u5 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v1 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n9
    have u8 : ¬v32 := by
      rcases c948 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v31 := by
      rcases c308 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n1
    have u10 : ¬v29 := by
      rcases c123 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v35 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v17 := by
      rcases c997 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u7 a
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
    have u14 : v19 := by
      rcases c989 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u15 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v15 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u14 a
    have u17 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v28 := by
      rcases c898 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u2
      · exact a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a n0
    have u20 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u19 a
      · exact a
    rcases c285 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd u19 a
    · exact absurd a u21
  exact ⟨c949, c952, c958, c961, c962, c963, c969, c972, c976, c978, c980, c984, c991, c998⟩
