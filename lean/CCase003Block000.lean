import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 0-49 of the 2559-step refutation of ccase003: 94 core clauses and 0 earlier-derived ones give 27 more. -/
theorem CCase003_block000
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c19 : ¬v2 ∨ ¬v4 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c216 : ¬v21 ∨ v28 ∨ v14 ∨ v27 ∨ v8 ∨ v15 ∨ v13 ∨ v20)
    (c224 : v28 ∨ ¬v17 ∨ v9 ∨ v25 ∨ v14 ∨ v15 ∨ v21 ∨ v18 ∨ v10 ∨ v16 ∨ v24 ∨ v30 ∨ v31 ∨ v32)
    (c234 : v4 ∨ v6 ∨ v18 ∨ v7 ∨ v12 ∨ v19 ∨ ¬v13 ∨ v11 ∨ v14 ∨ v20 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c236 : v3 ∨ v11 ∨ v45 ∨ v46 ∨ v5 ∨ v47 ∨ ¬v4 ∨ v10)
    (c247 : v7 ∨ v20 ∨ v12 ∨ v14 ∨ v5 ∨ v6 ∨ v21 ∨ ¬v13)
    (c265 : v4 ∨ v6 ∨ v46 ∨ v12 ∨ v47 ∨ v48 ∨ ¬v5 ∨ v11)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c306 : v16 ∨ ¬v17 ∨ v25 ∨ v24 ∨ v9 ∨ v18 ∨ v10 ∨ v11)
    (c322 : ¬v18 ∨ v17 ∨ v25 ∨ v24 ∨ v12 ∨ v19 ∨ v26 ∨ v11)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c329 : v10 ∨ v12 ∨ v17 ∨ v5 ∨ ¬v11 ∨ v18 ∨ v4 ∨ v3)
    (c334 : v22 ∨ ¬v15 ∨ v28 ∨ v26 ∨ v16 ∨ v9 ∨ v2 ∨ v8 ∨ v19 ∨ v1 ∨ v7 ∨ v21 ∨ v20 ∨ v12)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c405 : ¬v19 ∨ v27 ∨ v13 ∨ v25 ∨ v12 ∨ v26 ∨ v20 ∨ v18)
    (c408 : v4 ∨ v6 ∨ v27 ∨ v33 ∨ v21 ∨ v14 ∨ v5 ∨ v18 ∨ v12 ∨ v11 ∨ v35 ∨ v20 ∨ v34 ∨ ¬v13)
    (c409 : v14 ∨ v47 ∨ v5 ∨ v48 ∨ v49 ∨ v7 ∨ ¬v6 ∨ v13)
    (c435 : ¬v18 ∨ v25 ∨ v11 ∨ v26 ∨ v33 ∨ v31 ∨ v8 ∨ v19 ∨ v10 ∨ v15 ∨ v32 ∨ v16 ∨ v22 ∨ v17)
    (c439 : v6 ∨ v1 ∨ v12 ∨ v5 ∨ v8 ∨ v15 ∨ v21 ∨ v14 ∨ ¬v13 ∨ v20 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c440 : v6 ∨ v20 ∨ v11 ∨ v19 ∨ v7 ∨ v10 ∨ v14 ∨ v3 ∨ v12 ∨ ¬v13 ∨ v17 ∨ v47 ∨ v48 ∨ v49)
    (c449 : v8 ∨ ¬v9 ∨ v15 ∨ v10 ∨ v3 ∨ v16 ∨ v2 ∨ v1)
    (c458 : ¬v19 ∨ v26 ∨ v12 ∨ v27 ∨ v32 ∨ v17 ∨ v9 ∨ v11 ∨ v18 ∨ v16 ∨ v23 ∨ v20 ∨ v33 ∨ v34)
    (c477 : v33 ∨ v26 ∨ v32 ∨ v4 ∨ v17 ∨ v3 ∨ v10 ∨ v34 ∨ v19 ∨ v13 ∨ v5 ∨ v20 ∨ ¬v12 ∨ v11)
    (c478 : ¬v20 ∨ v28 ∨ v14 ∨ v27 ∨ v26 ∨ v21 ∨ v19 ∨ v13)
    (c481 : ¬v12 ∨ v19 ∨ v5 ∨ v18 ∨ v20 ∨ v4 ∨ v13 ∨ v11)
    (c487 : v15 ∨ v21 ∨ v1 ∨ v20 ∨ ¬v14 ∨ v13 ∨ v7 ∨ v8)
    (c489 : ¬v19 ∨ v26 ∨ v5 ∨ v27 ∨ v12 ∨ v28 ∨ v18 ∨ v11 ∨ v20 ∨ v21 ∨ v14 ∨ v46 ∨ v47 ∨ v48)
    (c507 : ¬v20 ∨ v28 ∨ v12 ∨ v27 ∨ v26 ∨ v21 ∨ v19 ∨ v13)
    (c529 : v27 ∨ ¬v19 ∨ v26 ∨ v11 ∨ v20 ∨ v25 ∨ v12 ∨ v18)
    (c551 : v11 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v24 ∨ v17 ∨ v19 ∨ v10)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    : (v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16) ∧ (v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27) ∧ (v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28) ∧ (v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ ¬v4 ∨ ¬v6 ∨ v17 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47) ∧ (¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28) ∧ (v26 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48) ∧ (¬v6 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48) ∧ (v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27) ∧ (¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28) ∧ (¬v25 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ ¬v21 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v31 ∨ ¬v5 ∨ ¬v6 ∨ v19 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v6 ∨ ¬v12 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47) ∧ (v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48) ∧ (v18 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48) ∧ (v27 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48) ∧ (¬v4 ∨ v5 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47) := by
  have c563 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n3
    have u4 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    rcases c49 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c564 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n2
    rcases c24 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c565 : v19 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a n23
      · exact absurd a n13
    have u3 : ¬v7 := by
      rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u4 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n14
      · exact a
      · exact absurd a n4
      · exact absurd a n24
      · exact absurd a n19
      · exact absurd a n9
    have u5 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n21
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n16
    have u8 : v5 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n23
      · exact a
      · exact absurd a n22
      · exact absurd a u3
      · exact absurd a n24
      · exact absurd u2 a
      · exact absurd a u1
    rcases c30 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u2 a
  have c566 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    have u4 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n7
    rcases c56 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c567 : ¬v13 ∨ ¬v17 ∨ v18 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n1 a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
  have c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    rcases c449 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
  have c569 : v10 ∨ ¬v6 ∨ v11 ∨ ¬v17 ∨ v18 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v1 := by
      rcases c9 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : v9 := by
      rcases c306 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
    rcases c568 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u2
  have c570 : ¬v17 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v11 := by
      rcases c569 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    rcases c224 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c571 : v19 ∨ v18 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v17 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v13 := by
      rcases c567 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n23
      · exact absurd a n13
    have u4 : v10 := by
      rcases c570 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n21
    have u5 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a n22
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n17
    have u8 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n24
      · exact absurd a n19
      · exact absurd a n8
    rcases c33 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd u3 a
  have c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v12 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    rcases c551 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u2
  have c573 : v19 ∨ v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v18 := by
      rcases c571 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n23
      · exact absurd a n18
      · exact absurd a n7
    have u8 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a n21
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n16
    have u9 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n22
      · exact absurd a n12
    rcases c33 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u9 a
  have c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    rcases c405 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u3
  have c575 : v20 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v19 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n14
    have u5 : v12 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u2
    have u6 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n6
    have u9 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n21
      · exact absurd a n11
    rcases c32 with a|a|a
    · exact absurd u4 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c478 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
    have u2 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u1 a
    rcases c507 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
  have c577 : v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v20 := by
      rcases c575 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c578 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v17 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    have u4 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n3
    rcases c50 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c579 : v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v21 := by
      rcases c577 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n20
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n19
      · exact absurd a n9
    have u9 : ¬v4 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
    have u10 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n12
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u10 a
      · exact a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u6
  have c580 : v10 ∨ ¬v6 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
  have c581 : ¬v19 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    rcases c405 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n3
  have c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c576 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c583 : v26 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v19 := by
      rcases c581 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u4 : ¬v6 := by
      rcases c580 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u5 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a u5
    · exact absurd a n13
    · exact absurd a n9
  have c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n6
  have c585 : v28 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v11 ∨ v17 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v13 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    have u5 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u7 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u2
      · exact a
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n0
    have u8 : v20 := by
      rcases c440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c80 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c586 : v27 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v17 ∨ v18 ∨ v25 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v11 := by
      rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v19 := by
      rcases c585 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n7
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
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v12 := by
      rcases c529 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n5
    have u5 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n10
    rcases c56 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c587 : v10 ∨ v17 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v11 := by
      rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n11
    have u3 : v6 := by
      rcases c586 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u3 a
    have u5 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a u4
    · exact absurd a n17
    · exact absurd u2 a
    · exact absurd a n0
  have c588 : v11 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v8 := by
      rcases c435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n4
    have u2 : v12 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
    rcases c41 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c589 : v28 ∨ v10 ∨ v17 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v18 := by
      rcases c587 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
      · exact absurd a n21
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v23 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
    have u7 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u6 a
      · exact absurd n3 a
      · exact a
    have u8 : v11 := by
      rcases c588 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n21
      · exact absurd a n16
      · exact absurd a n0
    have u13 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n5
      · exact a
      · exact absurd a n19
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n14
    have u14 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n20
    rcases c33 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u14 a
  have c590 : ¬v6 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
    have u4 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
    rcases c33 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n0 a
  have c591 : v10 ∨ ¬v6 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n11
    have u3 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u5 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n10
      · exact a
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n7
    have u6 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n12
    rcases c57 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c592 : v28 ∨ v10 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v17 := by
      rcases c589 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v6 := by
      rcases c591 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u6 : v13 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n20
    have u7 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n12
    have u11 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n21
      · exact absurd a n15
      · exact absurd a n0
    have u12 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a n19
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n13
    rcases c31 with a|a|a
    · exact absurd u11 a
    · exact absurd u12 a
    · exact absurd u10 a
  have c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v19 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n5
    rcases c78 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c594 : v18 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n3 a
      · exact a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n0
  have c595 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    rcases c594 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c596 : ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v10 := by
      rcases c592 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n0 a
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v19 := by
      rcases c595 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n19
    have u8 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n2
      · exact a
      · exact absurd a n18
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n12
    have u9 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u11 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a n20
      · exact absurd a n14
      · exact absurd a n4
    have u12 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n17
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n11
    rcases c77 with a|a
    · exact absurd u11 a
    · exact absurd u12 a
  have c597 : v49 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v24 := by
      rcases c596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n0
    rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
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
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n0
  have c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
  have c599 : v27 ∨ v7 ∨ ¬v10 ∨ v19 ∨ v26 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u5 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n5
    rcases c598 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n5
  have c600 : ¬v25 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ ¬v21 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u1
    have u5 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n6
    have u6 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u3
    rcases c97 with a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u6 a
  have c601 : v31 ∨ ¬v5 ∨ ¬v6 ∨ v19 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v10 := by
      rcases c599 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u6 : ¬v21 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact a
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n7
    have u8 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v20 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v15 := by
      rcases c487 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u8
    have u14 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v22 := by
      rcases c334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u9
    have u17 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n8
    have u18 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u15
    rcases c82 with a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u16 a
  have c602 : v11 ∨ ¬v6 ∨ v19 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v5 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
    have u2 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n20
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n15
    have u3 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v7 := by
      rcases c409 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n20
      · exact absurd a u1
      · exact absurd a n21
      · exact absurd a n22
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
    have u7 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u9 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u10 : v17 := by
      rcases c477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n0
    have u11 : v18 := by
      rcases c481 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n0
    rcases c71 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c603 : ¬v6 ∨ ¬v12 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n6
    have u4 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
    rcases c23 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c604 : v11 ∨ ¬v6 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v19 := by
      rcases c602 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
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
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v24 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n21
    have u10 : v9 := by
      rcases c458 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u11 : v13 := by
      rcases c305 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
    rcases c47 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    rcases c329 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u3
  have c606 : ¬v6 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v11 := by
      rcases c604 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
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
    have u2 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v7 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
    have u6 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u3
      · exact a
      · exact absurd a n20
      · exact absurd a n14
      · exact absurd a n4
    have u7 : v20 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c80 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c607 : v6 ∨ v7 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
    have u2 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n4
    have u7 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v4 := by
      rcases c585 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
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
    rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
  have c608 : ¬v5 ∨ v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v4 := by
      rcases c31 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c265 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n3
  have c609 : v18 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n5 a
    rcases c489 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c610 : v27 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v25 := by
      rcases c597 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n20
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
    have u2 : ¬v6 := by
      rcases c606 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
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
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n19
    have u4 : v7 := by
      rcases c607 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n18
      · exact a
      · exact absurd a n6
      · exact absurd a n12
    have u10 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    rcases c609 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c611 : v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n7
    have u6 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v1 := by
      rcases c439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v4 := by
      rcases c408 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd u5 a
    have u10 : v7 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u5 a
    rcases c10 with a|a|a
    · exact absurd u8 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c612 : ¬v4 ∨ v5 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n3
  exact ⟨c563, c564, c566, c568, c572, c574, c576, c577, c578, c582, c583, c584, c590, c593, c594, c596, c598, c600, c601, c603, c605, c607, c608, c609, c610, c611, c612⟩
