import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 94-clause unsatisfiable core of minimal-cover pattern 0, contradictory.
71 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem qcore000_false
    (v6 v7 v8 v9 v58 v64 v69 v83 v84 v85 v86 v94 v124 v130 v135 v148 v149 v150 v179 v180 v185 v190 v224 v225 v230 v330 : Prop)
    (c1 : ¬v94 ∨ ¬v130 ∨ ¬v185 ∨ ¬v84 ∨ v149 ∨ v230)
    (c2 : ¬v330 ∨ ¬v179 ∨ ¬v185 ∨ v124 ∨ ¬v84 ∨ ¬v130)
    (c3 : v94 ∨ ¬v124 ∨ ¬v224 ∨ v330 ∨ v230 ∨ ¬v130)
    (c4 : v148 ∨ ¬v149 ∨ v179 ∨ v150 ∨ v180 ∨ v185)
    (c5 : v330 ∨ ¬v179 ∨ ¬v185 ∨ v149 ∨ v230 ∨ ¬v224)
    (c6 : ¬v330 ∨ v224 ∨ ¬v149 ∨ v179 ∨ v185 ∨ ¬v230)
    (c7 : ¬v179 ∨ ¬v224 ∨ ¬v149 ∨ ¬v230 ∨ v185 ∨ v330)
    (c8 : ¬v58 ∨ ¬v6 ∨ v7 ∨ v124)
    (c9 : v6 ∨ ¬v124 ∨ ¬v7 ∨ v58)
    (c10 : ¬v64 ∨ ¬v7 ∨ v8 ∨ v130)
    (c11 : v64 ∨ v7 ∨ ¬v130 ∨ ¬v8)
    (c12 : v9 ∨ ¬v69 ∨ ¬v8 ∨ v135)
    (c13 : ¬v9 ∨ v8 ∨ ¬v135 ∨ v69)
    (c14 : ¬v124 ∨ v84 ∨ ¬v83 ∨ v179)
    (c15 : v83 ∨ v124 ∨ ¬v179 ∨ ¬v84)
    (c16 : ¬v85 ∨ ¬v135 ∨ v86 ∨ v190)
    (c17 : v85 ∨ ¬v190 ∨ v135 ∨ ¬v86)
    (c18 : ¬v179 ∨ ¬v148 ∨ v149 ∨ v224)
    (c19 : v148 ∨ ¬v224 ∨ ¬v149 ∨ v179)
    (c20 : ¬v185 ∨ ¬v149 ∨ v150 ∨ v230)
    (c21 : ¬v150 ∨ v149 ∨ ¬v230 ∨ v185)
    (c22 : ¬v330 ∨ ¬v180 ∨ v179 ∨ v185)
    (c23 : v225 ∨ ¬v224 ∨ ¬v230 ∨ v330)
    (c24 : v58 ∨ v6 ∨ v7 ∨ v124)
    (c25 : ¬v58 ∨ v6 ∨ v7 ∨ v124)
    (c26 : v6 ∨ ¬v124 ∨ ¬v7 ∨ ¬v58)
    (c27 : v58 ∨ ¬v6 ∨ v7 ∨ v124)
    (c28 : ¬v6 ∨ ¬v124 ∨ ¬v7 ∨ v58)
    (c29 : ¬v6 ∨ ¬v58 ∨ ¬v7 ∨ ¬v124)
    (c30 : v64 ∨ v7 ∨ v8 ∨ v130)
    (c31 : v7 ∨ ¬v130 ∨ v8 ∨ v64)
    (c32 : ¬v64 ∨ v7 ∨ v8 ∨ v130)
    (c33 : ¬v64 ∨ v7 ∨ ¬v130 ∨ v8)
    (c34 : ¬v64 ∨ v7 ∨ ¬v130 ∨ ¬v8)
    (c35 : v64 ∨ ¬v7 ∨ v8 ∨ v130)
    (c36 : v64 ∨ ¬v7 ∨ ¬v8 ∨ v130)
    (c37 : v64 ∨ ¬v130 ∨ ¬v7 ∨ ¬v8)
    (c38 : ¬v64 ∨ ¬v8 ∨ ¬v7 ∨ v130)
    (c39 : ¬v64 ∨ ¬v130 ∨ ¬v7 ∨ ¬v8)
    (c40 : v8 ∨ v9 ∨ v69 ∨ v135)
    (c41 : v69 ∨ v9 ∨ ¬v135 ∨ v8)
    (c42 : v8 ∨ ¬v69 ∨ v9 ∨ v135)
    (c43 : ¬v69 ∨ v8 ∨ ¬v135 ∨ v9)
    (c44 : ¬v69 ∨ v8 ∨ ¬v135 ∨ ¬v9)
    (c45 : ¬v8 ∨ v9 ∨ v69 ∨ v135)
    (c46 : ¬v9 ∨ v69 ∨ v135 ∨ ¬v8)
    (c47 : v69 ∨ ¬v9 ∨ ¬v135 ∨ ¬v8)
    (c48 : ¬v69 ∨ ¬v9 ∨ ¬v8 ∨ v135)
    (c49 : ¬v69 ∨ ¬v9 ∨ ¬v135 ∨ ¬v8)
    (c50 : v83 ∨ v179 ∨ v124 ∨ v84)
    (c51 : v83 ∨ v179 ∨ ¬v124 ∨ v84)
    (c52 : v83 ∨ ¬v179 ∨ ¬v124 ∨ v84)
    (c53 : v83 ∨ v179 ∨ v124 ∨ ¬v84)
    (c54 : v83 ∨ ¬v84 ∨ ¬v124 ∨ ¬v179)
    (c55 : v124 ∨ v84 ∨ ¬v83 ∨ v179)
    (c56 : ¬v124 ∨ ¬v179 ∨ ¬v83 ∨ v84)
    (c57 : v124 ∨ v179 ∨ ¬v83 ∨ ¬v84)
    (c58 : v124 ∨ ¬v179 ∨ ¬v84 ∨ ¬v83)
    (c59 : ¬v124 ∨ ¬v84 ∨ ¬v83 ∨ v179)
    (c60 : ¬v124 ∨ ¬v179 ∨ ¬v83 ∨ ¬v84)
    (c61 : ¬v85 ∨ ¬v130 ∨ v84 ∨ v185)
    (c62 : v85 ∨ ¬v185 ∨ v130 ∨ ¬v84)
    (c63 : v85 ∨ v86 ∨ v190 ∨ v135)
    (c64 : v85 ∨ v86 ∨ ¬v190 ∨ v135)
    (c65 : v85 ∨ v86 ∨ ¬v135 ∨ v190)
    (c66 : v85 ∨ ¬v190 ∨ v86 ∨ ¬v135)
    (c67 : v85 ∨ ¬v86 ∨ v135 ∨ v190)
    (c68 : v85 ∨ ¬v190 ∨ ¬v86 ∨ ¬v135)
    (c69 : ¬v85 ∨ v86 ∨ v135 ∨ v190)
    (c70 : ¬v190 ∨ ¬v135 ∨ ¬v85 ∨ v86)
    (c71 : ¬v85 ∨ ¬v86 ∨ v135 ∨ v190)
    (c72 : ¬v85 ∨ ¬v190 ∨ v135 ∨ ¬v86)
    (c73 : ¬v85 ∨ ¬v135 ∨ v190 ∨ ¬v86)
    (c74 : ¬v85 ∨ ¬v86 ∨ ¬v190 ∨ ¬v135)
    (c75 : v179 ∨ v148 ∨ v149 ∨ v224)
    (c76 : ¬v179 ∨ v148 ∨ v149 ∨ v224)
    (c77 : v148 ∨ ¬v179 ∨ ¬v224 ∨ v149)
    (c78 : v224 ∨ ¬v149 ∨ v179 ∨ v148)
    (c79 : ¬v148 ∨ v179 ∨ v149 ∨ v224)
    (c80 : ¬v148 ∨ ¬v179 ∨ ¬v224 ∨ v149)
    (c81 : v224 ∨ ¬v149 ∨ v179 ∨ ¬v148)
    (c82 : ¬v148 ∨ ¬v224 ∨ ¬v149 ∨ v179)
    (c83 : v185 ∨ v149 ∨ v150 ∨ v230)
    (c84 : v185 ∨ ¬v230 ∨ v150 ∨ v149)
    (c85 : ¬v185 ∨ v149 ∨ v150 ∨ v230)
    (c86 : ¬v185 ∨ ¬v230 ∨ v149 ∨ v150)
    (c87 : v185 ∨ v149 ∨ ¬v150 ∨ v230)
    (c88 : ¬v150 ∨ v149 ∨ ¬v230 ∨ ¬v185)
    (c89 : v185 ∨ ¬v149 ∨ v230 ∨ v150)
    (c90 : ¬v185 ∨ ¬v230 ∨ ¬v149 ∨ v150)
    (c91 : v185 ∨ ¬v150 ∨ ¬v149 ∨ v230)
    (c92 : v185 ∨ ¬v230 ∨ ¬v150 ∨ ¬v149)
    (c93 : ¬v185 ∨ ¬v150 ∨ ¬v149 ∨ v230)
    (c94 : ¬v150 ∨ ¬v230 ∨ ¬v185 ∨ ¬v149)
    : False := by
  have c95 : v86 ∨ v135 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v85 := by
      rcases c63 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
    rcases c69 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c96 : ¬v86 ∨ v135 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v85 := by
      rcases c67 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c71 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c97 : v135 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v86 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c95 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c98 : v148 ∨ v149 ∨ v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c76 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c75 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c99 : ¬v149 ∨ ¬v150 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c93 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c91 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c100 : v150 ∨ v149 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c85 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c83 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c101 : v86 ∨ ¬v135 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v85 := by
      rcases c65 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    rcases c16 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c102 : v86 ∨ ¬v135 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v85 := by
      rcases c66 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c70 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c103 : ¬v86 ∨ ¬v135 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v85 := by
      rcases c68 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c74 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c104 : ¬v135 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v86 := by
      rcases c103 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c102 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c105 : ¬v86 ∨ v135 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v85 := by
      rcases c72 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c17 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd n0 a
  have c106 : ¬v83 ∨ ¬v84 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v124 := by
      rcases c57 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c59 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c107 : v69 ∨ v9 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v8 := by
      rcases c40 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c45 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c108 : ¬v69 ∨ v9 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v8 := by
      rcases c42 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c12 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
  have c109 : v9 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v69 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c107 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c110 : v7 ∨ v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v64 := by
      rcases c32 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c30 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c111 : ¬v8 ∨ ¬v9 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v69 := by
      rcases c48 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c46 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
  have c112 : v150 ∨ ¬v149 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c89 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
  have c113 : ¬v149 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v150 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c99 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n1
  have c114 : ¬v7 ∨ v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v64 := by
      rcases c10 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c35 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c115 : v130 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v7 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c110 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c116 : v149 ∨ ¬v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v150 := by
      rcases c88 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c86 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u1
  have c117 : ¬v149 ∨ ¬v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v150 := by
      rcases c90 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c94 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c118 : ¬v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v149 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c117 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c119 : v150 ∨ ¬v224 ∨ ¬v230 ∨ v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v185 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : v149 := by
      rcases c84 with a|a|a|a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
    have u3 : ¬v179 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
    have u4 : v148 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact absurd a u3
    rcases c82 with a|a|a|a
    · exact absurd u4 a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd a u3
  have c120 : ¬v150 ∨ v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v149 := by
      rcases c92 with a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c21 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
  have c121 : ¬v148 ∨ v149 ∨ v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c79 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
  have c122 : v149 ∨ v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v148 := by
      rcases c121 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c98 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c123 : v8 ∨ ¬v9 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v69 := by
      rcases c44 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c13 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c124 : ¬v8 ∨ ¬v9 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v69 := by
      rcases c49 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c47 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c125 : ¬v9 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v8 := by
      rcases c123 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c124 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c126 : v8 ∨ v9 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v69 := by
      rcases c41 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c43 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
  have c127 : ¬v7 ∨ ¬v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v64 := by
      rcases c36 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c38 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c128 : v6 ∨ v7 ∨ v124 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v58 := by
      rcases c25 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c24 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c129 : v224 ∨ ¬v149 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v148 := by
      rcases c81 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
    rcases c78 with a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
  have c130 : ¬v224 ∨ v150 ∨ ¬v230 ∨ v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    rcases c119 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n3
  have c131 : ¬v6 ∨ v7 ∨ v124 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v58 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c27 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c132 : v7 ∨ v124 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v6 := by
      rcases c128 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c131 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c133 : v84 ∨ ¬v124 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v83 := by
      rcases c52 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c56 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd a n0
  have c134 : ¬v84 ∨ ¬v124 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v83 := by
      rcases c60 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c54 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c135 : ¬v124 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v84 := by
      rcases c133 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c134 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c136 : ¬v8 ∨ ¬v7 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v64 := by
      rcases c39 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c37 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c137 : ¬v8 ∨ ¬v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v130 := by
      rcases c136 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c127 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c138 : ¬v135 ∨ v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v9 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    rcases c126 with a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
  have c139 : ¬v84 ∨ v124 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v83 := by
      rcases c15 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c58 with a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd u1 a
  have c140 : v185 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v124 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v84 := by
      rcases c139 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
    have u3 : v7 := by
      rcases c132 with a|a
      · exact a
      · exact absurd a u1
    have u4 : ¬v8 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v130 := by
      rcases c115 with a|a
      · exact a
      · exact absurd a u4
    have u6 : ¬v135 := by
      rcases c138 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v85 := by
      rcases c61 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a n0
    have u8 : v190 := by
      rcases c97 with a|a
      · exact absurd a u6
      · exact a
    have u9 : ¬v86 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u8 a
    rcases c64 with a|a|a|a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd u8 a
    · exact absurd a u6
  have c141 : ¬v230 ∨ v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v185 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v150 := by
      rcases c120 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
    have u3 : ¬v179 := by
      rcases c140 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v149 := by
      rcases c84 with a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
    have u5 : ¬v224 := by
      rcases c130 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n1
    rcases c129 with a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u3
  have c142 : v84 ∨ ¬v124 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v83 := by
      rcases c14 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c51 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n0
  have c143 : v84 ∨ ¬v124 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v179 := by
      rcases c135 with a|a
      · exact absurd n1 a
      · exact a
    rcases c142 with a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u1
  have c144 : v149 ∨ v185 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v150 := by
      rcases c87 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c100 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c145 : v230 ∨ v185 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v149 := by
      rcases c113 with a|a
      · exact a
      · exact absurd a n0
    rcases c144 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c146 : v179 ∨ v185 ∨ ¬v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v180 := by
      rcases c22 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : v230 := by
      rcases c145 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v150 := by
      rcases c120 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
    have u4 : v149 := by
      rcases c84 with a|a|a|a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u3
      · exact a
    have u5 : v224 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u2 a
    have u6 : v148 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n1
    rcases c82 with a|a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u4 a
    · exact absurd a n0
  have c147 : v185 ∨ ¬v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v179 := by
      rcases c146 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c140 with a|a
    · exact absurd a n0
    · exact absurd u1 a
  have c148 : v185 := by
    by_contra hc
    have u1 : v230 := by
      rcases c145 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v330 := by
      rcases c147 with a|a
      · exact absurd a hc
      · exact a
    rcases c141 with a|a
    · exact absurd u1 a
    · exact absurd a u2
  have c149 : ¬v84 ∨ ¬v130 ∨ v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v185 := c148
    have u2 : ¬v230 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v149 := by
      rcases c113 with a|a
      · exact a
      · exact absurd a u2
    have u4 : v224 := by
      rcases c122 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v94 := by
      rcases c1 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u2
    have u6 : ¬v179 := by
      rcases c5 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u4 a
    have u7 : ¬v124 := by
      rcases c3 with a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd n1 a
    have u8 : ¬v83 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
    rcases c53 with a|a|a|a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd n0 a
  have c150 : v84 ∨ v124 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v83 := by
      rcases c55 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c50 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c151 : v84 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v124 := by
      rcases c143 with a|a
      · exact absurd a n0
      · exact a
    rcases c150 with a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
  have c152 : v135 ∨ ¬v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v9 := by
      rcases c109 with a|a
      · exact a
      · exact absurd a n0
    rcases c111 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c153 : ¬v85 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v190 := by
      rcases c104 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v86 := by
      rcases c101 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
    rcases c73 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd u2 a
  have c154 : ¬v84 ∨ v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v185 := c148
    have u2 : ¬v130 := by
      rcases c149 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
    have u3 : v8 := by
      rcases c115 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v85 := by
      rcases c62 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd n0 a
    have u5 : v135 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u3 a
    rcases c153 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c155 : v330 := by
    by_contra hc
    have u1 : v185 := c148
    have u2 : ¬v230 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v149 := by
      rcases c113 with a|a
      · exact a
      · exact absurd a u2
    have u4 : v224 := by
      rcases c122 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v84 := by
      rcases c154 with a|a
      · exact a
      · exact absurd a hc
    have u6 : v179 := by
      rcases c151 with a|a
      · exact absurd a u5
      · exact a
    have u7 : ¬v148 := by
      rcases c80 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact absurd a u3
    rcases c77 with a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd a u3
  have c156 : ¬v84 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v185 := c148
    have u2 : v8 := by
      rcases c115 with a|a
      · exact absurd a n1
      · exact a
    have u3 : v85 := by
      rcases c62 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd n0 a
    have u4 : v135 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u2 a
    rcases c153 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c157 : v7 ∨ ¬v8 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v64 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c11 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd n1 a
  have c158 : ¬v8 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v7 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    rcases c157 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c159 : v7 ∨ v8 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v64 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c31 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c160 : v58 ∨ ¬v7 ∨ ¬v124 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v6 := by
      rcases c28 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c9 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c161 : ¬v58 ∨ ¬v7 ∨ ¬v124 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v6 := by
      rcases c29 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c26 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c162 : ¬v124 ∨ ¬v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v58 := by
      rcases c161 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c160 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c163 : v124 ∨ ¬v84 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v185 := c148
    have u2 : v330 := c155
    have u3 : v130 := by
      rcases c156 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v179 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u3 a
    have u5 : ¬v83 := by
      rcases c57 with a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd n1 a
    rcases c53 with a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd n1 a
  have c164 : ¬v84 := by
    by_contra hc
    have u1 : v130 := by
      rcases c156 with a|a
      · exact absurd hc a
      · exact a
    have u2 : v124 := by
      rcases c163 with a|a
      · exact a
      · exact absurd hc a
    have u3 : ¬v8 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v7 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    rcases c159 with a|a|a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd u1 a
  have u1 : v185 := c148
  have u2 : ¬v230 := by
    rcases c118 with a|a
    · exact absurd u1 a
    · exact a
  have u3 : ¬v149 := by
    rcases c113 with a|a
    · exact a
    · exact absurd a u2
  have u4 : v224 := by
    rcases c122 with a|a
    · exact absurd a u3
    · exact a
  have u5 : ¬v84 := c164
  have u6 : v179 := by
    rcases c151 with a|a
    · exact absurd a u5
    · exact a
  have u7 : ¬v148 := by
    rcases c80 with a|a|a|a
    · exact a
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd a u3
  rcases c77 with a|a|a|a
  · exact absurd a u7
  · exact absurd u6 a
  · exact absurd u4 a
  · exact absurd a u3
