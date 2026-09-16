import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 0-49 of the 2934-step refutation of ccase002: 107 core clauses and 0 earlier-derived ones give 26 more. -/
theorem CCase002_block000
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v6 ∨ ¬v5)
    (c14 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c25 : ¬v6 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v6 ∨ ¬v3 ∨ ¬v5)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
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
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
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
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c209 : ¬v21 ∨ v28 ∨ v8 ∨ v20 ∨ v27 ∨ v14 ∨ v15 ∨ v13)
    (c218 : v4 ∨ ¬v3 ∨ v45 ∨ v2 ∨ v44 ∨ v10 ∨ v46 ∨ v9)
    (c222 : ¬v10 ∨ v11 ∨ v18 ∨ v4 ∨ v17 ∨ v3 ∨ v9 ∨ v16)
    (c231 : ¬v4 ∨ v5 ∨ v45 ∨ v11 ∨ v47 ∨ v3 ∨ v46 ∨ v10)
    (c257 : v12 ∨ v48 ∨ v4 ∨ v6 ∨ ¬v5 ∨ v47 ∨ v11 ∨ v46)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c296 : v13 ∨ v14 ∨ v18 ∨ v7 ∨ v17 ∨ v21 ∨ v5 ∨ v10 ∨ v24 ∨ v12 ∨ ¬v11 ∨ v4 ∨ v25 ∨ v26)
    (c299 : v16 ∨ ¬v17 ∨ v18 ∨ v25 ∨ v11 ∨ v10 ∨ v24 ∨ v9)
    (c300 : v22 ∨ v16 ∨ v21 ∨ v28 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v8)
    (c314 : v11 ∨ ¬v18 ∨ v17 ∨ v19 ∨ v12 ∨ v24 ∨ v25 ∨ v26)
    (c350 : v4 ∨ v11 ∨ v45 ∨ v2 ∨ v9 ∨ ¬v3 ∨ v10 ∨ v46)
    (c352 : ¬v12 ∨ v20 ∨ v4 ∨ v19 ∨ v6 ∨ v5 ∨ v11 ∨ v13)
    (c361 : ¬v23 ∨ v30 ∨ v31 ∨ v16 ∨ v15 ∨ v22 ∨ v24 ∨ v17)
    (c370 : ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v12 ∨ v11 ∨ v10)
    (c371 : v15 ∨ v48 ∨ v19 ∨ v46 ∨ v20 ∨ v1 ∨ v4 ∨ v47 ∨ ¬v12 ∨ v13 ∨ v5 ∨ v8 ∨ v14 ∨ v11)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c390 : v12 ∨ v15 ∨ v18 ∨ v46 ∨ v1 ∨ v4 ∨ v5 ∨ v10 ∨ v8 ∨ v17 ∨ v9 ∨ v45 ∨ ¬v11 ∨ v47)
    (c394 : v20 ∨ v27 ∨ v18 ∨ v25 ∨ v26 ∨ v12 ∨ ¬v19 ∨ v13)
    (c396 : v49 ∨ v47 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v7 ∨ v13)
    (c430 : ¬v9 ∨ v8 ∨ v3 ∨ v1 ∨ v15 ∨ v16 ∨ v10 ∨ v2)
    (c462 : ¬v20 ∨ v27 ∨ v26 ∨ v14 ∨ v19 ∨ v28 ∨ v21 ∨ v13)
    (c465 : ¬v12 ∨ v20 ∨ v18 ∨ v19 ∨ v4 ∨ v11 ∨ v13 ∨ v5)
    (c470 : ¬v14 ∨ v21 ∨ v1 ∨ v20 ∨ v8 ∨ v15 ∨ v7 ∨ v13)
    (c479 : v12 ∨ ¬v4 ∨ v3 ∨ v5 ∨ v46 ∨ v47 ∨ v10 ∨ v11)
    (c489 : ¬v20 ∨ v27 ∨ v19 ∨ v26 ∨ v12 ∨ v13 ∨ v28 ∨ v21)
    (c496 : v15 ∨ v19 ∨ v25 ∨ v5 ∨ v18 ∨ v14 ∨ v8 ∨ v11 ∨ v13 ∨ ¬v12 ∨ v6 ∨ v1 ∨ v26 ∨ v27)
    (c508 : ¬v19 ∨ v20 ∨ v18 ∨ v26 ∨ v25 ∨ v12 ∨ v27 ∨ v11)
    (c515 : ¬v11 ∨ v9 ∨ v5 ∨ v12 ∨ v4 ∨ v17 ∨ v2 ∨ v10 ∨ v16 ∨ v18 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c518 : v22 ∨ ¬v17 ∨ v25 ∨ v18 ∨ v24 ∨ v16 ∨ v8 ∨ v10 ∨ v15 ∨ v9 ∨ v31 ∨ v37 ∨ v38 ∨ v39)
    (c532 : v10 ∨ ¬v18 ∨ v17 ∨ v25 ∨ v26 ∨ v19 ∨ v24 ∨ v11)
    (c534 : v44 ∨ v43 ∨ v7 ∨ v14 ∨ v8 ∨ v2 ∨ ¬v1 ∨ v9)
    (c542 : v49 ∨ v12 ∨ v5 ∨ v47 ∨ ¬v6 ∨ v7 ∨ v48 ∨ v13)
    : (v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46) ∧ (v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (¬v4 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v19 ∨ ¬v4 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v3 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49) ∧ (v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v48 ∨ ¬v3 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v49) ∧ (¬v20 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28) ∧ (¬v3 ∨ ¬v5 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v49) ∧ (v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46) ∧ (v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49) ∧ (v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26) ∧ (v25 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45) ∧ (v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46) ∧ (v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16) ∧ (¬v23 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26) ∧ (v19 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28) := by
  have c544 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46 := by
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
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
    have u4 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n7
    rcases c47 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c545 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
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
    have u4 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n8
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    have u6 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n12
    rcases c24 with a|a|a
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c546 : v20 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : v13 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
    have u4 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n8
    rcases c54 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c547 : ¬v4 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v5 := by
      rcases c479 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u4
    have u6 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n6
    rcases c31 with a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u6 a
  have c548 : v19 ∨ ¬v4 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v3 := by
      rcases c546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v13 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u3 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n8
    have u4 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u6 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n10
    have u7 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n15
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u2
    rcases c55 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c549 : v4 ∨ v3 ∨ v5 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n10
    have u2 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v18 := by
      rcases c465 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u9 : v6 := by
      rcases c352 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n7
    have u11 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u12 : v1 := by
      rcases c371 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u5
    have u13 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u9 a
    have u14 : ¬v7 := by
      rcases c14 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
    have u15 : v49 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u9 a
      · exact absurd a n14
      · exact absurd a u14
      · exact absurd a u4
    have u16 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u15 a
    rcases c534 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd a u3
  have c550 : v3 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n15
      · exact absurd a n11
    have u2 : ¬v1 := by
      rcases c12 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u5 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n20
      · exact absurd a n16
    have u6 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v15 := by
      rcases c470 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a n2
    have u10 : v16 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u7
      · exact a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a u3
    have u11 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n10
    rcases c58 with a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd u11 a
  have c551 : v21 ∨ v3 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : ¬v4 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u2 : v5 := by
      rcases c549 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u3 : v13 := by
      rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n26
      · exact absurd a n27
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v6 := by
      rcases c257 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n26
      · exact absurd a u1
      · exact a
      · exact absurd u2 a
      · exact absurd a n25
      · exact absurd a u6
      · exact absurd a n24
    have u8 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n27
      · exact absurd a n21
    rcases c33 with a|a|a
    · exact absurd u2 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c552 : ¬v3 ∨ v4 ∨ ¬v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n6
    have u5 : v2 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u1
    rcases c16 with a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c553 : v21 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : ¬v4 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u2 : v3 := by
      rcases c551 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n24
      · exact absurd a n25
      · exact absurd a n26
    have u3 : ¬v13 := by
      rcases c552 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u4 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n25
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n19
      · exact absurd a n13
    have u5 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v5 := by
      rcases c27 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u7 : v12 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n26
      · exact a
      · exact absurd a u6
      · exact absurd a n24
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a n25
      · exact absurd a u3
    have u8 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n26
      · exact absurd a n24
      · exact absurd a u6
      · exact a
      · exact absurd u4 a
      · exact absurd a n25
      · exact absurd a u5
      · exact absurd a u3
    rcases c55 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c554 : v5 ∨ ¬v3 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
    have u2 : ¬v7 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : v12 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n2
    have u4 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n2
    rcases c55 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c555 : v23 ∨ ¬v3 ∨ ¬v13 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n13
    have u6 : v18 := by
      rcases c508 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u4
    have u7 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a u7
  have c556 : v48 ∨ ¬v3 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v13 := by
      rcases c555 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u2 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n11
    have u3 : v5 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n18
    rcases c27 with a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u3 a
  have c557 : v23 ∨ v3 ∨ v5 ∨ ¬v6 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v7 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n18
      · exact absurd n3 a
      · exact a
      · exact absurd a n19
      · exact absurd a n5
    have u2 : v18 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n11
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n5
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u4 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u2 a
    have u5 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u2 a
      · exact absurd n6 a
      · exact a
    have u6 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a u3
    have u7 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a n15
      · exact absurd a n13
    rcases c42 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c558 : v25 ∨ v13 ∨ ¬v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n24
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n18
      · exact absurd a n13
    have u2 : ¬v3 := by
      rcases c556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
      · exact absurd a n25
    have u3 : ¬v5 := by
      rcases c550 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
    have u4 : v12 := by
      rcases c557 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v4 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n21
      · exact absurd a u5
      · exact absurd a n23
      · exact absurd a u2
      · exact absurd a n22
      · exact absurd a u6
    have u8 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n21
      · exact absurd a n16
      · exact absurd a n11
    have u9 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n12
    rcases c83 with a|a|a
    · exact absurd u9 a
    · exact absurd n2 a
    · exact absurd u8 a
  have c559 : v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v19 := by
      rcases c553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v3 := by
      rcases c556 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
      · exact absurd a n25
    have u3 : v13 := by
      rcases c558 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
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
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u4 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v18 := by
      rcases c508 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
    have u8 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n21
      · exact absurd a n15
      · exact absurd a n9
    rcases c83 with a|a|a
    · exact absurd u7 a
    · exact absurd u1 a
    · exact absurd u8 a
  have c560 : ¬v20 ∨ v3 ∨ ¬v13 ∨ v21 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v4 := by
      rcases c547 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n7
    have u5 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n8
    rcases c84 with a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v12 := by
      rcases c489 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
    have u2 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
  have c562 : ¬v20 ∨ v3 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v13 := by
      rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v19 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u4 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u5 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n10
    have u7 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v4 := by
      rcases c222 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u4
    have u11 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n17
      · exact a
    have u12 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n21
      · exact absurd a n16
    rcases c20 with a|a|a
    · exact absurd u12 a
    · exact absurd u11 a
    · exact absurd u10 a
  have c563 : ¬v3 ∨ ¬v5 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v4 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n5
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    rcases c350 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a n7
  have c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
    rcases c54 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c565 : ¬v3 ∨ ¬v13 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v30 ∨ v32 ∨ v37 ∨ v39 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
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
    rcases c15 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
    have u4 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
    rcases c46 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c567 : v21 ∨ ¬v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v3 := by
      rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v5 := by
      rcases c563 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u3 : v19 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n21
    have u4 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u6 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
    have u8 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
    have u9 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
    have u10 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n10
    have u11 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v2 := by
      rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
    have u17 : v1 := by
      rcases c390 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n20
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n19
      · exact absurd u10 a
      · exact absurd a n21
    have u18 : v7 := by
      rcases c296 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u4
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
    rcases c5 with a|a|a
    · exact absurd u17 a
    · exact absurd u16 a
    · exact absurd u18 a
  have c568 : v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v20 := by
      rcases c567 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    rcases c559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
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
  have c569 : ¬v21 ∨ v4 ∨ ¬v13 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n5
    have u5 : ¬v17 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c90 with a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
    rcases c370 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c570 : v13 ∨ v4 ∨ ¬v19 ∨ ¬v21 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u3 : v12 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
    have u4 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
    rcases c51 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c571 : ¬v3 ∨ v4 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n6
    have u5 : v2 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u2
    rcases c16 with a|a|a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v10 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n1
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    rcases c314 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c573 : v24 ∨ ¬v3 ∨ v4 ∨ ¬v21 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v13 := by
      rcases c569 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u2 : ¬v19 := by
      rcases c570 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    have u3 : ¬v11 := by
      rcases c571 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n7
    have u5 : v17 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    rcases c85 with a|a|a
    · exact absurd n3 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c574 : v8 ∨ v1 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n5 a
      · exact a
    rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n11
    · exact absurd a n12
  have c575 : v8 ∨ v1 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n5 a
      · exact a
    rcases c574 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c576 : v25 ∨ ¬v3 ∨ ¬v4 ∨ v19 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : v20 := by
      rcases c546 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
    have u6 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u5 a
    rcases c575 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd u5 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c577 : v27 ∨ ¬v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v4 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v19 := by
      rcases c576 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
    have u3 : ¬v6 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
    have u7 : ¬v13 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n19
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n14
    · exact absurd a n10
  have c578 : ¬v21 ∨ v3 ∨ ¬v19 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
    have u5 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u4 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u5
  have c579 : v13 ∨ ¬v4 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n0
    have u4 : v12 := by
      rcases c542 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
    rcases c55 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c580 : ¬v4 ∨ v3 ∨ v13 ∨ v19 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n21
      · exact a
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n12
    have u3 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u5 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n10
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n11
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n20
      · exact absurd a n15
    have u9 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n17
      · exact a
    rcases c19 with a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd n0 a
  have c581 : ¬v13 ∨ v3 ∨ ¬v21 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
    have u5 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u4 a
    have u6 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n2 a
      · exact absurd u4 a
      · exact a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u4 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u3
  have c582 : v19 ∨ v4 ∨ v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v18 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
    have u2 : v17 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c85 with a|a|a
    · exact absurd n3 a
    · exact absurd u2 a
    · exact absurd u1 a
  have c583 : v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v21 := by
      rcases c568 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v3 := by
      rcases c577 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : ¬v13 := by
      rcases c581 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n19
    have u4 : ¬v19 := by
      rcases c578 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n19
    have u5 : ¬v4 := by
      rcases c580 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u6 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n20
    have u7 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v14 := by
      rcases c53 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n19
      · exact absurd a n13
      · exact absurd a n7
    have u11 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u10 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u3
  have c584 : v22 ∨ v4 ∨ v19 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v11 := by
      rcases c582 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v3 := by
      rcases c573 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u6 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n8
    have u7 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u8 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u6 a
    have u9 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact absurd u6 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c585 : v22 ∨ v3 ∨ ¬v11 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v31 ∨ v37 ∨ v38 ∨ v39 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v17 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n6
    have u5 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    have u6 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    have u7 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact absurd u4 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    rcases c430 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
  have c587 : v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v15 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v9 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n8
      · exact a
    have u2 : v5 := by
      rcases c231 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n2
    have u3 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    rcases c586 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
  have c588 : ¬v21 ∨ v3 ∨ ¬v4 ∨ v11 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v27 ∨ v28 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u2 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n4 a
    have u4 : ¬v20 := by
      rcases c88 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u5 : v10 := by
      rcases c587 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u5 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u6
  have c589 : ¬v23 ∨ v19 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v4 := by
      rcases c584 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
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
    have u3 : ¬v3 := by
      rcases c576 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u4 : ¬v11 := by
      rcases c585 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
    have u5 : ¬v17 := by
      rcases c588 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u6 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n8
    have u7 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v6 := by
      rcases c579 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u2 a
      · exact a
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u12 : v5 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n20
      · exact absurd a u3
      · exact a
      · exact absurd u2 a
      · exact absurd a n19
      · exact absurd a n18
      · exact absurd a u4
    have u13 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n21
      · exact a
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a n11
    have u14 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
    have u15 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
    rcases c386 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a u3
  have c590 : ¬v23 ∨ ¬v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v19 := by
      rcases c589 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
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
    have u3 : ¬v15 := by
      rcases c71 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u5 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u4
  have c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c67 with a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd n3 a
  have c592 : v19 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : ¬v20 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n22
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n17
      · exact absurd a n12
    have u4 : ¬v4 := by
      rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u5 : ¬v7 := by
      rcases c544 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
    have u6 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n5
      · exact absurd a n10
    have u7 : v14 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n23
      · exact absurd a n18
    rcases c53 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u3
  exact ⟨c544, c545, c546, c547, c548, c549, c550, c554, c556, c560, c561, c563, c564, c565, c566, c572, c576, c579, c581, c582, c583, c586, c590, c591, c592, c593⟩
