import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2550-2558 of the 2559-step refutation of ccase003: 32 core clauses and 29 earlier-derived ones give a contradiction. -/
theorem CCase003_block051
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v37 v38 v40 v41 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c40 : ¬v8 ∨ ¬v11)
    (c45 : ¬v9 ∨ ¬v11)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c130 : ¬v30 ∨ ¬v31)
    (c133 : ¬v34 ∨ ¬v30)
    (c138 : ¬v35 ∨ ¬v31)
    (c172 : ¬v43 ∨ ¬v49)
    (c177 : ¬v44 ∨ ¬v49)
    (c181 : ¬v45 ∨ ¬v49)
    (c184 : ¬v49 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c583 : v26 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c2263 : v23 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v43 ∨ v44 ∨ v45)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2539 : ¬v11 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2688 : ¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2715 : v28 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31)
    (c2732 : v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2826 : v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2875 : v49)
    (c3057 : v5)
    (c3061 : v23 ∨ v2 ∨ v9 ∨ v16 ∨ ¬v31)
    (c3083 : ¬v2 ∨ v3 ∨ v9)
    (c3084 : ¬v10)
    (c3121 : v12 ∨ ¬v1)
    (c3123 : ¬v41 ∨ v1 ∨ v6 ∨ v7)
    (c3143 : v11)
    (c3150 : v22 ∨ v15 ∨ ¬v30)
    (c3154 : ¬v23)
    (c3155 : ¬v15)
    : False := by
  have c3156 : v28 ∨ v16 ∨ ¬v22 ∨ v27 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v11 := c3143
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
    have u5 : ¬v23 := c3154
    have u6 : ¬v15 := c3155
    have u7 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd n2 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n0
  have c3157 : ¬v28 ∨ ¬v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := c3057
    have u6 : ¬v10 := c3084
    have u7 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v11 := c3143
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
    have u12 : ¬v23 := c3154
    have u13 : ¬v15 := c3155
    have u14 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u6
      · exact a
      · exact absurd a u14
      · exact absurd a u15
    have u17 : ¬v16 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u9
    have u18 : v31 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3061 with a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd u18 a
  have c3158 : v16 ∨ ¬v22 ∨ v27 ∨ v28 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v11 := c3143
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
    have u5 : ¬v23 := c3154
    have u6 : ¬v15 := c3155
    have u7 : v35 := by
      rcases c3156 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
    have u8 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
    rcases c1462 with a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u5
    · exact absurd a n3
  have c3159 : v27 ∨ ¬v22 ∨ v28 ∨ v29 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := c3057
    have u8 : ¬v10 := c3084
    have u9 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v11 := c3143
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u13
      · exact a
    have u15 : ¬v23 := c3154
    have u16 : ¬v15 := c3155
    have u17 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a n2
    have u18 : v16 := by
      rcases c3158 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u19 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : v24 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u11
    have u21 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u23 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v19 := by
      rcases c68 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : v4 := by
      rcases c2539 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u24
    have u26 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u25 a
    have u28 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact absurd u25 a
      · exact a
    have u29 : v30 := by
      rcases c2826 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd u20 a
      · exact absurd a u21
      · exact absurd a u26
      · exact a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u30 : ¬v41 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u28
      · exact absurd a u27
    have u31 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u29 a
    rcases c583 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u8
    · exact absurd u10 a
    · exact absurd a u19
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u17
    · exact absurd a u31
    · exact absurd a u22
    · exact absurd a u30
    · exact absurd a u5
    · exact absurd a u6
  have c3160 : v38 ∨ ¬v22 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := c3057
    have u6 : ¬v10 := c3084
    have u7 : ¬v23 := c3154
    have u8 : ¬v28 := by
      rcases c3157 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v24 := by
      rcases c89 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v31 := by
      rcases c2715 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact a
    have u13 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u11
    rcases c2732 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3161 : ¬v22 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v11 := c3143
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
    have u14 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u12
      · exact a
    have u15 : ¬v23 := c3154
    have u16 : ¬v15 := c3155
    have u17 : ¬v28 := by
      rcases c3157 with a|a
      · exact a
      · exact absurd n0 a
    have u18 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v27 := by
      rcases c3160 with a|a|a
      · exact absurd a u18
      · exact absurd n0 a
      · exact a
    have u20 : v29 := by
      rcases c3159 with a|a|a|a|a
      · exact absurd a u19
      · exact absurd n0 a
      · exact absurd a u17
      · exact a
      · exact absurd a n1
    have u21 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v16 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v24 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u10
    have u26 : v25 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c87 with a|a|a
    · exact absurd n0 a
    · exact absurd u26 a
    · exact absurd u25 a
  have c3162 : v22 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : v11 := c3143
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
    have u13 : ¬v23 := c3154
    have u14 : ¬v15 := c3155
    have u15 : ¬v30 := by
      rcases c3150 with a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
    rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3163 : v31 := by
    by_contra hc
    have u1 : ¬v22 := by
      rcases c3161 with a|a
      · exact a
      · exact absurd a hc
    rcases c3162 with a|a
    · exact absurd a u1
    · exact absurd a hc
  have u1 : v49 := c2875
  have u2 : ¬v43 := by
    rcases c172 with a|a
    · exact a
    · exact absurd u1 a
  have u3 : ¬v44 := by
    rcases c177 with a|a
    · exact a
    · exact absurd u1 a
  have u4 : ¬v45 := by
    rcases c181 with a|a
    · exact a
    · exact absurd u1 a
  have u5 : ¬v46 := by
    rcases c184 with a|a
    · exact absurd u1 a
    · exact a
  have u6 : v5 := c3057
  have u7 : ¬v10 := c3084
  have u8 : ¬v3 := by
    rcases c2688 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact a
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have u9 : v11 := c3143
  have u10 : ¬v8 := by
    rcases c40 with a|a
    · exact a
    · exact absurd u9 a
  have u11 : ¬v9 := by
    rcases c45 with a|a
    · exact a
    · exact absurd u9 a
  have u12 : ¬v12 := by
    rcases c53 with a|a
    · exact absurd u9 a
    · exact a
  have u13 : ¬v2 := by
    rcases c3083 with a|a|a
    · exact a
    · exact absurd a u8
    · exact absurd a u11
  have u14 : ¬v1 := by
    rcases c3121 with a|a
    · exact absurd a u12
    · exact a
  have u15 : ¬v23 := c3154
  have u16 : ¬v15 := c3155
  have u17 : v31 := c3163
  have u18 : ¬v29 := by
    rcases c125 with a|a
    · exact a
    · exact absurd u17 a
  have u19 : ¬v30 := by
    rcases c130 with a|a
    · exact a
    · exact absurd u17 a
  have u20 : v16 := by
    rcases c3061 with a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u11
    · exact a
    · exact absurd u17 a
  have u21 : ¬v35 := by
    rcases c138 with a|a
    · exact a
    · exact absurd u17 a
  have u22 : ¬v37 := by
    rcases c2574 with a|a|a|a|a|a
    · exact a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have u23 : ¬v21 := by
    rcases c1858 with a|a|a|a|a|a|a
    · exact a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u3
  have u24 : v22 := by
    rcases c753 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u7
    · exact a
    · exact absurd a u15
  have u25 : ¬v17 := by
    rcases c66 with a|a
    · exact absurd u20 a
    · exact a
  have u26 : v28 := by
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd u24 a
    · exact absurd a u21
    · exact a
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u19
  have u27 : v24 := by
    rcases c414 with a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u16
    · exact a
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u25
    · exact absurd a u10
  rcases c90 with a|a|a
  · exact absurd u24 a
  · exact absurd u26 a
  · exact absurd u27 a
