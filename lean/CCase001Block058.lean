import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2900-2914 of the 2915-step refutation of ccase001: 52 core clauses and 44 earlier-derived ones give a contradiction. -/
theorem CCase001_block058
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v38 v39 v40 v41 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c84 : ¬v15 ∨ ¬v20)
    (c86 : ¬v16 ∨ ¬v17)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c90 : ¬v16 ∨ ¬v21)
    (c91 : ¬v17 ∨ ¬v18)
    (c95 : ¬v18 ∨ ¬v19)
    (c105 : ¬v22 ∨ ¬v26)
    (c110 : ¬v26 ∨ ¬v23)
    (c114 : ¬v26 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c120 : ¬v26 ∨ ¬v27)
    (c124 : ¬v29 ∨ ¬v30)
    (c128 : ¬v34 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c140 : ¬v34 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c144 : ¬v34 ∨ ¬v35)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19)
    (c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46)
    (c1507 : v31 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46)
    (c1692 : ¬v5 ∨ ¬v3 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2335 : ¬v25 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v17)
    (c2344 : ¬v32 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2436 : ¬v32 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v18 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2437 : ¬v33 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2479 : v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v21 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2515 : ¬v17 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13)
    (c2517 : ¬v19 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2598 : ¬v25 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2601 : ¬v30 ∨ ¬v39 ∨ v45 ∨ v46)
    (c2630 : ¬v20 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2707 : ¬v34 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c2731 : v31 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c2740 : v17 ∨ v3 ∨ v10 ∨ v16 ∨ v29 ∨ v31 ∨ v32 ∨ v44 ∨ v45 ∨ v46)
    (c2822 : ¬v12 ∨ v1 ∨ v2 ∨ ¬v3 ∨ ¬v8 ∨ v9 ∨ v15 ∨ v44 ∨ v45 ∨ v46)
    (c2874 : ¬v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v10 ∨ v43 ∨ v44 ∨ v45)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2951 : ¬v17 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v14)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3140 : v49)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3197 : v11 ∨ v2 ∨ v4 ∨ v9 ∨ v16 ∨ v18)
    (c3341 : v2 ∨ v9 ∨ v10 ∨ ¬v27 ∨ v30)
    (c3434 : ¬v27 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v9 ∨ v10)
    (c3486 : v8)
    (c3492 : v10 ∨ v2 ∨ v9 ∨ v11 ∨ ¬v26 ∨ v30)
    (c3539 : ¬v34 ∨ v2 ∨ v6 ∨ v7 ∨ v14 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c3547 : v12)
    : False := by
  have c3548 : ¬v3 ∨ ¬v2 ∨ ¬v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v8 := c3486
    have u2 : v12 := c3547
    have u3 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u6 : v1 := by
      rcases c2517 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u4
    rcases c1 with a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c3549 : v5 ∨ v4 ∨ v6 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v8 := c3486
    have u9 : v12 := c3547
    have u10 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u14 : v19 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u9 a
      · exact a
    have u15 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c2515 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a u13
    have u17 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v2 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u15
    have u19 : ¬v3 := by
      rcases c3548 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u14 a
    have u20 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u21
    have u24 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u13
      · exact a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n3
    have u25 : ¬v32 := by
      rcases c2436 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c1070 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u5
  have c3550 : ¬v2 ∨ ¬v5 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v8 := c3486
    have u7 : v12 := c3547
    have u8 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1692 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u3
  have c3552 : v3 ∨ v2 ∨ ¬v4 ∨ v6 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v8 := c3486
    have u9 : v12 := c3547
    have u10 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u15 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd n2 a
    have u16 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u15 a
      · exact absurd n2 a
      · exact a
    have u17 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n2 a
    have u18 : ¬v17 := by
      rcases c2951 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a u14
    have u19 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : v15 := by
      rcases c1240 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd u8 a
      · exact absurd a u10
      · exact a
    have u21 : ¬v27 := by
      rcases c3434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
    have u22 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u22
    have u24 : v20 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u23
      · exact absurd a n4
    rcases c84 with a|a
    · exact absurd u20 a
    · exact absurd u24 a
  have c3553 : v2 ∨ ¬v4 ∨ v6 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v8 := c3486
    have u8 : v12 := c3547
    have u9 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u14 : v3 := by
      rcases c3552 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
    have u18 : ¬v19 := by
      rcases c2517 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u13
    have u19 : v15 := by
      rcases c2822 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd u14 a
      · exact absurd u7 a
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u19 a
      · exact a
    rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd u8 a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u6
  have c3554 : ¬v2 ∨ ¬v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := c3486
    have u6 : v12 := c3547
    have u7 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v5 := by
      rcases c3550 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd n1 a
  have c3555 : ¬v4 ∨ v6 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v2 := by
      rcases c3554 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3553 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c3556 : v34 ∨ v6 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v8 := c3486
    have u8 : v12 := c3547
    have u9 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v4 := by
      rcases c3555 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u14 : v5 := by
      rcases c3549 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n0
    have u15 : ¬v2 := by
      rcases c3550 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u10
    have u18 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u16
      · exact a
    have u19 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u19
  have c3557 : ¬v2 ∨ v6 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v8 := c3486
    have u7 : v12 := c3547
    have u8 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u6 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v5 := by
      rcases c3550 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v4 := by
      rcases c3554 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v34 := by
      rcases c3549 with a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n1
      · exact a
    have u15 : v19 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u7 a
      · exact a
    have u16 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v3 := by
      rcases c3548 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u15 a
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2731 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u4
  have c3558 : v6 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v8 := c3486
    have u9 : v12 := c3547
    have u10 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u14 : v34 := by
      rcases c3556 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u15 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v33 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v2 := by
      rcases c3557 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
    have u23 : v16 := by
      rcases c2006 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u24 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v27 := by
      rcases c3341 with a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u17
    have u27 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v28 := by
      rcases c2925 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u19
    have u29 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u23 a
      · exact a
    have u30 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u23 a
      · exact a
    have u31 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u23 a
      · exact a
    have u32 : v7 := by
      rcases c3539 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u22
      · exact absurd a n0
      · exact a
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u28
    have u33 : ¬v25 := by
      rcases c2335 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u23 a
      · exact absurd a u29
    rcases c1507 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u32 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u29
    · exact absurd a u25
    · exact absurd a u33
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a u5
  have c3559 : v2 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v8 := c3486
    have u8 : v12 := c3547
    have u9 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u13 : v6 := by
      rcases c3558 with a|a
      · exact a
      · exact absurd a n1
    have u14 : ¬v4 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v3 := by
      rcases c568 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u10
    have u16 : ¬v34 := by
      rcases c2707 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v20 := by
      rcases c2630 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v18 := by
      rcases c3197 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u19
      · exact a
    have u21 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v25 := by
      rcases c2598 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v33 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a u16
    rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a u5
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u6
    · exact absurd a u17
  have c3560 : ¬v2 ∨ ¬v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := c3486
    have u6 : v12 := c3547
    have u7 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v3 := by
      rcases c18 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c2874 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3561 : v26 := by
    by_contra hc
    have u1 : v6 := by
      rcases c3558 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v2 := by
      rcases c3560 with a|a
      · exact a
      · exact absurd u1 a
    rcases c3559 with a|a
    · exact absurd a u2
    · exact absurd a hc
  have c3562 : ¬v2 := by
    by_contra hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := c3486
    have u6 : v12 := c3547
    have u7 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v10 := by
      rcases c45 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v11 := by
      rcases c48 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u11 : v26 := c3561
    have u12 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
    have u17 : ¬v16 := by
      rcases c817 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u18 : ¬v5 := by
      rcases c3550 with a|a
      · exact absurd hc a
      · exact a
    have u19 : ¬v6 := by
      rcases c3560 with a|a
      · exact absurd hc a
      · exact a
    have u20 : ¬v4 := by
      rcases c3554 with a|a
      · exact absurd hc a
      · exact a
    have u21 : v34 := by
      rcases c3549 with a|a|a|a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact a
    have u22 : v19 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd u6 a
      · exact a
    have u23 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : v3 := by
      rcases c2740 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3548 with a|a|a
    · exact absurd u26 a
    · exact absurd hc a
    · exact absurd u22 a
  have u1 : v49 := c3140
  have u2 : ¬v43 := by
    rcases c173 with a|a
    · exact absurd u1 a
    · exact a
  have u3 : ¬v44 := by
    rcases c178 with a|a
    · exact absurd u1 a
    · exact a
  have u4 : ¬v45 := by
    rcases c182 with a|a
    · exact absurd u1 a
    · exact a
  have u5 : ¬v46 := by
    rcases c185 with a|a
    · exact absurd u1 a
    · exact a
  have u6 : ¬v48 := by
    rcases c188 with a|a
    · exact absurd u1 a
    · exact a
  have u7 : v8 := c3486
  have u8 : v12 := c3547
  have u9 : ¬v9 := by
    rcases c41 with a|a|a
    · exact absurd u7 a
    · exact a
    · exact absurd u8 a
  have u10 : ¬v10 := by
    rcases c45 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact a
  have u11 : ¬v11 := by
    rcases c48 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact a
  have u12 : ¬v13 := by
    rcases c51 with a|a|a
    · exact absurd u7 a
    · exact a
    · exact absurd u8 a
  have u13 : v26 := c3561
  have u14 : ¬v22 := by
    rcases c105 with a|a
    · exact a
    · exact absurd u13 a
  have u15 : ¬v23 := by
    rcases c110 with a|a
    · exact absurd u13 a
    · exact a
  have u16 : ¬v24 := by
    rcases c114 with a|a
    · exact absurd u13 a
    · exact a
  have u17 : ¬v25 := by
    rcases c117 with a|a
    · exact a
    · exact absurd u13 a
  have u18 : ¬v27 := by
    rcases c120 with a|a
    · exact absurd u13 a
    · exact a
  have u19 : ¬v17 := by
    rcases c1249 with a|a|a|a|a|a
    · exact a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u17
  have u20 : ¬v16 := by
    rcases c817 with a|a|a|a|a|a|a
    · exact a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u19
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u16
  have u21 : ¬v2 := c3562
  have u22 : v30 := by
    rcases c3492 with a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd u13 a
    · exact a
  have u23 : ¬v32 := by
    rcases c2344 with a|a|a|a|a|a|a
    · exact a
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have u24 : ¬v34 := by
    rcases c2006 with a|a|a|a|a|a
    · exact a
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u2
    · exact absurd a u3
  have u25 : ¬v29 := by
    rcases c124 with a|a
    · exact a
    · exact absurd u22 a
  have u26 : ¬v31 := by
    rcases c130 with a|a
    · exact a
    · exact absurd u22 a
  have u27 : ¬v39 := by
    rcases c2601 with a|a|a|a
    · exact absurd u22 a
    · exact a
    · exact absurd a u4
    · exact absurd a u5
  have u28 : ¬v33 := by
    rcases c132 with a|a
    · exact a
    · exact absurd u22 a
  have u29 : ¬v35 := by
    rcases c134 with a|a
    · exact a
    · exact absurd u22 a
  have u30 : ¬v20 := by
    rcases c665 with a|a|a|a|a|a
    · exact a
    · exact absurd u13 a
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u24
  have u31 : v4 := by
    rcases c1275 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact a
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a u5
  have u32 : v3 := by
    rcases c2740 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact a
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u23
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have u33 : ¬v41 := by
    rcases c3159 with a|a|a|a
    · exact a
    · exact absurd a u28
    · exact absurd a u24
    · exact absurd a u29
  have u34 : v6 := by
    rcases c195 with a|a|a|a|a|a|a
    · exact a
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u30
    · exact absurd a u33
    · exact absurd a u24
  rcases c27 with a|a|a
  · exact absurd u31 a
  · exact absurd u32 a
  · exact absurd u34 a
