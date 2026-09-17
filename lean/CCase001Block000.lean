import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 0-49 of the 2915-step refutation of ccase001: 102 core clauses and 0 earlier-derived ones give 26 more. -/
theorem CCase001_block000
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v30 v31 v32 v33 v34 v35 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v9 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c108 : ¬v23 ∨ ¬v24)
    (c113 : ¬v24 ∨ ¬v25)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c216 : ¬v21 ∨ v28 ∨ v8 ∨ v14 ∨ v20 ∨ v27 ∨ v13 ∨ v15)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c232 : v4 ∨ v9 ∨ v17 ∨ v16 ∨ v18 ∨ v3 ∨ ¬v10 ∨ v11)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c245 : ¬v23 ∨ v30 ∨ v8 ∨ v33 ∨ v9 ∨ v15 ∨ v16 ∨ v24 ∨ v22 ∨ v25 ∨ v19 ∨ v10 ∨ v31 ∨ v26)
    (c254 : ¬v25 ∨ v18 ∨ v19 ∨ v26 ∨ v17 ∨ v24 ∨ v32 ∨ v33)
    (c263 : ¬v20 ∨ v35 ∨ v9 ∨ v27 ∨ v33 ∨ v34 ∨ v21 ∨ v15 ∨ v16 ∨ v19 ∨ v13 ∨ v26 ∨ v14 ∨ v23)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c315 : v24 ∨ ¬v17 ∨ v25 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c333 : ¬v24 ∨ v38 ∨ v18 ∨ v23 ∨ v17 ∨ v30 ∨ v33 ∨ v26 ∨ v31 ∨ v25 ∨ v19 ∨ v44 ∨ v45 ∨ v46)
    (c335 : v11 ∨ v12 ∨ v24 ∨ v17 ∨ v25 ∨ v26 ∨ ¬v18 ∨ v19)
    (c336 : ¬v25 ∨ v32 ∨ v17 ∨ v33 ∨ v24 ∨ v26 ∨ v31 ∨ v18)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c401 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v25)
    (c413 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v23 ∨ v17 ∨ v25 ∨ v16)
    (c427 : v13 ∨ v9 ∨ v24 ∨ v18 ∨ v4 ∨ v25 ∨ v10 ∨ v20 ∨ v2 ∨ ¬v17 ∨ v3 ∨ v19 ∨ v16 ∨ v27)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c482 : v8 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v15 ∨ v10)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c558 : ¬v20 ∨ v27 ∨ v12 ∨ v26 ∨ v28 ∨ v21 ∨ v13 ∨ v19)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c600 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v10 ∨ v19 ∨ v17)
    (c604 : v10 ∨ v11 ∨ v23 ∨ v24 ∨ ¬v17 ∨ v16 ∨ v25 ∨ v18)
    (c605 : ¬v24 ∨ v31 ∨ v17 ∨ v23 ∨ v30 ∨ v16 ∨ v32 ∨ v25)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    : (v18 ∨ ¬v6 ∨ ¬v7 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47) ∧ (¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v21 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ ¬v10 ∨ ¬v11 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v47 ∨ v48) ∧ (v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48) ∧ (v12 ∨ ¬v10 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27) ∧ (v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48) ∧ (¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31) ∧ (¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49) ∧ (¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47) ∧ (v23 ∨ v5 ∨ v10 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v10 ∨ v11 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49) ∧ (v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v11 ∨ ¬v2 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v20 ∨ ¬v25 ∨ v26 ∨ v32 ∨ v33) ∧ (¬v19 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33) ∧ (v23 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v2 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) := by
  have c611 : v18 ∨ ¬v6 ∨ ¬v7 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    have u5 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
    have u6 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n13
    rcases c54 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    have u5 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
    have u6 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n7
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n13
    rcases c17 with a|a|a
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c614 : v20 ∨ ¬v2 ∨ ¬v3 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v4 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n16
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
    have u5 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n11
    have u6 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n12
    rcases c70 with a|a|a
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd u5 a
  have c615 : v21 ∨ ¬v4 ∨ ¬v5 ∨ v17 ∨ v20 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n13
    have u5 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
    have u6 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n15
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n9
    rcases c69 with a|a|a
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c616 : ¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    rcases c34 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v5 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
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
    have u2 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n14
    have u3 : ¬v10 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
    have u5 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u4 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact absurd u4 a
      · exact a
    have u7 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n16
    have u8 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n19
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n15
      · exact absurd a n11
    rcases c73 with a|a|a
    · exact absurd u2 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c618 : v20 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n10
    have u2 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n15
    have u3 : ¬v2 := by
      rcases c614 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u1 a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n20
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact a
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a n21
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n16
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n13
    rcases c29 with a|a|a
    · exact absurd u7 a
    · exact absurd u1 a
    · exact absurd u8 a
  have c619 : v21 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u2 : v10 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u3 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n22
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n16
    have u4 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u3 a
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n25
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n19
    have u8 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n7
      · exact a
      · exact absurd a n23
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a n17
    have u9 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n24
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n18
      · exact absurd a n13
    rcases c35 with a|a|a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd u7 a
  have c620 : v20 ∨ ¬v10 ∨ ¬v11 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n12
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
    have u6 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    rcases c23 with a|a|a
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c621 : v21 ∨ ¬v11 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v10 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
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
    have u3 : v9 := by
      rcases c401 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n8
    have u4 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u5 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact a
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n19
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n14
    have u9 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n9
      · exact a
      · exact absurd a n21
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n17
    rcases c35 with a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd u7 a
  have c622 : v19 ∨ v18 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : v17 := by
      rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
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
      rcases c86 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c621 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
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
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd a n27
    have u4 : v10 := by
      rcases c604 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n1
    have u5 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n12
      · exact absurd a n24
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n18
    have u6 : ¬v12 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n26
      · exact absurd a n27
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n7
      · exact a
      · exact absurd a n25
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n19
    have u8 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u5 a
    have u9 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u7 a
      · exact absurd u5 a
      · exact a
    have u10 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n26
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n20
      · exact absurd a n14
    have u11 : v14 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u8
    rcases c69 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u4 a
  have c623 : v21 ∨ ¬v10 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v11 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
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
    have u4 : v12 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n2 a
      · exact absurd a n3
    have u5 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u8 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a u2
      · exact absurd a n5
    have u9 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n18
    have u10 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n21
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n17
      · exact absurd a n13
    rcases c25 with a|a|a
    · exact absurd u8 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c624 : v19 ∨ v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26⟩ := hc
    have u1 : v18 := by
      rcases c622 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c623 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
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
    have u5 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n16
      · exact absurd a n22
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n10
    have u6 : v11 := by
      rcases c600 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u2
    have u7 : ¬v13 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u6 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n25
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n19
      · exact absurd a n13
    have u9 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v2 := by
      rcases c18 with a|a|a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u8 a
    have u12 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n25
      · exact absurd a n26
      · exact absurd u8 a
      · exact absurd a u11
      · exact a
      · exact absurd a n24
      · exact absurd a u9
      · exact absurd a u7
    have u13 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n21
      · exact absurd a u3
      · exact absurd a n3
    have u14 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n26
      · exact a
      · exact absurd u8 a
      · exact absurd a n25
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n24
      · exact absurd a u9
    rcases c62 with a|a|a
    · exact absurd u12 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c625 : ¬v3 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
    rcases c18 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v11 := by
      rcases c625 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n12
    have u3 : ¬v6 := by
      rcases c27 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact a
    have u5 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n16
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
    have u6 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    rcases c61 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd n2 a
  have c627 : v21 ∨ ¬v3 ∨ ¬v19 ∨ v20 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
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
    have u4 : v11 := by
      rcases c577 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u3
    have u5 : v13 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n7
    have u6 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u5 a
    have u7 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u8 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a u1
      · exact absurd a n4
    have u9 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n16
    rcases c19 with a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd u9 a
  have c628 : v12 ∨ ¬v10 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v11 := by
      rcases c577 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
    have u3 : v13 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    rcases c65 with a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd u2 a
  have c629 : v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v19 := by
      rcases c624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v3 := by
      rcases c627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n24
      · exact absurd a n25
    have u6 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n21
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n9
    have u7 : v12 := by
      rcases c628 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v11 := by
      rcases c64 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v4 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n24
      · exact absurd a n25
    rcases c232 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd u6 a
    · exact absurd a u9
  have c630 : ¬v4 ∨ ¬v12 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    rcases c16 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c631 : v31 ∨ v11 ∨ ¬v12 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n20
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n16
    have u6 : ¬v14 := by
      rcases c630 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n17
    have u8 : v13 := by
      rcases c520 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n10
      · exact a
      · exact absurd a n4
    have u9 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n2 a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n11
    · exact absurd a n14
    · exact absurd a n18
    · exact absurd a u1
    · exact absurd a n5
  have c632 : ¬v20 ∨ ¬v12 ∨ v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v11 := by
      rcases c631 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
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
    have u5 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n1 a
    have u6 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u4 a
    rcases c263 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n14
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n3
  have c633 : v21 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : v20 := by
      rcases c629 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c632 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
    have u7 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n22
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n16
    have u8 : v13 := by
      rcases c558 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u3
    have u9 : ¬v11 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u10 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n9
      · exact absurd a n21
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n15
    have u11 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u10 a
    have u12 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u7 a
      · exact absurd u10 a
      · exact a
    have u13 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n14
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n8
    have u14 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n19
      · exact absurd a u2
      · exact absurd a n1
    rcases c56 with a|a|a
    · exact absurd u14 a
    · exact absurd u8 a
    · exact absurd u13 a
  have c634 : v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
    have u5 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n5
    have u6 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n16
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
    rcases c56 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u4 a
  have c635 : v19 ∨ v4 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v10 := by
      rcases c618 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
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
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u2 : v11 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n23
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n18
    rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd a n2
    · exact absurd a n0
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
    · exact absurd a n24
    · exact absurd a n25
  have c636 : v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v21 := by
      rcases c633 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : v4 := by
      rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u9 : ¬v5 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n22
    have u10 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n21
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n15
    have u11 : ¬v3 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u10 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n22
    have u12 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n13
      · exact absurd a n19
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n7
    have u13 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u12 a
    have u15 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u12 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a u2
  have c637 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n1 a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
  have c638 : v35 ∨ v16 ∨ v17 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v15 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n2
    have u4 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u3 a
      · exact a
    rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n0
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
  have c639 : ¬v6 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    rcases c35 with a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd u4 a
  have c640 : v19 ∨ ¬v6 ∨ ¬v10 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v11 := by
      rcases c639 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n21
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n14
    have u3 : ¬v12 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
    have u4 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n19
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n15
  have c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v6 := by
      rcases c640 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
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
    have u2 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n19
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n15
      · exact absurd a n11
    have u3 : ¬v11 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u5 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
    have u6 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n9
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n13
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n16
    have u8 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a n18
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n14
    rcases c33 with a|a|a
    · exact absurd u8 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c642 : v27 ∨ ¬v5 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v24 ∨ v25 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v9 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n5 a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u7 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u9 : v8 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
    have u10 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n14
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n10
    rcases c42 with a|a|a
    · exact absurd u9 a
    · exact absurd u1 a
    · exact absurd u10 a
  have c643 : v10 ∨ ¬v11 ∨ ¬v13 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    rcases c245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n9
  have c644 : v10 ∨ ¬v5 ∨ v16 ∨ ¬v17 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v11 := by
      rcases c642 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v13 := by
      rcases c643 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u5 a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u7 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n13
    have u8 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u10 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u12 : v9 := by
      rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd n3 a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n8
    have u13 : v8 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n0
    rcases c40 with a|a|a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u5 a
  have c645 : v10 ∨ ¬v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v19 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n6 a
    rcases c245 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a n10
    · exact absurd a u2
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n9
  have c646 : v27 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v17 := by
      rcases c638 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact a
      · exact absurd n2 a
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
    have u3 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u8 : ¬v5 := by
      rcases c644 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n22
    have u9 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n21
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n15
    have u10 : ¬v11 := by
      rcases c645 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u11 : v9 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u1
    have u12 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n20
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n14
    have u13 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u9 a
    have u14 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u9 a
    have u15 : v3 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n20
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n21
      · exact absurd a n19
      · exact absurd u12 a
    have u16 : v6 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd u9 a
      · exact absurd a u8
    have u17 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact a
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n17
    rcases c31 with a|a|a
    · exact absurd u15 a
    · exact absurd u17 a
    · exact absurd u16 a
  have c647 : v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v23 := by
      rcases c636 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v16 := by
      rcases c646 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
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
    have u3 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u2 a
      · exact a
    rcases c619 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
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
    · exact absurd a n22
  have c648 : ¬v24 ∨ ¬v16 ∨ v19 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd n0 a
  have c650 : v23 ∨ v5 ∨ v10 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n22
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n17
    have u2 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n21
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n16
    have u3 : ¬v3 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n23
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n21
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n22
    · exact absurd a n20
    · exact absurd u2 a
  have c651 : v10 ∨ v11 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v16 := by
      rcases c648 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v17 := by
      rcases c605 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n4
    have u4 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n19
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n14
    have u8 : v5 := by
      rcases c650 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u5
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u9 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u10 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u11 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u12 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u13 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n21
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n11
    have u14 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a u1
    have u15 : ¬v8 := by
      rcases c42 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u13 a
    rcases c482 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u14 a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a n0
  have c652 : ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n1 a
    rcases c413 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u1
  have c653 : ¬v5 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v21 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u4 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
    rcases c24 with a|a|a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u3 a
  have c654 : ¬v11 ∨ ¬v5 ∨ v16 ∨ v20 ∨ v21 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v13 := by
      rcases c653 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u2 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    have u5 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n5
    have u6 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u4
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n13
    rcases c60 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd n0 a
  have c655 : v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v24 := by
      rcases c647 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c652 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v16 := by
      rcases c648 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u5 : v17 := by
      rcases c605 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v10 := by
      rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u7
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u10 : v11 := by
      rcases c651 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u11 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u12 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n19
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n13
    have u13 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u12 a
    have u16 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a n8
    have u17 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n21
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n15
    have u18 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n16
      · exact absurd a u4
      · exact absurd a u2
    rcases c25 with a|a|a
    · exact absurd u18 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c656 : ¬v11 ∨ ¬v2 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
    have u2 : v14 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n3 a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n4
    have u3 : v12 := by
      rcases c609 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
    rcases c71 with a|a|a
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd n0 a
  have c657 : ¬v20 ∨ ¬v25 ∨ v26 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n1 a
    rcases c254 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
  have c658 : ¬v19 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n1 a
    rcases c336 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
  have c659 : v23 ∨ ¬v11 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : ¬v5 := by
      rcases c654 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n24
      · exact absurd a n25
    have u2 : ¬v13 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v10 := by
      rcases c620 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
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
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n17
      · exact absurd a n22
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
    have u5 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n23
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n18
    have u6 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n24
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n19
      · exact absurd a n14
    have u7 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n1 a
    rcases c440 with a|a|a|a|a|a|a|a
    · exact absurd a n24
    · exact absurd a n25
    · exact absurd u6 a
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n23
    · exact absurd a u7
    · exact absurd a u2
  have c660 : v4 ∨ v2 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
    have u4 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n1
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a n4
  have c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n11
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    rcases c73 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  exact ⟨c611, c612, c616, c617, c618, c619, c620, c626, c628, c634, c637, c639, c641, c646, c649, c650, c651, c652, c654, c655, c656, c657, c658, c659, c660, c661⟩
