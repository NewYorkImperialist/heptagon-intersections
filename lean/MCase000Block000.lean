import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 0-40 of the 41-step refutation of mcase000: 169 core clauses and 0 earlier-derived ones give a contradiction. -/
theorem MCase000_block000
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v25 v26 v27 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2)
    (c2 : ¬v3 ∨ ¬v1)
    (c3 : ¬v5 ∨ ¬v1)
    (c4 : ¬v6 ∨ ¬v1)
    (c5 : ¬v7 ∨ ¬v1)
    (c6 : ¬v3 ∨ ¬v2)
    (c7 : ¬v4 ∨ ¬v2)
    (c8 : ¬v2 ∨ ¬v7)
    (c9 : ¬v4 ∨ ¬v3)
    (c10 : ¬v5 ∨ ¬v3)
    (c11 : ¬v6 ∨ ¬v3)
    (c12 : ¬v3 ∨ ¬v7)
    (c13 : ¬v5 ∨ ¬v4)
    (c14 : ¬v6 ∨ ¬v4)
    (c15 : ¬v4 ∨ ¬v7)
    (c16 : ¬v6 ∨ ¬v5)
    (c17 : ¬v5 ∨ ¬v7)
    (c18 : ¬v11 ∨ ¬v8)
    (c19 : ¬v8 ∨ ¬v12)
    (c20 : ¬v9 ∨ ¬v11)
    (c21 : ¬v9 ∨ ¬v12)
    (c22 : ¬v14 ∨ ¬v9)
    (c23 : ¬v10 ∨ ¬v14)
    (c24 : ¬v11 ∨ ¬v14)
    (c25 : ¬v32 ∨ ¬v30)
    (c26 : ¬v33 ∨ ¬v30)
    (c27 : ¬v31 ∨ ¬v34)
    (c28 : ¬v36 ∨ ¬v37)
    (c29 : ¬v36 ∨ ¬v38)
    (c30 : ¬v41 ∨ ¬v36)
    (c31 : ¬v38 ∨ ¬v37)
    (c32 : ¬v39 ∨ ¬v37)
    (c33 : ¬v40 ∨ ¬v37)
    (c34 : ¬v41 ∨ ¬v37)
    (c35 : ¬v37 ∨ ¬v42)
    (c36 : ¬v39 ∨ ¬v38)
    (c37 : ¬v40 ∨ ¬v38)
    (c38 : ¬v41 ∨ ¬v38)
    (c39 : ¬v38 ∨ ¬v42)
    (c40 : ¬v40 ∨ ¬v39)
    (c41 : ¬v39 ∨ ¬v41)
    (c42 : ¬v40 ∨ ¬v41)
    (c43 : ¬v40 ∨ ¬v42)
    (c44 : ¬v41 ∨ ¬v42)
    (c45 : v37 ∨ v39 ∨ v36 ∨ v42 ∨ v40 ∨ v41 ∨ v38)
    (c46 : ¬v43 ∨ ¬v44)
    (c47 : ¬v45 ∨ ¬v43)
    (c48 : ¬v46 ∨ ¬v43)
    (c49 : ¬v43 ∨ ¬v49)
    (c50 : ¬v44 ∨ ¬v45)
    (c51 : ¬v46 ∨ ¬v44)
    (c52 : ¬v47 ∨ ¬v44)
    (c53 : ¬v48 ∨ ¬v44)
    (c54 : ¬v44 ∨ ¬v49)
    (c55 : ¬v45 ∨ ¬v46)
    (c56 : ¬v47 ∨ ¬v45)
    (c57 : ¬v48 ∨ ¬v45)
    (c58 : ¬v49 ∨ ¬v45)
    (c59 : ¬v46 ∨ ¬v47)
    (c60 : ¬v48 ∨ ¬v46)
    (c61 : ¬v49 ∨ ¬v46)
    (c62 : ¬v47 ∨ ¬v48)
    (c63 : ¬v49 ∨ ¬v47)
    (c64 : ¬v48 ∨ ¬v49)
    (c65 : v43 ∨ v44 ∨ v47 ∨ v48 ∨ v46 ∨ v45 ∨ v49)
    (c66 : ¬v8 ∨ ¬v1)
    (c67 : ¬v36 ∨ ¬v1)
    (c68 : ¬v1 ∨ ¬v43)
    (c69 : ¬v29 ∨ ¬v36)
    (c70 : ¬v29 ∨ ¬v43)
    (c71 : ¬v36 ∨ ¬v43)
    (c72 : ¬v9 ∨ ¬v2)
    (c73 : ¬v30 ∨ ¬v2)
    (c74 : ¬v2 ∨ ¬v37)
    (c75 : ¬v2 ∨ ¬v44)
    (c76 : ¬v9 ∨ ¬v44)
    (c77 : ¬v30 ∨ ¬v37)
    (c78 : ¬v30 ∨ ¬v44)
    (c79 : ¬v37 ∨ ¬v44)
    (c80 : ¬v10 ∨ ¬v3)
    (c81 : ¬v31 ∨ ¬v3)
    (c82 : ¬v3 ∨ ¬v38)
    (c83 : ¬v3 ∨ ¬v45)
    (c84 : ¬v10 ∨ ¬v38)
    (c85 : ¬v10 ∨ ¬v45)
    (c86 : ¬v31 ∨ ¬v38)
    (c87 : ¬v31 ∨ ¬v45)
    (c88 : ¬v38 ∨ ¬v45)
    (c89 : ¬v11 ∨ ¬v4)
    (c90 : ¬v4 ∨ ¬v32)
    (c91 : ¬v39 ∨ ¬v4)
    (c92 : ¬v4 ∨ ¬v46)
    (c93 : ¬v25 ∨ ¬v39)
    (c94 : ¬v32 ∨ ¬v39)
    (c95 : ¬v32 ∨ ¬v46)
    (c96 : ¬v39 ∨ ¬v46)
    (c97 : ¬v12 ∨ ¬v5)
    (c98 : ¬v33 ∨ ¬v5)
    (c99 : ¬v40 ∨ ¬v5)
    (c100 : ¬v5 ∨ ¬v47)
    (c101 : ¬v12 ∨ ¬v47)
    (c102 : ¬v26 ∨ ¬v47)
    (c103 : ¬v33 ∨ ¬v40)
    (c104 : ¬v33 ∨ ¬v47)
    (c105 : ¬v40 ∨ ¬v47)
    (c106 : ¬v27 ∨ ¬v6)
    (c107 : ¬v6 ∨ ¬v34)
    (c108 : ¬v41 ∨ ¬v6)
    (c109 : ¬v6 ∨ ¬v48)
    (c110 : ¬v13 ∨ ¬v48)
    (c111 : ¬v34 ∨ ¬v41)
    (c112 : ¬v34 ∨ ¬v48)
    (c113 : ¬v41 ∨ ¬v48)
    (c114 : ¬v35 ∨ ¬v7)
    (c115 : ¬v7 ∨ ¬v42)
    (c116 : ¬v7 ∨ ¬v49)
    (c117 : ¬v35 ∨ ¬v42)
    (c118 : ¬v35 ∨ ¬v49)
    (c119 : ¬v42 ∨ ¬v49)
    (c120 : v32 ∨ ¬v38 ∨ v44 ∨ v30 ∨ v37 ∨ v39 ∨ v31 ∨ v45)
    (c121 : v29 ∨ ¬v49 ∨ v41 ∨ v7 ∨ v1 ∨ v3 ∨ v35 ∨ v38 ∨ v34 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v48)
    (c122 : ¬v48 ∨ v7 ∨ v42 ∨ v5 ∨ v41 ∨ v6 ∨ v47 ∨ v49)
    (c123 : v10 ∨ ¬v3 ∨ v46 ∨ v45 ∨ v44 ∨ v2 ∨ v9 ∨ v4)
    (c124 : v4 ∨ ¬v46 ∨ v3 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v47)
    (c125 : v7 ∨ v2 ∨ ¬v43 ∨ v42 ∨ v1 ∨ v36 ∨ v44 ∨ v49)
    (c126 : v12 ∨ v14 ∨ v5 ∨ v3 ∨ v7 ∨ v6 ∨ ¬v4 ∨ v11 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v49)
    (c127 : v34 ∨ v33 ∨ v42 ∨ v35 ∨ v40 ∨ ¬v41 ∨ v47 ∨ v48)
    (c128 : ¬v47 ∨ v5 ∨ v41 ∨ v4 ∨ v40 ∨ v6 ∨ v46 ∨ v48)
    (c129 : ¬v5 ∨ v11 ∨ v13 ∨ v4 ∨ v12 ∨ v6 ∨ v46 ∨ v47)
    (c130 : ¬v48 ∨ v5 ∨ v41 ∨ v40 ∨ v6 ∨ v7 ∨ v47 ∨ v49)
    (c131 : v31 ∨ v6 ∨ v29 ∨ v7 ∨ v1 ∨ ¬v42 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v45 ∨ v48 ∨ v49)
    (c132 : v7 ∨ v37 ∨ v36 ∨ v1 ∨ ¬v43 ∨ v42 ∨ v44 ∨ v49)
    (c133 : v32 ∨ ¬v38 ∨ v46 ∨ v45 ∨ v44 ∨ v37 ∨ v39 ∨ v31)
    (c134 : ¬v41 ∨ v7 ∨ v5 ∨ v35 ∨ v6 ∨ v30 ∨ v42 ∨ v36 ∨ v37 ∨ v40 ∨ v34 ∨ v44 ∨ v47 ∨ v48)
    (c135 : ¬v46 ∨ v3 ∨ v36 ∨ v31 ∨ v4 ∨ v32 ∨ v33 ∨ v1 ∨ v39 ∨ v40 ∨ v43 ∨ v44 ∨ v45 ∨ v47)
    (c136 : v2 ∨ v37 ∨ v38 ∨ v1 ∨ v3 ∨ ¬v44 ∨ v43 ∨ v45)
    (c137 : v5 ∨ ¬v46 ∨ v31 ∨ v38 ∨ v4 ∨ v32 ∨ v33 ∨ v7 ∨ v39 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c138 : v39 ∨ ¬v45 ∨ v2 ∨ v37 ∨ v38 ∨ v3 ∨ v44 ∨ v46)
    (c139 : v2 ∨ ¬v1 ∨ v44 ∨ v7 ∨ v14 ∨ v43 ∨ v8 ∨ v49)
    (c140 : ¬v47 ∨ v5 ∨ v39 ∨ v4 ∨ v6 ∨ v40 ∨ v46 ∨ v48)
    (c141 : ¬v48 ∨ v33 ∨ v3 ∨ v35 ∨ v6 ∨ v34 ∨ v5 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c142 : v2 ∨ v37 ∨ ¬v43 ∨ v1 ∨ v36 ∨ v42 ∨ v44 ∨ v49)
    (c143 : ¬v46 ∨ v5 ∨ v38 ∨ v40 ∨ v39 ∨ v4 ∨ v45 ∨ v47)
    (c144 : ¬v49 ∨ v6 ∨ v41 ∨ v7 ∨ v1 ∨ v42 ∨ v43 ∨ v48)
    (c145 : v11 ∨ ¬v3 ∨ v46 ∨ v44 ∨ v2 ∨ v4 ∨ v45 ∨ v10)
    (c146 : ¬v49 ∨ v7 ∨ v36 ∨ v41 ∨ v1 ∨ v42 ∨ v43 ∨ v48)
    (c147 : v10 ∨ v31 ∨ ¬v37 ∨ v2 ∨ v8 ∨ v30 ∨ v9 ∨ v32 ∨ v36 ∨ v38 ∨ v39 ∨ v43 ∨ v44 ∨ v46)
    (c148 : v39 ∨ ¬v45 ∨ v37 ∨ v3 ∨ v38 ∨ v4 ∨ v44 ∨ v46)
    (c149 : v34 ∨ ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v41 ∨ v48 ∨ v49)
    (c150 : v3 ∨ ¬v44 ∨ v1 ∨ v36 ∨ v2 ∨ v37 ∨ v43 ∨ v45)
    (c151 : v2 ∨ ¬v44 ∨ v1 ∨ v36 ∨ v37 ∨ v38 ∨ v43 ∨ v45)
    (c152 : v3 ∨ ¬v45 ∨ v2 ∨ v39 ∨ v38 ∨ v4 ∨ v44 ∨ v46)
    (c153 : v12 ∨ ¬v4 ∨ v45 ∨ v3 ∨ v10 ∨ v11 ∨ v5 ∨ v46)
    (c154 : v9 ∨ ¬v1 ∨ v44 ∨ v2 ∨ v8 ∨ v43 ∨ v7 ∨ v49)
    (c155 : ¬v47 ∨ v4 ∨ v39 ∨ v5 ∨ v40 ∨ v41 ∨ v46 ∨ v48)
    (c156 : v12 ∨ ¬v39 ∨ v10 ∨ v4 ∨ v11 ∨ v32 ∨ v31 ∨ v30 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v46 ∨ v47)
    (c157 : v2 ∨ v37 ∨ v36 ∨ v38 ∨ v3 ∨ ¬v44 ∨ v43 ∨ v45)
    (c158 : v12 ∨ ¬v4 ∨ v47 ∨ v3 ∨ v10 ∨ v5 ∨ v46 ∨ v11)
    (c159 : v14 ∨ ¬v48 ∨ v12 ∨ v6 ∨ v7 ∨ v13 ∨ v3 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c160 : v4 ∨ v2 ∨ ¬v43 ∨ v1 ∨ v29 ∨ v30 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c161 : ¬v48 ∨ v5 ∨ v42 ∨ v40 ∨ v41 ∨ v6 ∨ v47 ∨ v49)
    (c162 : v2 ∨ ¬v44 ∨ v29 ∨ v6 ∨ v1 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c163 : v5 ∨ ¬v46 ∨ v3 ∨ v38 ∨ v4 ∨ v39 ∨ v45 ∨ v47)
    (c164 : v31 ∨ ¬v38 ∨ v46 ∨ v45 ∨ v44 ∨ v39 ∨ v37 ∨ v30)
    (c165 : v3 ∨ ¬v45 ∨ v2 ∨ v37 ∨ v4 ∨ v38 ∨ v44 ∨ v46)
    (c166 : v10 ∨ v43 ∨ v8 ∨ v1 ∨ v9 ∨ ¬v2 ∨ v3 ∨ v44)
    (c167 : ¬v49 ∨ v7 ∨ v36 ∨ v41 ∨ v6 ∨ v42 ∨ v43 ∨ v48)
    (c168 : v2 ∨ ¬v44 ∨ v8 ∨ v36 ∨ v41 ∨ v9 ∨ v6 ∨ v10 ∨ v37 ∨ v3 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c169 : v27 ∨ ¬v47 ∨ v3 ∨ v5 ∨ v4 ∨ v26 ∨ v25 ∨ v33 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    : False := by
  have c170 : v39 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v46 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v1 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v36 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v29 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v37 := by
      rcases c45 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
    have u6 : ¬v2 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v30 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v7 := by
      rcases c125 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n8
    have u9 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v4 := by
      rcases c15 with a|a
      · exact a
      · exact absurd u8 a
    rcases c160 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
  have c171 : v37 ∨ v1 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v2 := by
      rcases c142 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v7 := by
      rcases c132 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    rcases c8 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c172 : v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v36 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v37 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
    have u4 : ¬v41 := by
      rcases c34 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v38 := by
      rcases c31 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v39 := by
      rcases c32 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v40 := by
      rcases c33 with a|a
      · exact a
      · exact absurd u3 a
    rcases c170 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c173 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v43 := by
      rcases c65 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
    have u2 : v42 := by
      rcases c172 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
    have u3 : ¬v7 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v36 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v29 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v1 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v37 := by
      rcases c35 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v38 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v35 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v41 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : v34 := by
      rcases c149 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v31 := by
      rcases c27 with a|a
      · exact a
      · exact absurd u11 a
    rcases c131 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd u2 a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
  have c174 : v1 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v48 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v43 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v37 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : v36 := by
      rcases c151 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n3
    have u6 : ¬v29 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v41 := by
      rcases c30 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v3 := by
      rcases c136 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n3
    have u9 : ¬v31 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v6 := by
      rcases c11 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v30 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n2 a
    rcases c162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n2 a
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
  have c175 : v38 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v43 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v2 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v1 := by
      rcases c174 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v36 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v37 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v3 := by
      rcases c157 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
    rcases c2 with a|a
    · exact absurd u6 a
    · exact absurd u3 a
  have c176 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v44 := by
      rcases c173 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v43 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v2 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v38 := by
      rcases c175 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n4
    have u5 : ¬v37 := by
      rcases c31 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v36 := by
      rcases c29 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v3 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v9 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : v1 := by
      rcases c150 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n0
    have u10 : ¬v6 := by
      rcases c4 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v8 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v10 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    rcases c168 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c177 : v4 ∨ v2 ∨ v3 ∨ v38 ∨ v44 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v37 := by
      rcases c165 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v39 := by
      rcases c152 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
    rcases c32 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c178 : v2 ∨ ¬v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v43 := by
      rcases c47 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v44 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v38 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v31 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v10 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v3 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : v4 := by
      rcases c177 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : ¬v5 := by
      rcases c13 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v11 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v32 := by
      rcases c90 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v12 := by
      rcases c158 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u9
    have u13 : v37 := by
      rcases c138 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a n2
    have u14 : ¬v8 := by
      rcases c19 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v9 := by
      rcases c21 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v36 := by
      rcases c28 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v30 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u13 a
    rcases c147 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
  have c179 : v12 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ ¬v39 ∨ v40 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n8 a
    rcases c156 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n8 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c180 : v12 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ ¬v39 ∨ v44 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n8 a
    rcases c179 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n8 a
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c181 : v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v45 := by
      rcases c176 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v43 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v2 := by
      rcases c178 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : ¬v3 := by
      rcases c6 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v1 := by
      rcases c1 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v38 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v10 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v44 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v4 := by
      rcases c7 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v37 := by
      rcases c74 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v30 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v9 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : v8 := by
      rcases c166 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u9
    have u15 : v39 := by
      rcases c148 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n0
    have u16 : ¬v12 := by
      rcases c19 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v11 := by
      rcases c18 with a|a
      · exact a
      · exact absurd u14 a
    rcases c180 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd u15 a
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n1
  have c182 : v3 ∨ v4 ∨ v38 ∨ v39 ∨ v45 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v40 := by
      rcases c124 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v5 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    rcases c163 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
  have c183 : v38 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v49 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v48 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v45 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v4 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v32 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v39 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : v3 := by
      rcases c182 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
    have u8 : ¬v5 := by
      rcases c10 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v7 := by
      rcases c12 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v40 := by
      rcases c143 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n2
    have u12 : ¬v33 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v42 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    rcases c137 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
  have c184 : v1 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v44 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v43 := by
      rcases c48 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v4 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v38 := by
      rcases c183 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u6 : ¬v37 := by
      rcases c31 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v39 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v31 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v32 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v36 := by
      rcases c29 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v40 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : v30 := by
      rcases c120 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
    have u13 : ¬v33 := by
      rcases c26 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v3 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u5 a
    rcases c135 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
  have c185 : v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v46 := by
      rcases c181 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v1 := by
      rcases c184 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
    have u3 : ¬v44 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v2 := by
      rcases c1 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v7 := by
      rcases c5 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v8 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v9 := by
      rcases c154 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
    have u9 : v14 := by
      rcases c139 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n2
    rcases c22 with a|a
    · exact absurd u9 a
    · exact absurd u8 a
  have c186 : v37 ∨ v31 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v30 := by
      rcases c164 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u2 : v32 := by
      rcases c133 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
    rcases c25 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c187 : v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n1 a
    rcases c186 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c188 : v37 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c36 with a|a
      · exact a
      · exact absurd n1 a
    rcases c187 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c189 : ¬v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v37 := by
      rcases c31 with a|a
      · exact absurd n0 a
      · exact a
    rcases c188 with a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
  have c190 : v4 ∨ v5 ∨ v6 ∨ v40 ∨ v46 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v41 := by
      rcases c128 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v39 := by
      rcases c140 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    rcases c41 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c191 : v27 ∨ v3 ∨ v4 ∨ v5 ∨ v26 ∨ v33 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v39 := by
      rcases c155 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v25 := by
      rcases c169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n11 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    rcases c93 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c192 : v4 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v40 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v46 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v45 := by
      rcases c56 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v26 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v5 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v33 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : v6 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
    have u10 : ¬v41 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v3 := by
      rcases c11 with a|a
      · exact absurd u9 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a n2
  have c193 : ¬v4 ∨ v3 ∨ v5 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v10 := by
      rcases c153 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n11
    have u2 : v14 := by
      rcases c126 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c23 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c194 : ¬v4 ∨ v3 ∨ v5 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v39 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    rcases c193 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c195 : ¬v4 ∨ v3 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    rcases c194 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c196 : ¬v4 ∨ v3 ∨ v5 ∨ v6 ∨ v12 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v7 := by
      rcases c15 with a|a
      · exact absurd n0 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c197 : ¬v4 ∨ v3 ∨ v5 ∨ v12 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v6 := by
      rcases c14 with a|a
      · exact a
      · exact absurd n0 a
    rcases c196 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c198 : v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v47 := by
      rcases c185 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : v4 := by
      rcases c192 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
    have u3 : ¬v3 := by
      rcases c9 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v5 := by
      rcases c13 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v40 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v12 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v46 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v45 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v38 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c197 with a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n1
  have c199 : v5 ∨ v6 ∨ v7 ∨ v41 ∨ v47 ∨ ¬v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v40 := by
      rcases c130 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u2 : v42 := by
      rcases c122 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
    rcases c43 with a|a
    · exact absurd u1 a
    · exact absurd u2 a
  have c200 : ¬v4 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v3 := by
      rcases c9 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v48 := by
      rcases c198 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v44 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v41 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v47 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v46 := by
      rcases c60 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v45 := by
      rcases c57 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v6 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v34 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v38 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v5 := by
      rcases c13 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : v7 := by
      rcases c199 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n1
    have u13 : ¬v42 := by
      rcases c115 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v40 := by
      rcases c161 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n1
    have u16 : v33 := by
      rcases c141 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n1
    rcases c103 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c201 : v35 ∨ v3 ∨ v5 ∨ v6 ∨ v34 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ ¬v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v40 := by
      rcases c161 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n12
    have u2 : v33 := by
      rcases c141 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    rcases c103 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c202 : v5 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v48 := by
      rcases c198 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v44 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v41 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v47 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c60 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c57 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v6 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v34 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : v7 := by
      rcases c199 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n1
    have u11 : ¬v42 := by
      rcases c115 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v3 := by
      rcases c12 with a|a
      · exact a
      · exact absurd u10 a
    rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd u1 a
    · exact absurd a n1
  have c203 : v49 := by
    by_contra hc
    have u1 : v5 := by
      rcases c202 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v6 := by
      rcases c16 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v4 := by
      rcases c200 with a|a
      · exact a
      · exact absurd a hc
    have u4 : v48 := by
      rcases c198 with a|a
      · exact a
      · exact absurd a hc
    have u5 : ¬v3 := by
      rcases c10 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v12 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v7 := by
      rcases c17 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v44 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v41 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v13 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v47 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v46 := by
      rcases c60 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v45 := by
      rcases c57 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v38 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u13
    have u16 : v11 := by
      rcases c129 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u12
    have u17 : v14 := by
      rcases c159 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a hc
    rcases c24 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c204 : ¬v5 := by
    by_contra hc
    have u1 : v49 := c203
    have u2 : ¬v43 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v47 := by
      rcases c63 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v33 := by
      rcases c98 with a|a
      · exact a
      · exact absurd hc a
    have u9 : ¬v6 := by
      rcases c16 with a|a
      · exact a
      · exact absurd hc a
    have u10 : ¬v1 := by
      rcases c3 with a|a
      · exact absurd hc a
      · exact a
    have u11 : v41 := by
      rcases c144 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
    have u12 : ¬v40 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v34 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u11 a
    rcases c127 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u12
    · exact absurd u11 a
    · exact absurd a u3
    · exact absurd a u4
  have c205 : v6 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c203
    have u2 : ¬v44 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v47 := by
      rcases c63 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v7 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v5 := c204
    have u9 : ¬v36 := by
      rcases c30 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v37 := by
      rcases c34 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v40 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v34 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n1 a
    have u13 : v30 := by
      rcases c134 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : v33 := by
      rcases c127 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
    rcases c26 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c206 : v41 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c203
    have u2 : ¬v43 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v7 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v42 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v36 := by
      rcases c167 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    have u7 : v1 := by
      rcases c144 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
    rcases c67 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c207 : v6 ∨ v3 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v41 := by
      rcases c206 with a|a
      · exact a
      · exact absurd a n0
    rcases c205 with a|a
    · exact absurd a n0
    · exact absurd u1 a
  have c208 : v1 ∨ v3 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c203
    have u2 : ¬v43 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c61 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v7 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v38 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v36 := by
      rcases c146 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u6
    have u12 : v29 := by
      rcases c121 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    rcases c69 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c209 : v3 := by
    by_contra hc
    have u1 : v6 := by
      rcases c207 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v1 := by
      rcases c4 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v41 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v34 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    rcases c208 with a|a|a|a
    · exact absurd a u2
    · exact absurd a hc
    · exact absurd a u4
    · exact absurd a u3
  have u1 : v49 := c203
  have u2 : ¬v44 := by
    rcases c54 with a|a
    · exact a
    · exact absurd u1 a
  have u3 : ¬v45 := by
    rcases c58 with a|a
    · exact absurd u1 a
    · exact a
  have u4 : ¬v46 := by
    rcases c61 with a|a
    · exact absurd u1 a
    · exact a
  have u5 : v3 := c209
  have u6 : ¬v10 := by
    rcases c80 with a|a
    · exact a
    · exact absurd u5 a
  have u7 : ¬v2 := by
    rcases c6 with a|a
    · exact absurd u5 a
    · exact a
  have u8 : ¬v4 := by
    rcases c9 with a|a
    · exact a
    · exact absurd u5 a
  have u9 : v11 := by
    rcases c145 with a|a|a|a|a|a|a|a
    · exact a
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u6
  have u10 : v9 := by
    rcases c123 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u7
    · exact a
    · exact absurd a u8
  rcases c20 with a|a
  · exact absurd u10 a
  · exact absurd u9 a
