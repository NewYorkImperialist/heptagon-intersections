import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 50-99 of the 2559-step refutation of ccase003: 109 core clauses and 8 earlier-derived ones give 25 more. -/
theorem CCase003_block001
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c20 : ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v7 ∨ ¬v5 ∨ ¬v3)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
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
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c171 : ¬v48 ∨ ¬v43)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c205 : ¬v21 ∨ v22 ∨ v28 ∨ v14 ∨ v8 ∨ v13 ∨ v20 ∨ v15)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c221 : ¬v26 ∨ v34 ∨ v25 ∨ v32 ∨ v20 ∨ v33 ∨ v19 ∨ v27)
    (c236 : v3 ∨ v11 ∨ v45 ∨ v46 ∨ v5 ∨ v47 ∨ ¬v4 ∨ v10)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c258 : ¬v21 ∨ v22 ∨ v28 ∨ v14 ∨ v8 ∨ v15 ∨ v27 ∨ v20)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c290 : ¬v20 ∨ v21 ∨ v14 ∨ v27 ∨ v28 ∨ v12 ∨ v19 ∨ v13)
    (c306 : v16 ∨ ¬v17 ∨ v25 ∨ v24 ∨ v9 ∨ v18 ∨ v10 ∨ v11)
    (c320 : v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v26 ∨ v33 ∨ v30 ∨ v17 ∨ v19 ∨ v18 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c356 : ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v48 ∨ v4 ∨ v12 ∨ v13)
    (c373 : v22 ∨ v27 ∨ v12 ∨ v6 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v21 ∨ ¬v20 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c378 : v23 ∨ v16 ∨ v24 ∨ v25 ∨ v18 ∨ v10 ∨ v9 ∨ ¬v17)
    (c380 : v12 ∨ ¬v18 ∨ v25 ∨ v24 ∨ v17 ∨ v19 ∨ v10 ∨ v11)
    (c387 : ¬v16 ∨ v15 ∨ v24 ∨ v10 ∨ v9 ∨ v17 ∨ v23 ∨ v22)
    (c388 : v23 ∨ v30 ∨ v17 ∨ v25 ∨ v31 ∨ v18 ∨ ¬v24 ∨ v16)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c469 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v31 ∨ v47 ∨ v46 ∨ v38)
    (c482 : ¬v11 ∨ v19 ∨ v18 ∨ v5 ∨ v4 ∨ v10 ∨ v12 ∨ v17)
    (c487 : v15 ∨ v21 ∨ v1 ∨ v20 ∨ ¬v14 ∨ v13 ∨ v7 ∨ v8)
    (c493 : v11 ∨ v6 ∨ v46 ∨ v2 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v18 ∨ v16 ∨ v13 ∨ v9 ∨ v10 ∨ v47 ∨ v48)
    (c528 : ¬v16 ∨ v15 ∨ v24 ∨ v8 ∨ v9 ∨ v17 ∨ v23 ∨ v22)
    (c533 : ¬v26 ∨ v33 ∨ v25 ∨ v18 ∨ v34 ∨ v32 ∨ v27 ∨ v19)
    (c541 : ¬v21 ∨ v22 ∨ v28 ∨ v13 ∨ v14 ∨ v27 ∨ v20 ∨ v15)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c563 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v17 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c568 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c608 : ¬v5 ∨ v6 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c610 : v27 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c611 : v5 ∨ v6 ∨ v11 ∨ v12 ∨ ¬v19 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c612 : ¬v4 ∨ v5 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    : (¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28) ∧ (v27 ∨ v6 ∨ v7 ∨ v14 ∨ ¬v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28) ∧ (v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24) ∧ (v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34) ∧ (¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24) ∧ (¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19) ∧ (¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21) ∧ (¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25) ∧ (v23 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (¬v7 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35) ∧ (v14 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v49) ∧ (v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v19 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v4 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v23 ∨ ¬v4 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47) ∧ (¬v5 ∨ v4 ∨ ¬v10 ∨ v12 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v13 ∨ ¬v17 ∨ v24 ∨ v25) := by
  have c613 : v31 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v19 ∨ v21 ∨ ¬v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v20 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
    have u2 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v25 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n13
      · exact a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n7
    have u8 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd u7 a
    have u9 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n9 a
      · exact absurd u7 a
      · exact a
    have u10 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a u4
    have u11 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n17
      · exact a
      · exact absurd a n11
    rcases c17 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd n3 a
  have c614 : ¬v26 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v19 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : v21 := by
      rcases c613 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v22 := by
      rcases c258 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u5
    have u7 : v25 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n13
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n7
    rcases c91 with a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c615 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd n0 a
      · exact a
    rcases c290 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n2
  have c616 : v19 ∨ v5 ∨ v6 ∨ ¬v7 ∨ v12 ∨ v14 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v13 := by
      rcases c614 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n16
      · exact a
      · exact absurd a n20
      · exact absurd a n13
    rcases c615 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c617 : v12 ∨ v6 ∨ ¬v7 ∨ v11 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v5 := by
      rcases c608 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v39 := by
      rcases c469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n8
      · exact absurd a n21
      · exact absurd a n20
      · exact absurd a n14
    have u3 : ¬v19 := by
      rcases c611 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n22
    have u4 : v14 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd n4 a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v4 := by
      rcases c612 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u9 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n16
      · exact a
      · exact absurd a n22
      · exact absurd a n11
    have u10 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v22 := by
      rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u14 : v25 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n20
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u2
    rcases c91 with a|a|a
    · exact absurd u13 a
    · exact absurd n4 a
    · exact absurd u14 a
  have c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    rcases c615 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c619 : v12 ∨ v6 ∨ ¬v7 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v11 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
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
    have u2 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n15
    · exact absurd a u4
    · exact absurd a n21
    · exact absurd a n10
  have c620 : ¬v7 ∨ v6 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v12 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
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
    have u2 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v1 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n21
      · exact absurd a n20
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a u3
    have u9 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n14
      · exact a
      · exact absurd a n20
      · exact absurd a n9
    have u10 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v5 := by
      rcases c12 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u9 a
    rcases c493 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n18
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd u1 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n19
    · exact absurd a n20
  have c621 : v27 ∨ v6 ∨ v7 ∨ v14 ∨ ¬v26 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n3
      · exact a
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n5
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v25 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u2
    have u7 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n8
    have u8 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u6 a
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u5
  have c622 : v6 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v7 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v14 := by
      rcases c621 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n13
      · exact a
      · exact absurd a n19
      · exact absurd a n8
    have u7 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v22 := by
      rcases c373 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u12 : v25 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n7
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u10
    rcases c91 with a|a|a
    · exact absurd u11 a
    · exact absurd n1 a
    · exact absurd u12 a
  have c623 : ¬v26 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ ¬v20 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n13
      · exact a
      · exact absurd a n15
      · exact absurd a n8
      · exact absurd a u1
    have u6 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n7
    have u7 : v25 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n10
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u4
    rcases c97 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd u5 a
  have c624 : ¬v14 ∨ v2 ∨ v3 ∨ ¬v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n6
      · exact a
    have u6 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n5
    rcases c66 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c625 : ¬v26 ∨ ¬v6 ∨ v7 ∨ ¬v14 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : v5 := by
      rcases c559 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n18
      · exact a
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n19
      · exact absurd n1 a
      · exact absurd a u5
    have u7 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
    have u9 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v20 := by
      rcases c623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v25 := by
      rcases c624 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v19 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
      · exact a
      · exact absurd a n4
    have u13 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a u11
      · exact a
      · exact absurd a n8
      · exact absurd a n13
    rcases c75 with a|a
    · exact absurd u13 a
    · exact absurd u12 a
  have c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v13 := by
      rcases c541 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n2
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    rcases c258 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
  have c627 : v27 ∨ ¬v6 ∨ v7 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v14 := by
      rcases c625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u1
      · exact a
      · exact absurd a n20
      · exact absurd a n14
      · exact absurd a n4
    have u3 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n0
    have u7 : v22 := by
      rcases c626 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n4
    rcases c91 with a|a|a
    · exact absurd u7 a
    · exact absurd n3 a
    · exact absurd u6 a
  have c628 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n7
      · exact a
    have u2 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c568 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a n6
  have c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n0 a
      · exact a
    rcases c528 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
  have c630 : v2 ∨ v1 ∨ v3 ∨ ¬v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n5
  have c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v18 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
    have u2 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    rcases c221 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n3
  have c632 : ¬v26 ∨ ¬v6 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v7 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
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
    have u2 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u4 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : ¬v25 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v19 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v24 := by
      rcases c563 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u8
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v23 := by
      rcases c388 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a u7
    rcases c98 with a|a|a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c633 : v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v26 := by
      rcases c610 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v6 := by
      rcases c622 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c632 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
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
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c634 : v16 ∨ v9 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n3 a
    rcases c378 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n3 a
  have c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    rcases c634 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c636 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd n0 a
      · exact a
    rcases c387 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
  have c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
  have c638 : ¬v14 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    rcases c487 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u1
  have c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v14 := by
      rcases c638 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n3
  have c640 : v10 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a u1
    have u3 : ¬v16 := by
      rcases c636 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n15
      · exact a
      · exact absurd a n7
    have u5 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u2 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n19
    have u10 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n13
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v19 := by
      rcases c637 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u9
      · exact a
    have u14 : v15 := by
      rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a u9
      · exact absurd a n16
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n17
      · exact a
    rcases c63 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a n2
  have c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    rcases c205 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
  have c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    rcases c380 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
  have c644 : v23 ∨ v10 ∨ v22 ∨ v24 ∨ v25 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v9 := by
      rcases c640 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n16
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n12
    have u9 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
    have u10 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n18
    · exact absurd a n13
    · exact absurd a n5
  have c645 : v47 ∨ v10 ∨ ¬v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u4
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
    · exact absurd a n0
    · exact absurd a n16
  have c646 : ¬v7 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v5 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u3 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    rcases c637 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c647 : v25 ∨ v10 ∨ v19 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n4
    have u2 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n7
      · exact absurd a u2
    have u6 : ¬v7 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
    have u7 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n6
    have u8 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n13
    have u11 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact a
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n14
    rcases c24 with a|a|a
    · exact absurd u11 a
    · exact absurd u5 a
    · exact absurd u10 a
  have c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
  have c649 : v26 ∨ v10 ∨ v25 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n0
    have u3 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v24 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v23 := by
      rcases c320 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c99 with a|a|a
    · exact absurd n3 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c650 : v31 ∨ v10 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v26 := by
      rcases c645 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u2 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
    have u4 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v25 := by
      rcases c649 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
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
    have u7 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u6 a
    rcases c323 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
  have c651 : v14 ∨ v8 ∨ v9 ∨ v12 ∨ v13 ∨ v19 ∨ ¬v25 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u3 : ¬v23 := by
      rcases c102 with a|a|a
      · exact absurd n7 a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a n16
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n13
    have u6 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n8
    have u7 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n8
    have u9 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n15
      · exact a
      · exact absurd a n9
    rcases c22 with a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd u5 a
  have c652 : v14 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
    have u2 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n13
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n12
    have u6 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n7
    rcases c31 with a|a|a
    · exact absurd u6 a
    · exact absurd u2 a
    · exact absurd u5 a
  have c653 : v8 ∨ v9 ∨ v13 ∨ v14 ∨ ¬v26 ∨ ¬v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u4 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
    have u5 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u6 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n6
    have u7 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n11
      · exact a
      · exact absurd a n7
    have u8 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u11 : v43 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
    have u12 : v48 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n13
      · exact a
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n0
    rcases c171 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c654 : v28 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v10 := by
      rcases c650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
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
    have u2 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c653 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
    have u9 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v25 := by
      rcases c652 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    rcases c651 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd u10 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n17
  have c655 : v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c633 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
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
  have c656 : v4 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v3 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c343 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n3
  have c657 : v46 ∨ v4 ∨ ¬v7 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v18 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n0
    have u2 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
    have u7 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n7
      · exact a
      · exact absurd a n13
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n11
    rcases c356 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a u5
  have c658 : v19 ∨ ¬v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v4 := by
      rcases c657 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v5 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v3 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v2 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n17
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n13
    have u7 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    rcases c50 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c659 : ¬v4 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n10
      · exact a
      · exact absurd a n6
    have u7 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a u5
    rcases c14 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd n0 a
  have c660 : v23 ∨ ¬v4 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v12 := by
      rcases c659 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n12
    have u3 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u5 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n1 a
    have u6 : v10 := by
      rcases c628 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n13
    · exact absurd a u3
    · exact absurd a n7
  have c661 : ¬v5 ∨ v4 ∨ ¬v10 ∨ v12 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v6 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u3
    have u5 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u4 a
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n7
  have c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n1 a
    rcases c306 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
  exact ⟨c618, c621, c626, c628, c629, c631, c635, c636, c637, c638, c639, c641, c642, c643, c644, c646, c648, c652, c655, c656, c658, c659, c660, c661, c662⟩
