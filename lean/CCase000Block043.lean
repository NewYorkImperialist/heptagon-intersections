import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2150-2188 of the 2189-step refutation of ccase000: 85 core clauses and 57 earlier-derived ones give a contradiction. -/
theorem CCase000_block043
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c10 : ¬v1 ∨ ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c23 : ¬v3 ∨ ¬v2 ∨ ¬v7 ∨ ¬v4)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
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
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
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
    (c112 : ¬v33 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c119 : ¬v32 ∨ ¬v33)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c153 : ¬v49 ∨ ¬v43)
    (c158 : ¬v49 ∨ ¬v44)
    (c162 : ¬v49 ∨ ¬v45)
    (c165 : ¬v49 ∨ ¬v46)
    (c167 : ¬v49 ∨ ¬v47)
    (c168 : ¬v49 ∨ ¬v48)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c260 : v14 ∨ v48 ∨ v4 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v5 ∨ v13 ∨ v26 ∨ v27 ∨ v20 ∨ v46 ∨ v11 ∨ v28)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c325 : ¬v49 ∨ v7 ∨ v4 ∨ v42 ∨ v39 ∨ v1 ∨ v41 ∨ v13 ∨ v8 ∨ v14 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c399 : v14 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v48 ∨ v47 ∨ v7 ∨ v13)
    (c404 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v1 ∨ v41 ∨ v43 ∨ v48)
    (c413 : v41 ∨ v5 ∨ v4 ∨ v7 ∨ ¬v12 ∨ v19 ∨ v13 ∨ v20 ∨ v14 ∨ v11 ∨ v21 ∨ v40 ∨ v39 ∨ v47)
    (c478 : ¬v39 ∨ v32 ∨ v37 ∨ v46 ∨ v47 ∨ v44 ∨ v30 ∨ v31 ∨ v38 ∨ v10 ∨ v11 ∨ v4 ∨ v40 ∨ v12)
    (c532 : ¬v49 ∨ v36 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v43 ∨ v48)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c967 : ¬v21 ∨ v8 ∨ v14 ∨ v15 ∨ v22 ∨ v27 ∨ v28)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c982 : ¬v17 ∨ v3 ∨ v8 ∨ v10 ∨ v11 ∨ v22 ∨ v23 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1065 : v13 ∨ ¬v2 ∨ ¬v4 ∨ ¬v10 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1072 : ¬v5 ∨ ¬v2 ∨ v7 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28)
    (c1187 : v5 ∨ v12 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1368 : ¬v36 ∨ v4 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v46)
    (c1372 : ¬v19 ∨ v5 ∨ v11 ∨ v12 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48)
    (c1400 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c1401 : ¬v38 ∨ v4 ∨ v11 ∨ v18 ∨ v22 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1404 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1434 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v12 ∨ ¬v22 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1533 : v11 ∨ ¬v1 ∨ ¬v2 ∨ ¬v4 ∨ v10 ∨ v12 ∨ v46 ∨ v47)
    (c1674 : ¬v18 ∨ v11 ∨ v17 ∨ v24 ∨ v25 ∨ v26)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1790 : v3 ∨ v9 ∨ v10 ∨ v11 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1887 : v9 ∨ v1 ∨ ¬v2 ∨ v3 ∨ v43 ∨ v44 ∨ v45)
    (c1889 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2109 : ¬v39 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v24 ∨ v45 ∨ v46 ∨ v48)
    (c2112 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v45)
    (c2140 : ¬v32 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39)
    (c2221 : ¬v38 ∨ v31 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c2254 : ¬v9 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c2390 : ¬v24 ∨ v4 ∨ v11 ∨ v30 ∨ v31 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2483 : ¬v32 ∨ v24 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c2505 : ¬v10 ∨ v4 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c2546 : v49)
    (c2547 : v42 ∨ v1 ∨ v6 ∨ v7)
    (c2554 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c2650 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37)
    (c2653 : v2)
    (c2669 : v22 ∨ ¬v41)
    (c2690 : ¬v6 ∨ ¬v4)
    (c2701 : v12 ∨ v4 ∨ v6 ∨ v25 ∨ v26 ∨ v27 ∨ v40)
    (c2705 : ¬v13 ∨ v4 ∨ v25 ∨ v32)
    (c2714 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v41)
    (c2715 : v6 ∨ v22)
    (c2720 : ¬v25 ∨ v13 ∨ v40)
    (c2721 : v26 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v25 ∨ v27 ∨ v40 ∨ v41)
    (c2722 : ¬v5 ∨ v22 ∨ v25 ∨ v27 ∨ v28 ∨ v40)
    : False := by
  have c2723 : ¬v14 ∨ v22 ∨ ¬v26 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n2 a
      · exact a
    have u15 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u16 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u17 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u14
    have u19 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u20
      · exact a
      · exact absurd a n3
    have u25 : v3 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u4
    have u26 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u15 a
      · exact absurd u8 a
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u7
  have c2724 : ¬v26 ∨ v5 ∨ v12 ∨ v13 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a u9
    have u14 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c2723 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n4
    have u16 : v7 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n3
    have u17 : v9 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd u8 a
      · exact absurd u16 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v3 := by
      rcases c26 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u16 a
      · exact absurd u13 a
    have u19 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v39 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
    have u24 : v32 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a u23
      · exact absurd a u5
    rcases c2483 with a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2725 : v12 ∨ v5 ∨ v13 ∨ v25 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c2724 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u2
  have c2726 : v26 ∨ v4 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v11 ∨ v13 ∨ v14 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    rcases c260 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n9
  have c2727 : ¬v39 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v22 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n6
    have u6 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v31 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a u2
    have u9 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : v18 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v26 := by
      rcases c1674 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u12 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v37 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u2
    rcases c133 with a|a
    · exact absurd n0 a
    · exact absurd u13 a
  have c2728 : v3 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v13 ∨ v14 ∨ v17 ∨ v21 ∨ v22 ∨ v24 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n9
    have u11 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n9
      · exact a
    have u12 : ¬v25 := by
      rcases c2720 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n11
    have u13 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v12 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd u10 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n5
    have u16 : ¬v39 := by
      rcases c2727 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u12
    have u17 : ¬v32 := by
      rcases c2483 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v18 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u18 a
      · exact a
    rcases c413 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd u15 a
    · exact absurd a u19
    · exact absurd a n5
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a u16
    · exact absurd a u6
  have c2729 : ¬v42 ∨ v1 ∨ ¬v12 ∨ v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v29 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u2
    rcases c2650 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
  have c2730 : v28 ∨ v13 ∨ v22 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u11 : ¬v25 := by
      rcases c2720 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u12 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v5 := by
      rcases c2722 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u14 : v12 := by
      rcases c2725 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n0
    have u21 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u23 : v26 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n0
    have u24 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u24
    have u27 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u25
      · exact absurd a u24
    have u28 : v3 := by
      rcases c2728 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a n4
    have u29 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u9 a
      · exact absurd u8 a
    have u30 : ¬v42 := by
      rcases c2729 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a n0
    have u31 : v36 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u7
    have u32 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u31 a
    rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c2731 : ¬v3 ∨ ¬v6 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v2 := c2653
    have u5 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd u4 a
    have u6 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u3
  have c2732 : v11 ∨ v13 ∨ v22 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u11 : ¬v25 := by
      rcases c2720 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
    have u12 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v28 := by
      rcases c2730 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u16
    have u19 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u20 : v32 := by
      rcases c1404 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u19
      · exact a
      · exact absurd a n4
    have u23 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v3 := by
      rcases c2731 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u24
    have u26 : ¬v9 := by
      rcases c2254 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd u8 a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u28 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : v10 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u26
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u4
    have u30 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u31 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u29 a
      · exact a
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd u9 a
    · exact absurd a u30
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u28
    · exact absurd a n1
  have c2733 : v40 ∨ v13 ∨ v22 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v11 := by
      rcases c2732 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u10 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v5 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n1
    have u15 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u8 a
      · exact absurd u7 a
    have u16 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact a
      · exact absurd u8 a
    rcases c1887 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd u7 a
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2734 : v1 ∨ v3 ∨ v22 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v9 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u10 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v24 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v25 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
    have u16 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u15 a
      · exact a
    rcases c2254 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2735 : ¬v9 ∨ v5 ∨ ¬v6 ∨ v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    rcases c399 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u4
  have c2736 : ¬v14 ∨ v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v24 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v10 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
    rcases c54 with a|a
    · exact absurd u8 a
    · exact absurd n0 a
  have c2737 : ¬v40 ∨ v13 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u14 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v3 := by
      rcases c2731 with a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : v1 := by
      rcases c2734 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
    have u20 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
    have u21 : ¬v14 := by
      rcases c2736 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
    have u22 : ¬v7 := by
      rcases c10 with a|a|a|a
      · exact absurd u19 a
      · exact absurd u6 a
      · exact a
      · exact absurd u13 a
    have u23 : ¬v9 := by
      rcases c2735 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u13 a
      · exact absurd a u22
    have u24 : v12 := by
      rcases c399 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u13 a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a n1
    have u25 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v24 := by
      rcases c2390 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1790 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u23
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u2
  have c2738 : v9 ∨ v3 ∨ v13 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v2 := c2653
    have u9 : ¬v40 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u10 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n3
    have u11 : v27 := by
      rcases c2733 with a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u12 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n3
      · exact a
    have u13 : ¬v25 := by
      rcases c2720 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
    have u14 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : v1 := by
      rcases c1887 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
    have u20 : v12 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v18 := by
      rcases c1674 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u17
    have u26 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u27 : v31 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u15
      · exact a
      · exact absurd a u26
      · exact absurd a u4
    have u28 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u27 a
      · exact a
    rcases c1404 with a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2739 : v3 ∨ v13 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v40 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u9 : v27 := by
      rcases c2733 with a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u10 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u11 : ¬v25 := by
      rcases c2720 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
    have u12 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v9 := by
      rcases c2738 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u11
    have u22 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : ¬v17 := by
      rcases c982 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v39 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    have u25 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u7
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u4
  have c2740 : v13 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v2 := c2653
    have u6 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u8 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v3 := by
      rcases c2739 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u10 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact absurd u5 a
    have u11 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u9 a
      · exact absurd u6 a
    have u12 : ¬v40 := by
      rcases c2737 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u13 : ¬v25 := by
      rcases c2720 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
    have u14 : v27 := by
      rcases c2733 with a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    have u15 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v12 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v33 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u14 a
      · exact a
    have u21 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u14 a
    have u22 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u14 a
      · exact a
    have u23 : ¬v42 := by
      rcases c2729 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u20
    have u24 : v36 := by
      rcases c2731 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u23
    rcases c1368 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u22
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a u2
  have c2741 : v25 ∨ v1 ∨ v22 ∨ v24 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u8 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a n2
    have u9 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n2
      · exact a
    have u10 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : v32 := by
      rcases c2705 with a|a|a|a
      · exact absurd u8 a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
    have u17 : v3 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
    have u18 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n0
    have u19 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v39 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a n4
    have u22 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : v36 := by
      rcases c2731 with a|a|a|a|a
      · exact absurd u17 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u9
      · exact absurd a u22
    rcases c128 with a|a
    · exact absurd u21 a
    · exact absurd u23 a
  have c2742 : v40 ∨ v1 ∨ v5 ∨ v15 ∨ v22 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n4
    have u9 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a n4
    have u10 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n4
      · exact a
    have u11 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : v25 := by
      rcases c2741 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u18 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u20
    have u22 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : v33 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u6
      · exact a
    have u24 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v39 := by
      rcases c839 with a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u10
    have u28 : ¬v37 := by
      rcases c1917 with a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u29 : ¬v38 := by
      rcases c2221 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u28
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c478 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u24
    · exact absurd a u28
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u29
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u15
  have c2743 : ¬v15 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v23 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
      · exact a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u6 a
    rcases c1138 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u7
  have c2744 : ¬v3 ∨ v22 ∨ v24 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v2 := c2653
    have u2 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v15 := by
      rcases c2743 with a|a
      · exact a
      · exact absurd a n1
    have u4 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u5 : ¬v1 := by
      rcases c3 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact absurd u1 a
    rcases c2742 with a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
  have c2745 : v25 ∨ v5 ∨ v12 ∨ v26 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c934 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u2
  have c2746 : ¬v28 ∨ v12 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a u6
    have u8 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a u6
    have u9 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v3 := by
      rcases c2744 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n2
    have u16 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u17 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
    have u18 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a u16
      · exact absurd a u14
    have u19 : ¬v39 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
    have u20 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u21 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u20
    have u22 : v32 := by
      rcases c2705 with a|a|a|a
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u20
      · exact a
    have u23 : ¬v38 := by
      rcases c1401 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v33 := by
      rcases c119 with a|a
      · exact absurd u22 a
      · exact a
    rcases c855 with a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a n2
  have c2747 : v25 ∨ v3 ∨ v22 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n2
    have u6 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a n2
    have u7 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v32 := by
      rcases c2705 with a|a|a|a
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
    have u13 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n0
    have u14 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v38 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a u2
    rcases c1401 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2748 : v24 ∨ v22 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u9 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v3 := by
      rcases c2744 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    have u17 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u7 a
      · exact absurd a u13
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
    have u18 : ¬v5 := by
      rcases c8 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u19 : ¬v15 := by
      rcases c2743 with a|a
      · exact a
      · exact absurd a n1
    have u20 : ¬v41 := by
      rcases c2669 with a|a
      · exact absurd a n1
      · exact a
    have u21 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u22 : ¬v28 := by
      rcases c2746 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n2
    have u23 : v25 := by
      rcases c2747 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
    have u24 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a n0
    have u28 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u26
      · exact absurd a n0
    have u29 : ¬v21 := by
      rcases c967 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u22
    have u30 : ¬v39 := by
      rcases c2109 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    have u31 : ¬v19 := by
      rcases c1372 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u32 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u30
      · exact absurd a n2
      · exact absurd a u20
    rcases c174 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u32
  have c2749 : v40 ∨ v22 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v2 := c2653
    have u5 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a n1
    have u6 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v24 := by
      rcases c2748 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u12 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v5 := by
      rcases c2745 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
    have u16 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u5 a
      · exact absurd u4 a
    have u17 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u4 a
      · exact absurd u15 a
      · exact a
      · exact absurd u5 a
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u7
  have c2750 : v22 := by
    by_contra hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v6 := by
      rcases c2715 with a|a
      · exact a
      · exact absurd a hc
    have u7 : ¬v4 := by
      rcases c2690 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v13 := by
      rcases c2740 with a|a
      · exact a
      · exact absurd a hc
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v40 := by
      rcases c2749 with a|a
      · exact a
      · exact absurd a hc
    have u13 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v3 := by
      rcases c2731 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
    have u18 : v33 := by
      rcases c1090 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v24 := by
      rcases c1790 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u2
    rcases c2390 with a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2751 : v3 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v22 := c2750
    have u9 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u3
    have u16 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v4 := by
      rcases c2505 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v6 := by
      rcases c2690 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v41 := by
      rcases c2714 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact a
    have u21 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u21
    rcases c1065 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u7 a
    · exact absurd u18 a
    · exact absurd u15 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u21
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2752 : ¬v40 := by
    by_contra hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v2 := c2653
    have u5 : v22 := c2750
    have u6 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v42 := by
      rcases c145 with a|a
      · exact a
      · exact absurd hc a
    have u13 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd hc a
      · exact a
    have u14 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd hc a
    have u15 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd hc a
      · exact a
    have u16 : ¬v37 := by
      rcases c134 with a|a
      · exact absurd hc a
      · exact a
    have u17 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
    have u18 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd hc a
      · exact a
    have u19 : ¬v32 := by
      rcases c2140 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
    have u20 : v3 := by
      rcases c2751 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u21 : ¬v6 := by
      rcases c2731 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u12
    have u22 : v13 := by
      rcases c2714 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
    have u23 : v7 := by
      rcases c532 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
    have u24 : ¬v4 := by
      rcases c23 with a|a|a|a
      · exact absurd u20 a
      · exact absurd u4 a
      · exact absurd u23 a
      · exact a
    rcases c2705 with a|a|a|a
    · exact absurd u22 a
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a u19
  have c2753 : ¬v3 ∨ ¬v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v2 := c2653
    have u4 : v22 := c2750
    have u5 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v40 := c2752
    have u10 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
    have u11 : ¬v6 := by
      rcases c2690 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v7 := by
      rcases c23 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact a
    have u14 : v12 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u2
    have u15 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v41 := by
      rcases c2714 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact a
    have u17 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u18 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u16 a
      · exact a
    rcases c2547 with a|a|a|a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u12
  have c2754 : v6 ∨ v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v22 := c2750
    have u6 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v40 := c2752
    have u13 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u14 : v12 := by
      rcases c2701 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v41 := by
      rcases c2714 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact a
    have u21 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u22
    have u25 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u12
    have u26 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u7
    have u27 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u3
    have u28 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u6
      · exact absurd a u7
    rcases c1400 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u28
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2755 : ¬v3 := by
    by_contra hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : v22 := c2750
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v40 := c2752
    have u13 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u14 : ¬v4 := by
      rcases c2753 with a|a
      · exact absurd hc a
      · exact a
    have u15 : v6 := by
      rcases c2754 with a|a
      · exact a
      · exact absurd a u14
    have u16 : ¬v5 := by
      rcases c24 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd hc a
      · exact absurd u15 a
    have u17 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
    have u18 : v12 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u7 a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
    have u19 : ¬v7 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd u6 a
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u18 a
    rcases c2726 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd u15 a
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u10
    · exact absurd a u11
  have c2756 : ¬v12 ∨ v4 ∨ v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v2 := c2653
    have u5 : v22 := c2750
    have u6 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v3 := c2755
    have u10 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : v6 := by
      rcases c2754 with a|a
      · exact a
      · exact absurd a n1
    have u12 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u16 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u17 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u12
    have u18 : v5 := by
      rcases c2726 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
    rcases c8 with a|a|a|a
    · exact absurd u17 a
    · exact absurd u18 a
    · exact absurd u11 a
    · exact absurd u4 a
  have c2757 : v7 ∨ v4 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v22 := c2750
    have u9 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v40 := c2752
    have u15 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
    have u16 : ¬v3 := c2755
    have u17 : ¬v12 := by
      rcases c2756 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u18 : ¬v1 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd u8 a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v5 := by
      rcases c1187 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u5
    have u20 : v41 := by
      rcases c2721 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact a
    have u21 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u23
    have u26 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u14
    rcases c1072 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u19 a
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2758 : ¬v7 ∨ ¬v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2546
    have u2 : ¬v43 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v2 := c2653
    have u7 : v22 := c2750
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v40 := c2752
    have u13 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
    have u14 : ¬v5 := by
      rcases c30 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u15 : v9 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c833 with a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u14
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
  have c2759 : v4 := by
    by_contra hc
    have u1 : v6 := by
      rcases c2754 with a|a
      · exact a
      · exact absurd a hc
    have u2 : v7 := by
      rcases c2757 with a|a
      · exact a
      · exact absurd a hc
    rcases c2758 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2760 : v13 := by
    by_contra hc
    have u1 : v49 := c2546
    have u2 : ¬v44 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c162 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v2 := c2653
    have u8 : v22 := c2750
    have u9 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v40 := c2752
    have u16 : ¬v33 := by
      rcases c2554 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
    have u17 : ¬v3 := c2755
    have u18 : v4 := c2759
    have u19 : ¬v6 := by
      rcases c2690 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v41 := by
      rcases c2714 with a|a|a|a|a|a
      · exact absurd a hc
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact a
    have u21 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v31 := by
      rcases c1889 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u23
    have u26 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u15
    have u27 : v10 := by
      rcases c2112 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u22
      · exact absurd a u3
    rcases c1065 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a hc
    · exact absurd u7 a
    · exact absurd u18 a
    · exact absurd u27 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u16
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have u1 : v49 := c2546
  have u2 : ¬v44 := by
    rcases c158 with a|a
    · exact absurd u1 a
    · exact a
  have u3 : ¬v45 := by
    rcases c162 with a|a
    · exact absurd u1 a
    · exact a
  have u4 : ¬v46 := by
    rcases c165 with a|a
    · exact absurd u1 a
    · exact a
  have u5 : ¬v47 := by
    rcases c167 with a|a
    · exact absurd u1 a
    · exact a
  have u6 : v2 := c2653
  have u7 : ¬v3 := c2755
  have u8 : v4 := c2759
  have u9 : v13 := c2760
  have u10 : ¬v8 := by
    rcases c44 with a|a
    · exact a
    · exact absurd u9 a
  have u11 : ¬v9 := by
    rcases c49 with a|a
    · exact a
    · exact absurd u9 a
  have u12 : ¬v10 := by
    rcases c53 with a|a
    · exact a
    · exact absurd u9 a
  have u13 : ¬v11 := by
    rcases c56 with a|a
    · exact a
    · exact absurd u9 a
  have u14 : ¬v12 := by
    rcases c58 with a|a
    · exact absurd u9 a
    · exact a
  have u15 : v1 := by
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd a u12
    · exact absurd a u11
    · exact a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u10
  rcases c1533 with a|a|a|a|a|a|a|a
  · exact absurd a u13
  · exact absurd u15 a
  · exact absurd u6 a
  · exact absurd u8 a
  · exact absurd a u12
  · exact absurd a u14
  · exact absurd a u4
  · exact absurd a u5
