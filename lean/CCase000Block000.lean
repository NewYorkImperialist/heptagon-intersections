import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 0-49 of the 2189-step refutation of ccase000: 97 core clauses and 0 earlier-derived ones give 15 more. -/
theorem CCase000_block000
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c6 : ¬v1 ∨ ¬v2 ∨ ¬v6 ∨ ¬v4)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c29 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c62 : ¬v15 ∨ ¬v17)
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
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c196 : ¬v21 ∨ v15 ∨ v14 ∨ v20 ∨ v8 ∨ v27 ∨ v13 ∨ v28)
    (c199 : v33 ∨ ¬v26 ∨ v20 ∨ v27 ∨ v32 ∨ v25 ∨ v34 ∨ v19)
    (c202 : v46 ∨ ¬v3 ∨ v2 ∨ v44 ∨ v4 ∨ v10 ∨ v9 ∨ v45)
    (c205 : v26 ∨ ¬v25 ∨ v19 ∨ v31 ∨ v24 ∨ v32 ∨ v18 ∨ v33)
    (c221 : ¬v23 ∨ v22 ∨ v9 ∨ v10 ∨ v33 ∨ v8 ∨ v15 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v16)
    (c234 : v13 ∨ ¬v18 ∨ v25 ∨ v32 ∨ v19 ∨ v11 ∨ v24 ∨ v20 ∨ v17 ∨ v27 ∨ v12 ∨ v38 ∨ v39 ∨ v40)
    (c245 : v11 ∨ v48 ∨ v4 ∨ v6 ∨ v47 ∨ ¬v5 ∨ v46 ∨ v12)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c274 : v14 ∨ v7 ∨ v6 ∨ v19 ∨ v21 ∨ v20 ∨ v12 ∨ ¬v13)
    (c289 : ¬v17 ∨ v24 ∨ v25 ∨ v9 ∨ v10 ∨ v16 ∨ v11 ∨ v18)
    (c290 : v21 ∨ ¬v15 ∨ v9 ∨ v16 ∨ v14 ∨ v22 ∨ v28 ∨ v8)
    (c303 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v24 ∨ v17 ∨ v11 ∨ v19)
    (c304 : v33 ∨ ¬v25 ∨ v32 ∨ v17 ∨ v31 ∨ v26 ∨ v24 ∨ v18)
    (c350 : ¬v9 ∨ v8 ∨ v17 ∨ v16 ∨ v2 ∨ v15 ∨ v1 ∨ v10)
    (c357 : v22 ∨ ¬v23 ∨ v30 ∨ v17 ∨ v24 ∨ v15 ∨ v16 ∨ v31)
    (c361 : v10 ∨ ¬v17 ∨ v16 ∨ v24 ∨ v25 ∨ v18 ∨ v23 ∨ v9)
    (c392 : v12 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v25 ∨ v20 ∨ v18 ∨ v13)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c401 : v15 ∨ ¬v16 ∨ v23 ∨ v9 ∨ v10 ∨ v24 ∨ v17 ∨ v8)
    (c433 : ¬v24 ∨ v30 ∨ v18 ∨ v17 ∨ v23 ∨ v31 ∨ v25 ∨ v32)
    (c468 : ¬v20 ∨ v28 ∨ v14 ∨ v27 ∨ v19 ∨ v13 ∨ v26 ∨ v21)
    (c477 : v15 ∨ v21 ∨ v13 ∨ v20 ∨ v8 ∨ v7 ∨ ¬v14 ∨ v1)
    (c500 : v12 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v21 ∨ v28 ∨ v19 ∨ v13)
    (c511 : v11 ∨ ¬v17 ∨ v16 ∨ v23 ∨ v24 ∨ v20 ∨ v10 ∨ v13 ∨ v18 ∨ v19 ∨ v27 ∨ v30 ∨ v31 ∨ v32)
    (c521 : v12 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v11 ∨ v18 ∨ v26 ∨ v27)
    (c527 : v33 ∨ ¬v26 ∨ v18 ∨ v27 ∨ v32 ∨ v25 ∨ v34 ∨ v19)
    (c546 : v10 ∨ ¬v18 ∨ v25 ∨ v24 ∨ v19 ∨ v26 ∨ v11 ∨ v17)
    (c552 : ¬v24 ∨ v31 ∨ v16 ∨ v30 ∨ v17 ∨ v23 ∨ v25 ∨ v32)
    : (¬v3 ∨ ¬v8 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v18 ∨ ¬v10 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27) ∧ (v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v4 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47) ∧ (v21 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (v20 ∨ ¬v3 ∨ v10 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v28) ∧ (v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32) ∧ (v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33) ∧ (v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21) ∧ (v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (v16 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34) := by
  have c558 : v17 ∨ ¬v5 ∨ ¬v6 ∨ ¬v7 ∨ v16 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v10 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    rcases c46 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c559 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v5 := by
      rcases c558 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u2 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a n13
    have u3 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n8
      · exact a
      · exact absurd a n20
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n16
    have u6 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a n6
    rcases c29 with a|a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c560 : v18 ∨ ¬v7 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v6 := by
      rcases c559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
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
    have u2 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n25
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n20
    have u3 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n21
      · exact absurd a n2
      · exact absurd a n6
    have u7 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n22
    have u8 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a n23
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n18
    rcases c23 with a|a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u8 a
  have c561 : v20 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29⟩ := hc
    have u1 : ¬v7 := by
      rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
    have u2 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n23
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n29
    have u3 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v13 := by
      rcases c60 with a|a
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
      · exact absurd a u3
      · exact a
      · exact absurd a n21
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n27
      · exact absurd a n15
    have u8 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n28
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n22
    have u9 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a n26
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n20
    have u10 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n19
      · exact absurd a n25
    rcases c31 with a|a|a|a
    · exact absurd u7 a
    · exact absurd u10 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c562 : ¬v3 ∨ ¬v8 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n13
    have u5 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n15
      · exact absurd a n9
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n11
    rcases c31 with a|a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u6 a
  have c563 : v20 ∨ v10 ∨ ¬v16 ∨ v17 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v8 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : v9 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u3
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
    have u8 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n22
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n18
    have u9 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a n13
    have u10 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n16
    rcases c31 with a|a|a|a
    · exact absurd u9 a
    · exact absurd u1 a
    · exact absurd u8 a
    · exact absurd u10 a
  have c564 : v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28⟩ := hc
    have u1 : v16 := by
      rcases c561 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v10 := by
      rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
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
    have u6 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n22
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n28
    have u8 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n27
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n21
    have u9 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n20
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n26
      · exact absurd a n14
    have u10 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a n25
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n19
    rcases c35 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c565 : ¬v17 ∨ ¬v9 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    rcases c511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c566 : v18 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v17 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n22
      · exact absurd a u2
      · exact absurd a n4
    have u5 : v10 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u3
    have u6 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n21
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n3
      · exact absurd a n27
    have u10 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n19
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n25
      · exact absurd a n13
    have u11 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact a
      · exact absurd a n24
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n18
    rcases c28 with a|a|a|a
    · exact absurd u4 a
    · exact absurd u11 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c567 : ¬v18 ∨ ¬v10 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    rcases c234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c568 : v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v18 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c567 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n22
    have u6 : v11 := by
      rcases c546 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a u2
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
    have u10 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n25
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n19
    have u11 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n24
      · exact absurd a n12
    have u12 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a u3
      · exact absurd a n3
    rcases c24 with a|a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u5 a
    · exact absurd u10 a
  have c569 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n1 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
  have c570 : v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v19 := by
      rcases c568 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u2 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c569 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v12 := by
      rcases c521 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a n22
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n16
    have u8 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n24
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n18
    have u12 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n21
    have u13 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n20
      · exact absurd a u3
      · exact absurd a n2
    rcases c22 with a|a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u7 a
  have c571 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v14 := by
      rcases c468 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
    have u2 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u1 a
      · exact a
    rcases c500 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n0
  have c572 : v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v20 := by
      rcases c570 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n23
      · exact absurd a n24
    have u2 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v13 := by
      rcases c571 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n19
      · exact absurd a u4
      · exact absurd a n1
    have u11 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n21
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n15
    have u12 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n22
      · exact absurd a n10
    have u13 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n18
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n24
    rcases c28 with a|a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c573 : ¬v4 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n5
    have u5 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n15
    have u6 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n10
    rcases c21 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c574 : v15 ∨ ¬v4 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n24
    have u2 : ¬v13 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
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
      · exact absurd a n26
    have u3 : ¬v8 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
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
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u4 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n27
      · exact absurd a n17
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n22
    have u5 : ¬v1 := by
      rcases c12 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c22 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd n1 a
    have u7 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n23
      · exact absurd a n3
      · exact absurd a n8
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n2
  have c575 : ¬v21 ∨ ¬v4 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v18 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v13 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
    have u8 : v10 := by
      rcases c574 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
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
    have u9 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u8 a
    rcases c196 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n7
  have c576 : v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v21 := by
      rcases c572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n23
    have u2 : ¬v18 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v4 := by
      rcases c575 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u6 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u6 a
      · exact a
    rcases c196 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n5
  have c577 : ¬v11 ∨ ¬v15 ∨ v16 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n1 a
      · exact a
    rcases c290 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
  have c578 : ¬v4 ∨ ¬v3 ∨ ¬v14 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n7
    have u4 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
    rcases c31 with a|a|a|a
    · exact absurd u3 a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c579 : v27 ∨ ¬v3 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v15 := by
      rcases c357 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n12
    have u3 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v8 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u6 : ¬v11 := by
      rcases c577 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n10
    have u7 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact a
      · exact absurd a n21
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n17
    have u8 : ¬v14 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u9 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n20
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a n24
    have u10 : v9 := by
      rcases c290 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a u5
    have u11 : ¬v6 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n23
    · exact absurd a n15
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n19
  have c580 : v21 ∨ ¬v3 ∨ ¬v4 ∨ ¬v6 ∨ v19 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n7
    have u4 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
    rcases c59 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c581 : ¬v3 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v4 := by
      rcases c580 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n24
    have u2 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n21
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n15
    have u3 : ¬v12 := by
      rcases c55 with a|a
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
    have u6 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n22
      · exact absurd a n12
    have u7 : v2 := by
      rcases c202 with a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd n0 a
      · exact a
      · exact absurd a n19
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n20
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a n24
    rcases c30 with a|a|a|a
    · exact absurd u7 a
    · exact absurd u6 a
    · exact absurd u8 a
    · exact absurd n1 a
  have c582 : v20 ∨ ¬v3 ∨ v10 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v6 := by
      rcases c581 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n22
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n16
    have u3 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n20
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n14
    have u7 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n21
      · exact absurd a n11
    have u8 : v7 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u2 a
    rcases c32 with a|a|a|a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd u6 a
  have c583 : v33 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v16 := by
      rcases c579 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u2 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u1 a
      · exact a
    rcases c582 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n0
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
  have c584 : ¬v23 ∨ v10 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n21
    have u2 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v18 := by
      rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
      · exact absurd a n14
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
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u3 a
    rcases c357 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n10
  have c585 : v16 ∨ v10 ∨ ¬v13 ∨ v15 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n5 a
    rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
  have c586 : ¬v17 ∨ v9 ∨ v10 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v11 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u2
    have u6 : v8 := by
      rcases c221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n10
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
    rcases c42 with a|a
    · exact absurd u5 a
    · exact absurd u6 a
  have c587 : v10 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v17 := by
      rcases c584 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v9 := by
      rcases c586 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u8 : ¬v13 := by
      rcases c585 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n23
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n17
    have u13 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n18
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n24
    have u14 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n22
      · exact absurd a n11
    have u15 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n4
      · exact a
      · exact absurd a n21
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n15
    rcases c35 with a|a|a|a
    · exact absurd u15 a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c588 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    rcases c290 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
  have c589 : v11 ∨ ¬v5 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v25 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n12
    have u5 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n11
    have u6 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n16
    rcases c35 with a|a|a|a
    · exact absurd u5 a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c590 : v16 ∨ v8 ∨ v9 ∨ v14 ∨ v17 ∨ ¬v23 ∨ v24 ∨ v28 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : v15 := by
      rcases c357 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    rcases c588 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n7
  have c591 : v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v10 := by
      rcases c587 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
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
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n21
      · exact absurd a n10
    have u9 : ¬v17 := by
      rcases c589 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
    have u10 : ¬v18 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n0
    have u11 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact a
      · exact absurd a n20
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n14
    have u12 : v16 := by
      rcases c590 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u13
      · exact absurd a n23
    have u16 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n22
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n16
    rcases c35 with a|a|a|a
    · exact absurd u11 a
    · exact absurd u8 a
    · exact absurd u15 a
    · exact absurd u16 a
  have c592 : v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v23 := by
      rcases c576 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v19 := by
      rcases c591 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    rcases c357 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n6
  have c593 : v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    rcases c552 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
  have c594 : v18 ∨ ¬v2 ∨ ¬v6 ∨ ¬v7 ∨ v19 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v4 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u3 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
    have u4 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n8
    rcases c55 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c595 : v19 ∨ ¬v7 ∨ v9 ∨ v16 ∨ v18 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c594 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n22
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n18
    have u4 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n16
    have u7 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a n13
    rcases c28 with a|a|a|a
    · exact absurd u1 a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd u7 a
  have c596 : ¬v17 ∨ v14 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n22
    have u7 : v9 := by
      rcases c595 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
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
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n21
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n15
    have u12 : v5 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n20
      · exact absurd a n9
    have u13 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a n19
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n13
    rcases c35 with a|a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u6 a
    · exact absurd u11 a
  have c597 : v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v24 := by
      rcases c592 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v17 := by
      rcases c593 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v19 := by
      rcases c73 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v14 := by
      rcases c596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u2
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u10 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n20
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n14
    have u16 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a u2
    have u17 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a n18
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n12
    have u18 : ¬v3 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u19 : ¬v1 := by
      rcases c6 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact absurd u17 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u16 a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a u14
  have c598 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v17 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
    have u2 : v19 := by
      rcases c205 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    rcases c73 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c599 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n3 a
    rcases c477 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n0
  have c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
    have u2 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c30 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u4 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n13
    rcases c599 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c601 : ¬v5 ∨ v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v19 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v4 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
      · exact absurd a n22
    have u6 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n7
    have u7 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a n24
    have u9 : v6 := by
      rcases c245 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n23
      · exact absurd a u5
      · exact a
      · exact absurd a n22
      · exact absurd n0 a
      · exact absurd a n21
      · exact absurd a u3
    rcases c26 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd u9 a
  have c602 : v21 ∨ ¬v5 ∨ v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28⟩ := hc
    have u1 : ¬v13 := by
      rcases c601 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
      · exact absurd a n28
    have u2 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n27
      · exact absurd a n28
    have u3 : v9 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n23
      · exact absurd a n4
      · exact absurd a n8
    have u4 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v1 := by
      rcases c350 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a u6
    have u8 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n22
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n28
    have u9 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n24
    rcases c15 with a|a|a|a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c603 : v47 ∨ v5 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
    have u2 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n20
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n17
    have u7 : v7 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n21
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a n20
      · exact absurd a n0
    have u8 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
    have u9 : v2 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n6
    rcases c26 with a|a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c604 : ¬v5 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v11 := by
      rcases c602 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
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
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v2 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n26
      · exact absurd a n27
    rcases c171 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n17
    · exact absurd a n12
    · exact absurd a n22
    · exact absurd a n2
    · exact absurd a n7
  have c605 : v16 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v5 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
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
      · exact absurd a n25
      · exact absurd a n26
    rcases c604 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c606 : v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v25 := by
      rcases c597 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v18 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u4 a
    rcases c605 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u2
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
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
  have c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n0
    have u2 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u1 a
    rcases c527 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n2 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n0
  exact ⟨c562, c567, c569, c571, c573, c580, c582, c588, c593, c598, c599, c600, c605, c606, c607⟩
