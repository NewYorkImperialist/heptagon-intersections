import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2900-2933 of the 2934-step refutation of ccase002: 73 core clauses and 61 earlier-derived ones give a contradiction. -/
theorem CCase002_block058
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v7 ∨ ¬v2 ∨ ¬v3)
    (c36 : ¬v8 ∨ ¬v9)
    (c38 : ¬v8 ∨ ¬v11)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c54 : ¬v12 ∨ ¬v13)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c81 : ¬v16 ∨ ¬v21 ∨ ¬v19)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c89 : ¬v18 ∨ ¬v20 ∨ ¬v19)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c92 : ¬v21 ∨ ¬v20 ∨ ¬v19)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
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
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c122 : ¬v30 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c132 : ¬v35 ∨ ¬v30)
    (c133 : ¬v31 ∨ ¬v32)
    (c137 : ¬v32 ∨ ¬v33)
    (c143 : ¬v37 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c157 : ¬v42 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v39)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c169 : ¬v43 ∨ ¬v49)
    (c174 : ¬v44 ∨ ¬v49)
    (c178 : ¬v49 ∨ ¬v45)
    (c181 : ¬v49 ∨ ¬v46)
    (c183 : ¬v49 ∨ ¬v47)
    (c184 : ¬v49 ∨ ¬v48)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c195 : v29 ∨ v43 ∨ v44 ∨ v35 ∨ v22 ∨ v42 ∨ ¬v36 ∨ v21 ∨ v15 ∨ v38 ∨ v31 ∨ v16 ∨ v37 ∨ v45)
    (c233 : ¬v28 ∨ v35 ∨ v20 ∨ v21 ∨ v15 ∨ v34 ∨ v27 ∨ v22)
    (c242 : v21 ∨ v20 ∨ v12 ∨ v5 ∨ v14 ∨ v7 ∨ v6 ∨ ¬v13)
    (c354 : ¬v9 ∨ v8 ∨ v17 ∨ v15 ∨ v10 ∨ v2 ∨ v16 ∨ v1)
    (c372 : v21 ∨ v14 ∨ v1 ∨ v7 ∨ v16 ∨ v9 ∨ v15 ∨ ¬v8)
    (c380 : v43 ∨ ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v41 ∨ v48)
    (c428 : v29 ∨ ¬v28 ∨ v15 ∨ v35 ∨ v22 ∨ v27 ∨ v34 ∨ v21)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c723 : v18 ∨ v4 ∨ v5 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c727 : ¬v16 ∨ v12 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27)
    (c738 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c760 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v15 ∨ v21)
    (c847 : v20 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c862 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v31 ∨ v32)
    (c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30)
    (c891 : v6 ∨ v13 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c991 : v27 ∨ v6 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v48)
    (c1116 : ¬v13 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c1143 : ¬v27 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1217 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v41)
    (c1307 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1331 : ¬v8 ∨ v1 ∨ v7 ∨ v14 ∨ v15 ∨ v16 ∨ v21)
    (c1363 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v37 ∨ v38)
    (c1369 : ¬v8 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c1464 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v42)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1614 : v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ ¬v32)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1915 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v43 ∨ v44)
    (c2003 : ¬v21 ∨ v8 ∨ v15 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2077 : ¬v19 ∨ v15 ∨ ¬v16 ∨ v20 ∨ ¬v24)
    (c2268 : ¬v29 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2389 : ¬v33 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44)
    (c2440 : v21 ∨ v15 ∨ v16 ∨ ¬v22 ∨ v28 ∨ v29)
    (c2598 : v3 ∨ v1 ∨ ¬v2 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2757 : v30 ∨ v22 ∨ v28 ∨ ¬v29 ∨ v36 ∨ v37 ∨ v42)
    (c2792 : v11 ∨ ¬v6 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2847 : ¬v29 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ v28)
    (c2869 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2962 : v32 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33 ∨ v39 ∨ v40)
    (c3012 : ¬v25 ∨ v18 ∨ ¬v19 ∨ v20 ∨ ¬v21)
    (c3159 : ¬v8 ∨ v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21)
    (c3202 : v10 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c3235 : v49)
    (c3273 : ¬v40 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v27)
    (c3295 : ¬v41 ∨ v1 ∨ v6 ∨ v7)
    (c3309 : ¬v15)
    (c3331 : ¬v3 ∨ ¬v2 ∨ v16 ∨ v21 ∨ v22 ∨ v29)
    (c3339 : ¬v6 ∨ ¬v2 ∨ v12 ∨ v13 ∨ v14)
    (c3342 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25)
    (c3368 : ¬v4 ∨ ¬v2 ∨ v5)
    (c3370 : ¬v5 ∨ ¬v2)
    (c3373 : v16 ∨ v2 ∨ v9 ∨ ¬v32)
    (c3389 : v22 ∨ v1 ∨ v8 ∨ ¬v32)
    (c3395 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23)
    (c3426 : ¬v4 ∨ v1 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v20 ∨ v27 ∨ v34)
    (c3433 : v36 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c3451 : v19)
    (c3452 : ¬v11 ∨ ¬v16)
    (c3476 : ¬v30 ∨ v6 ∨ v13 ∨ v20 ∨ v27)
    (c3488 : ¬v1)
    (c3489 : ¬v31 ∨ v8 ∨ v21)
    (c3490 : v16 ∨ v3 ∨ v4 ∨ v6 ∨ v8 ∨ v10 ∨ v11 ∨ v13 ∨ v17)
    : False := by
  have c3491 : v3 ∨ ¬v2 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v19 := c3451
    have u6 : ¬v1 := c3488
    have u7 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : v9 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v4 := by
      rcases c3368 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
    have u10 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v6 := by
      rcases c3339 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
    have u17 : v16 := by
      rcases c3490 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
    have u18 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u5 a
    have u19 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd u17 a
      · exact absurd u5 a
      · exact a
    have u20 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a u18
      · exact a
    have u21 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v32 := by
      rcases c3342 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u21
    rcases c3389 with a|a|a|a
    · exact absurd a u22
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd u23 a
  have c3492 : v22 ∨ v4 ∨ v8 ∨ v11 ∨ v18 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := c3488
    have u2 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact a
    have u3 : v25 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u4 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u3 a
      · exact a
    rcases c3433 with a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
  have c3493 : ¬v22 ∨ ¬v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v12 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    rcases c1203 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u8 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a u7
  have c3494 : ¬v16 ∨ v4 ∨ v6 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u4
      · exact a
    have u6 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v18 := by
      rcases c77 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v22 := by
      rcases c3493 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
    have u9 : v8 := by
      rcases c3492 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n3
    have u10 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v23 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a u5
    have u12 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u11 a
    rcases c654 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd u2 a
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u13
  have c3496 : v21 ∨ ¬v2 ∨ v17 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : v19 := c3451
    have u9 : ¬v1 := c3488
    have u10 : v3 := by
      rcases c3491 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u11 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u14 : ¬v4 := by
      rcases c3368 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
    have u15 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
    have u16 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n0
    have u17 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
    have u18 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v16 := by
      rcases c3494 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u15
    have u23 : v29 := by
      rcases c3331 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a n3
      · exact a
    have u24 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v8 := by
      rcases c1331 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n0
    have u27 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u26
      · exact a
    have u28 : ¬v31 := by
      rcases c3489 with a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a n0
    have u29 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u17 a
      · exact a
    have u30 : ¬v30 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u23 a
    have u31 : ¬v27 := by
      rcases c1143 with a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u29
    have u32 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u30
    have u33 : v28 := by
      rcases c3433 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u26
      · exact absurd a n3
      · exact absurd a u32
      · exact a
    have u34 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u33 a
    have u35 : v20 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u24
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a n3
    have u36 : ¬v18 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u8 a
    have u37 : v12 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u36
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u34
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u38 : v11 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u14
      · exact a
      · exact absurd a u36
      · exact absurd a u34
    rcases c51 with a|a
    · exact absurd u38 a
    · exact absurd u37 a
  have c3497 : v32 ∨ v4 ∨ v5 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v38 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : v11 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v12 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c51 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c3498 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v33 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    rcases c738 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c3499 : ¬v21 ∨ v4 ∨ v5 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c81 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    have u6 : ¬v25 := by
      rcases c3012 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd n0 a
    have u7 : v32 := by
      rcases c3497 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
    rcases c3498 with a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c3500 : ¬v13 ∨ v5 ∨ v6 ∨ v7 ∨ v14 ∨ v20 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v12 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    rcases c242 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd n0 a
  have c3501 : v17 ∨ ¬v2 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := c3309
    have u5 : v19 := c3451
    have u6 : ¬v1 := c3488
    have u7 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v4 := by
      rcases c3368 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
    have u9 : v3 := by
      rcases c3491 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    have u10 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
    have u13 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
    have u14 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v16 := by
      rcases c3494 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u12
    have u16 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v21 := by
      rcases c3499 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u19
    have u21 : v22 := by
      rcases c3496 with a|a|a|a
      · exact absurd a u19
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
    have u22 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : v29 := by
      rcases c2440 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd u21 a
      · exact absurd a u24
      · exact a
    have u26 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v32 := by
      rcases c1614 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd u21 a
      · exact absurd a u24
      · exact a
    have u30 : v18 := by
      rcases c3497 with a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n0
      · exact a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u16
    have u31 : ¬v20 := by
      rcases c89 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u5 a
    have u32 : ¬v13 := by
      rcases c3500 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u31
      · exact absurd a u19
    rcases c891 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u12
    · exact absurd a u3
  have c3502 : ¬v9 ∨ v2 ∨ v16 ∨ v17 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v1 := c3488
    have u3 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n0 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
  have c3503 : ¬v22 ∨ v2 ∨ v9 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v23 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v28 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2440 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u8
  have c3504 : v23 ∨ v8 ∨ v16 ∨ v17 ∨ v22 ∨ v28 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v19 := c3451
    have u8 : ¬v1 := c3488
    have u9 : v36 := by
      rcases c3433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u10 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a n3
      · exact a
    have u12 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n1
      · exact a
    have u14 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
    have u18 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v21 := by
      rcases c195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u4
    have u20 : ¬v18 := by
      rcases c90 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u7 a
    have u21 : ¬v24 := by
      rcases c862 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u13
    rcases c1363 with a|a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u10
  have c3505 : ¬v36 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v31 ∨ v35 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n0 a
    rcases c195 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u4
  have c3506 : ¬v36 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v31 ∨ v35 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v37 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3505 with a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n7
  have c3507 : v28 ∨ v8 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : ¬v1 := c3488
    have u8 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a n3
      · exact a
    have u9 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v31 := by
      rcases c3489 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u11 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
    have u12 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v23 := by
      rcases c3504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u10
    have u14 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v29 := by
      rcases c2847 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
    have u17 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n5
    have u18 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v35 := by
      rcases c3506 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u10
      · exact a
      · exact absurd a u12
    rcases c1464 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u19
  have c3508 : ¬v28 ∨ v2 ∨ v9 ∨ v16 ∨ v21 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u11 : v35 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a u5
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n4
    rcases c132 with a|a
    · exact absurd u11 a
    · exact absurd u10 a
  have c3509 : ¬v18 := by
    by_contra hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := c3309
    have u5 : v19 := c3451
    have u6 : ¬v1 := c3488
    have u7 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd hc a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a u7
      · exact a
    have u9 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd hc a
    have u10 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
    have u11 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd hc a
      · exact absurd u5 a
    have u12 : ¬v8 := by
      rcases c3159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u11
    have u13 : ¬v22 := by
      rcases c3503 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u14 : ¬v31 := by
      rcases c3489 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
    have u15 : ¬v34 := by
      rcases c1915 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
    have u16 : ¬v28 := by
      rcases c3508 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u15
    have u17 : v25 := by
      rcases c3507 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u13
      · exact a
    have u18 : v23 := by
      rcases c3504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
    rcases c107 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c3510 : v28 ∨ v16 ∨ v17 ∨ v21 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : ¬v1 := c3488
    have u3 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a n2
      · exact a
    have u4 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
    have u5 : ¬v8 := by
      rcases c3159 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
    have u6 : ¬v31 := by
      rcases c3489 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
    have u7 : v23 := by
      rcases c3504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u6
    have u8 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    rcases c3507 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u8
  have c3511 : ¬v25 ∨ v2 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v19 := c3451
    have u7 : ¬v1 := c3488
    have u8 : ¬v18 := c3509
    have u9 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : v17 := by
      rcases c3510 with a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u11
    have u14 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v8 := by
      rcases c1369 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u15
    have u18 : v36 := by
      rcases c3433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
    have u19 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v31 := by
      rcases c3489 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
    have u22 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v40 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
    have u25 : ¬v35 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u20
    have u26 : v29 := by
      rcases c3506 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u22
    have u27 : v9 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u28 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd u27 a
      · exact a
    rcases c1872 with a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u8
    · exact absurd u6 a
    · exact absurd a u14
    · exact absurd a u9
  have c3512 : ¬v17 ∨ ¬v9 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v19 := c3451
    have u6 : ¬v1 := c3488
    have u7 : ¬v18 := c3509
    have u8 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v13 := by
      rcases c45 with a|a
      · exact absurd n1 a
      · exact a
    have u14 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u11
      · exact a
    have u15 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v36 := by
      rcases c3433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u17
    have u21 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u10
      · exact a
    have u22 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v4 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u15
    have u26 : ¬v6 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u27 : v34 := by
      rcases c3426 with a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u18
      · exact a
    have u28 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u18
    rcases c2066 with a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u18
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u23
  have c3513 : v23 ∨ v2 ∨ v16 ∨ v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : v19 := c3451
    have u9 : ¬v1 := c3488
    have u10 : ¬v18 := c3509
    have u11 : v17 := by
      rcases c3510 with a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v25 := by
      rcases c3511 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v9 := by
      rcases c3512 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u13
      · exact a
    have u16 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
    have u18 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v36 := by
      rcases c3506 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
    have u23 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u16
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n4
    have u24 : v26 := by
      rcases c654 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u12
      · exact a
    have u25 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : v6 := by
      rcases c3476 with a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u27
    rcases c2792 with a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd u28 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3514 : v2 ∨ v16 ∨ v21 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v19 := c3451
    have u2 : ¬v25 := by
      rcases c3511 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v23 := by
      rcases c3513 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v17 := by
      rcases c3510 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v24 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u6 a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    rcases c106 with a|a
    · exact absurd u3 a
    · exact absurd u7 a
  have c3515 : v28 ∨ v16 ∨ v21 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v19 := c3451
    have u8 : ¬v1 := c3488
    have u9 : v2 := by
      rcases c3514 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u10 : v17 := by
      rcases c3501 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v5 := by
      rcases c3370 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c3512 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u7 a
    have u14 : v3 := by
      rcases c2598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v29 := by
      rcases c3331 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u16 : ¬v7 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u14 a
    have u17 : ¬v6 := by
      rcases c17 with a|a|a
      · exact absurd u9 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v33 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v34 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v41 := by
      rcases c3295 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
    have u22 : ¬v14 := by
      rcases c760 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n2
    have u23 : v42 := by
      rcases c380 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u5
    have u24 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v8 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u6
      · exact a
    have u26 : v23 := by
      rcases c3433 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a n3
      · exact a
      · exact absurd a n0
    have u27 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v13 := by
      rcases c3500 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd a n2
    rcases c891 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u27
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u5
  have c3516 : v21 ∨ v16 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v19 := c3451
    have u7 : v28 := by
      rcases c3515 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u8 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u14 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a u13
      · exact a
    have u15 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u13
    have u16 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
    have u18 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u8
    have u19 : v35 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n0
    rcases c132 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c3517 : ¬v28 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := c3309
    have u9 : v19 := c3451
    have u10 : ¬v1 := c3488
    have u11 : ¬v18 := c3509
    have u12 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u17 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u18 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
    have u19 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a u18
      · exact a
    have u20 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u18
    have u21 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u20
      · exact a
    have u22 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u12
    have u23 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u24 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : v21 := by
      rcases c3516 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u14
    have u26 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u9 a
    have u27 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u13
    have u28 : ¬v33 := by
      rcases c2389 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
    have u29 : ¬v29 := by
      rcases c2268 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u30 : v36 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u14
    have u31 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v34 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
    have u33 : ¬v38 := by
      rcases c2869 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c847 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd u9 a
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u7
  have c3518 : v23 ∨ v16 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v19 := c3451
    have u6 : ¬v18 := c3509
    have u7 : ¬v28 := by
      rcases c3517 with a|a
      · exact a
      · exact absurd a n1
    have u8 : v21 := by
      rcases c3515 with a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    have u9 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v25 := by
      rcases c3012 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd u8 a
    have u11 : ¬v17 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
    have u12 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a u11
      · exact a
    have u13 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u11
    have u14 : ¬v32 := by
      rcases c3373 with a|a|a|a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
      · exact a
    have u15 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v30 := by
      rcases c3395 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n0
    have u17 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v8 := by
      rcases c3504 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u17
    have u19 : v26 := by
      rcases c654 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd a u10
      · exact a
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v13 := by
      rcases c40 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v6 := by
      rcases c3476 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u20
    have u23 : v11 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c38 with a|a
    · exact absurd u18 a
    · exact absurd u23 a
  have c3519 : v22 ∨ v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : ¬v18 := c3509
    have u4 : ¬v28 := by
      rcases c3517 with a|a
      · exact a
      · exact absurd a n1
    have u5 : v21 := by
      rcases c3515 with a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    have u6 : ¬v20 := by
      rcases c92 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u2 a
    have u7 : v23 := by
      rcases c3518 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u8 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v8 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u4
    rcases c654 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u10
  have c3520 : v16 := by
    by_contra hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : ¬v18 := c3509
    have u4 : v22 := by
      rcases c3519 with a|a
      · exact a
      · exact absurd a hc
    have u5 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v28 := by
      rcases c3517 with a|a
      · exact a
      · exact absurd a hc
    have u9 : ¬v24 := by
      rcases c101 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v17 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v2 := by
      rcases c3501 with a|a
      · exact absurd a u10
      · exact a
    have u12 : ¬v9 := by
      rcases c3502 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a hc
      · exact absurd a u10
    have u13 : v21 := by
      rcases c3503 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a hc
      · exact a
    have u14 : v8 := by
      rcases c2003 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u15 : v20 := by
      rcases c654 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u3
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    rcases c92 with a|a|a
    · exact absurd u13 a
    · exact absurd u15 a
    · exact absurd u2 a
  have c3521 : ¬v22 := by
    by_contra hc
    have u1 : ¬v15 := c3309
    have u2 : v19 := c3451
    have u3 : v16 := c3520
    have u4 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd u3 a
      · exact absurd a u4
      · exact a
    have u6 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v27 := by
      rcases c104 with a|a
      · exact absurd hc a
      · exact a
    have u8 : ¬v26 := by
      rcases c103 with a|a
      · exact absurd hc a
      · exact a
    have u9 : ¬v25 := by
      rcases c102 with a|a
      · exact absurd hc a
      · exact a
    have u10 : v12 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u2 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u11 : v23 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd a u1
      · exact absurd u3 a
      · exact a
      · exact absurd a u5
    rcases c100 with a|a
    · exact absurd hc a
    · exact absurd u11 a
  have c3522 : v25 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := c3309
    have u6 : v19 := c3451
    have u7 : ¬v1 := c3488
    have u8 : ¬v18 := c3509
    have u9 : v16 := c3520
    have u10 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u11
      · exact a
    have u13 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v22 := c3521
    have u15 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u12
    have u16 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
    have u17 : v26 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a u11
      · exact a
    have u18 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u12
    have u19 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u22
      · exact a
    have u24 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : v4 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
    have u26 : v36 := by
      rcases c3433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u19
    have u27 : ¬v41 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v6 := by
      rcases c2792 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a u20
    have u30 : v34 := by
      rcases c3426 with a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u20
      · exact a
    have u31 : ¬v42 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u26 a
    rcases c2066 with a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u20
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u31
  have c3523 : v41 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3235
    have u2 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := c3309
    have u7 : v19 := c3451
    have u8 : ¬v1 := c3488
    have u9 : ¬v18 := c3509
    have u10 : v16 := c3520
    have u11 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd u10 a
      · exact absurd a u12
      · exact a
    have u14 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v22 := c3521
    have u16 : v12 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a n3
    have u17 : v23 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a u6
      · exact absurd u10 a
      · exact a
      · exact absurd a u13
    have u18 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a n3
    have u20 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u19
      · exact a
    have u21 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v34 := by
      rcases c1217 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd u7 a
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u5
  have c3524 : v25 := by
    by_contra hc
    have u1 : v49 := c3235
    have u2 : ¬v43 := by
      rcases c169 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c174 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c181 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c183 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := c3309
    have u8 : v19 := c3451
    have u9 : ¬v1 := c3488
    have u10 : ¬v18 := c3509
    have u11 : v16 := c3520
    have u12 : ¬v11 := by
      rcases c3452 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v20 := by
      rcases c80 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd u11 a
      · exact absurd a u13
      · exact a
    have u15 : ¬v17 := by
      rcases c74 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v22 := c3521
    have u17 : v23 := by
      rcases c3522 with a|a
      · exact absurd a hc
      · exact a
    have u18 : ¬v27 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v28 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v12 := by
      rcases c727 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u8 a
      · exact absurd a hc
      · exact absurd a u20
      · exact absurd a u18
    have u22 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a hc
      · exact absurd a u20
    have u23 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a hc
      · exact absurd a u20
    have u24 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v32 := by
      rcases c3389 with a|a|a|a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u23
      · exact a
    have u27 : ¬v6 := by
      rcases c3202 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a hc
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u28 : ¬v39 := by
      rcases c1307 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : v4 := by
      rcases c3342 with a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a hc
    have u30 : ¬v30 := by
      rcases c3476 with a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u18
    have u31 : ¬v40 := by
      rcases c3273 with a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u18
    have u32 : ¬v33 := by
      rcases c2962 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a hc
      · exact absurd a u20
      · exact absurd a u18
      · exact a
      · exact absurd a u28
      · exact absurd a u31
    have u33 : v41 := by
      rcases c3523 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u32
      · exact absurd a u31
    have u34 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u33 a
      · exact a
    have u36 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u33 a
      · exact a
    have u37 : v29 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u34
      · exact a
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u16
    rcases c2757 with a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd u37 a
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd a u36
  have u1 : ¬v15 := c3309
  have u2 : v19 := c3451
  have u3 : ¬v18 := c3509
  have u4 : v16 := c3520
  have u5 : ¬v11 := by
    rcases c3452 with a|a
    · exact a
    · exact absurd u4 a
  have u6 : ¬v20 := by
    rcases c80 with a|a|a
    · exact absurd u4 a
    · exact a
    · exact absurd u2 a
  have u7 : ¬v24 := by
    rcases c2077 with a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a u6
    · exact a
  have u8 : ¬v17 := by
    rcases c74 with a|a|a
    · exact absurd u4 a
    · exact a
    · exact absurd u2 a
  have u9 : ¬v22 := c3521
  have u10 : v25 := c3524
  have u11 : ¬v26 := by
    rcases c115 with a|a
    · exact absurd u10 a
    · exact a
  have u12 : ¬v23 := by
    rcases c107 with a|a
    · exact a
    · exact absurd u10 a
  have u13 : ¬v12 := by
    rcases c1203 with a|a|a|a|a|a
    · exact absurd a u8
    · exact a
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a u12
    · exact absurd a u7
  have u14 : ¬v13 := by
    rcases c1116 with a|a|a|a|a|a
    · exact a
    · exact absurd a u1
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u12
  rcases c1872 with a|a|a|a|a|a|a
  · exact absurd a u14
  · exact absurd a u5
  · exact absurd a u13
  · exact absurd a u3
  · exact absurd u2 a
  · exact absurd a u6
  · exact absurd a u11
