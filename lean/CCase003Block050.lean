import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2500-2549 of the 2559-step refutation of ccase003: 106 core clauses and 67 earlier-derived ones give 6 more. -/
theorem CCase003_block050
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c38 : ¬v8 ∨ ¬v9)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v43 ∨ ¬v49)
    (c177 : ¬v44 ∨ ¬v49)
    (c181 : ¬v45 ∨ ¬v49)
    (c184 : ¬v49 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c210 : ¬v49 ∨ v43 ∨ v42 ∨ v7 ∨ v1 ∨ v38 ∨ v34 ∨ v3 ∨ v29 ∨ v35 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c252 : ¬v49 ∨ v42 ∨ v4 ∨ v6 ∨ v7 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v34 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c261 : ¬v8 ∨ v14 ∨ v15 ∨ v2 ∨ v9 ∨ v16 ∨ v1 ∨ v7)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c334 : v22 ∨ ¬v15 ∨ v28 ∨ v26 ∨ v16 ∨ v9 ∨ v2 ∨ v8 ∨ v19 ∨ v1 ∨ v7 ∨ v21 ∨ v20 ∨ v12)
    (c347 : ¬v49 ∨ v42 ∨ v13 ∨ v7 ∨ v39 ∨ v1 ∨ v41 ∨ v8 ∨ v4 ∨ v14 ∨ v43 ∨ v46 ∨ v47 ∨ v48)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c369 : v43 ∨ ¬v36 ∨ v44 ∨ v34 ∨ v35 ∨ v8 ∨ v1 ∨ v29 ∨ v41 ∨ v42 ∨ v9 ∨ v14 ∨ v37 ∨ v48)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c392 : ¬v49 ∨ v42 ∨ v41 ∨ v6 ∨ v1 ∨ v7 ∨ v43 ∨ v48)
    (c395 : ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v36 ∨ v43 ∨ v48)
    (c404 : v36 ∨ v29 ∨ v37 ∨ v24 ∨ v31 ∨ ¬v30 ∨ v38 ∨ v23)
    (c415 : ¬v49 ∨ v42 ∨ v27 ∨ v7 ∨ v22 ∨ v1 ∨ v41 ∨ v35 ∨ v37 ∨ v2 ∨ v28 ∨ v43 ∨ v44 ∨ v48)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c451 : v22 ∨ v27 ∨ v3 ∨ v21 ∨ v17 ∨ v1 ∨ v13 ∨ v10 ∨ v9 ∨ v7 ∨ v8 ∨ v20 ∨ ¬v14 ∨ v28)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c472 : v36 ∨ v37 ∨ v35 ∨ v34 ∨ v22 ∨ v41 ∨ v28 ∨ ¬v29 ∨ v7 ∨ v1 ∨ v27 ∨ v30 ∨ v2 ∨ v43)
    (c498 : v43 ∨ ¬v30 ∨ v35 ∨ v45 ∨ v34 ∨ v22 ∨ v29 ∨ v37 ∨ v44 ∨ v38 ∨ v41 ∨ v23 ∨ v27 ∨ v31)
    (c515 : v36 ∨ v37 ∨ v25 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v16 ∨ v15 ∨ v31 ∨ v39 ∨ v21 ∨ v22 ∨ v32)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c866 : v10 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c876 : ¬v27 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34)
    (c909 : v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1152 : v11 ∨ v4 ∨ v10 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1236 : v20 ∨ ¬v13 ∨ v17 ∨ v19 ∨ v21 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1772 : ¬v19 ∨ ¬v22 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v35)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1981 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v24 ∨ v34 ∨ v35)
    (c2006 : ¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    (c2275 : ¬v24 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v48)
    (c2276 : v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2307 : ¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2312 : ¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2413 : v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2539 : ¬v11 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2688 : ¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2732 : v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2770 : ¬v31 ∨ ¬v23 ∨ v26 ∨ ¬v27)
    (c2778 : v18 ∨ v1 ∨ ¬v5 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2810 : ¬v7 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2823 : ¬v15 ∨ ¬v22 ∨ ¬v24 ∨ v31)
    (c2875 : v49)
    (c2937 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40)
    (c2943 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c2959 : ¬v20 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31)
    (c2992 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c2994 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v27 ∨ v31)
    (c3002 : ¬v31 ∨ ¬v41)
    (c3004 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ ¬v27)
    (c3006 : ¬v30 ∨ ¬v41)
    (c3034 : ¬v26 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c3037 : ¬v23 ∨ v17 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v32 ∨ v33)
    (c3039 : v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16)
    (c3057 : v5)
    (c3061 : v23 ∨ v2 ∨ v9 ∨ v16 ∨ ¬v31)
    (c3079 : ¬v25 ∨ ¬v23 ∨ v26 ∨ v30 ∨ v31 ∨ v32)
    (c3083 : ¬v2 ∨ v3 ∨ v9)
    (c3084 : ¬v10)
    (c3085 : v4 ∨ v1 ∨ ¬v2)
    (c3086 : ¬v23 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v32)
    (c3094 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v37)
    (c3095 : ¬v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v15 ∨ ¬v24 ∨ v30 ∨ v37)
    (c3099 : ¬v30 ∨ v4 ∨ v8 ∨ v11 ∨ v18)
    (c3100 : v4 ∨ v8 ∨ v11 ∨ v18)
    (c3103 : v24 ∨ ¬v22 ∨ v30 ∨ ¬v31 ∨ v37 ∨ v38 ∨ v39)
    (c3105 : v29 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v11 ∨ v18 ∨ ¬v22 ∨ v30)
    : (v12 ∨ ¬v1) ∧ (¬v41 ∨ v1 ∨ v6 ∨ v7) ∧ (v11) ∧ (v22 ∨ v15 ∨ ¬v30) ∧ (¬v23) ∧ (¬v15) := by
  have c3106 : v24 ∨ v1 ∨ v2 ∨ ¬v22 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := c3057
    have u8 : ¬v10 := c3084
    have u9 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v25 := by
      rcases c2312 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u15 : v23 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v26 := by
      rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c84 with a|a|a
    · exact absurd u16 a
    · exact absurd n3 a
    · exact absurd u15 a
  have c3107 : ¬v22 ∨ v8 ∨ v11 ∨ v18 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u9 : v4 := by
      rcases c3100 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u9 a
    have u11 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u9 a
    have u13 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u9 a
    have u14 : v29 := by
      rcases c3105 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n4
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v24 := by
      rcases c3106 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u17
    have u19 : ¬v15 := by
      rcases c2823 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact absurd a u15
    have u20 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n0 a
    have u22 : v16 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : v17 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u18 a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact a
    rcases c66 with a|a
    · exact absurd u22 a
    · exact absurd u23 a
  have c3108 : v23 ∨ v1 ∨ v2 ∨ v8 ∨ v22 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v9 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v16 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a u7
      · exact a
    have u12 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : v32 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u13
      · exact a
      · exact absurd a n8
      · exact absurd a u12
    have u16 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u14
    rcases c2992 with a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a u9
  have c3109 : v29 ∨ v1 ∨ v2 ∨ v8 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u8 : v15 := by
      rcases c3094 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n7
    have u15 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u16 : v4 := by
      rcases c3100 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
    have u17 : v14 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n3
      · exact a
    have u18 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u16 a
    rcases c451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd u17 a
    · exact absurd a n7
  have c3110 : v35 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v22 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v23 := by
      rcases c3108 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u10 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n8 a
    have u11 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd u9 a
    have u12 : v29 := by
      rcases c3109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a u8
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v41 := by
      rcases c2943 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u15
    have u17 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u7
    have u18 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    rcases c472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a n7
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd u12 a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n10
    · exact absurd a n2
    · exact absurd a u2
  have c3111 : v28 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v22 ∨ v27 ∨ v29 ∨ v30 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u8 : v15 := by
      rcases c3094 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u14 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n0
    have u15 : v14 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n4
      · exact a
    rcases c451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u12
    · exact absurd u15 a
    · exact absurd a n0
  have c3112 : v25 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v22 ∨ ¬v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
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
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v35 := by
      rcases c3110 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v27 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a n10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u4
    have u18 : v28 := by
      rcases c3111 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u11
    have u19 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n8 a
    have u20 : v9 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v16 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd u20 a
      · exact absurd a u8
      · exact a
    have u22 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u22
    have u24 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u23 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u6
  have c3113 : ¬v24 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v22 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : v25 := by
      rcases c3112 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n0 a
    have u12 : v9 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : v16 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd a u7
      · exact a
    have u14 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u13 a
      · exact a
    rcases c3095 with a|a|a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a u9
  have c3114 : v31 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v8 ∨ v11 ∨ v22 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := c3057
    have u8 : ¬v10 := c3084
    have u9 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v24 := by
      rcases c3113 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u12 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v23 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : v29 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd u17 a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u4
    have u19 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u16
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
    have u23 : ¬v25 := by
      rcases c3079 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u22
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u19
    rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n1
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3115 : v30 ∨ v8 ∨ v11 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v22 := by
      rcases c3107 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u12 : v4 := by
      rcases c3100 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    have u14 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    have u16 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u12 a
    have u17 : v31 := by
      rcases c3114 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n0
    have u18 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u24
    have u26 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u21
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n1
      · exact a
    have u28 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u27 a
      · exact a
    have u33 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u28
    have u34 : v23 := by
      rcases c3061 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u33
      · exact absurd a u28
      · exact absurd u17 a
    have u35 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd u34 a
      · exact absurd a u32
      · exact a
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u22
    have u36 : ¬v25 := by
      rcases c3037 with a|a|a|a|a|a|a
      · exact absurd u34 a
      · exact absurd a u29
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u19
    have u37 : ¬v27 := by
      rcases c2770 with a|a|a|a
      · exact absurd u17 a
      · exact absurd u34 a
      · exact absurd a u35
      · exact a
    have u38 : ¬v13 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u36
      · exact absurd a u35
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u38
    · exact absurd a u37
    · exact absurd a u23
    · exact absurd a u31
    · exact absurd a u7
    · exact absurd a u22
  have c3116 : ¬v15 ∨ v6 ∨ v7 ∨ v27 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd n0 a
      · exact a
    have u15 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd n0 a
      · exact a
    have u16 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n4
    have u17 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v30 := by
      rcases c3115 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : v4 := by
      rcases c3099 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u13
    have u26 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u11
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u29 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u25 a
    have u30 : ¬v26 := by
      rcases c3034 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd u27 a
      · exact absurd a u20
    have u31 : ¬v22 := by
      rcases c2823 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u27 a
      · exact absurd a u20
    have u32 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
    have u33 : v25 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u12
      · exact a
      · exact absurd a u30
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u34 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u32 a
      · exact a
    have u35 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u27 a
    rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u31
    · exact absurd a u22
    · exact absurd a u34
    · exact absurd a u3
    · exact absurd a u26
    · exact absurd a n5
    · exact absurd a u35
    · exact absurd a n3
    · exact absurd a u20
  have c3117 : ¬v23 ∨ v1 ∨ v18 ∨ ¬v22 ∨ v31 := by
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
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
    have u10 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd u6 a
    · exact absurd a u7
    · exact absurd u10 a
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3118 : v8 ∨ v11 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v30 := by
      rcases c3115 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u11 a
      · exact a
    have u19 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v4 := by
      rcases c3099 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u23 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u22 a
    have u24 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u22 a
    have u26 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u7
    have u27 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v27 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u4
    have u30 : ¬v15 := by
      rcases c3116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u15
      · exact absurd a u18
    have u31 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a u25
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u30
    have u32 : ¬v23 := by
      rcases c3117 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd u31 a
      · exact absurd a u12
    have u33 : v24 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd a u28
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u19
      · exact absurd a u32
    have u34 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u33 a
    have u35 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u33 a
    have u36 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u33 a
    have u37 : v13 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u35
      · exact absurd a u24
      · exact a
      · exact absurd a u36
      · exact absurd a u29
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u7
    have u38 : ¬v19 := by
      rcases c1772 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u33 a
      · exact absurd a u34
      · exact absurd a u35
      · exact absurd a u13
    have u39 : ¬v20 := by
      rcases c2959 with a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u33 a
      · exact absurd a u34
      · exact absurd a u12
    have u40 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u33 a
    have u41 : v17 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u39
      · exact absurd u37 a
      · exact a
      · exact absurd a u38
      · exact absurd a u40
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u42 : v16 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u32
      · exact absurd a u13
      · exact absurd u31 a
      · exact absurd a u40
      · exact absurd a u30
      · exact a
      · exact absurd a u35
    rcases c66 with a|a
    · exact absurd u42 a
    · exact absurd u41 a
  have c3119 : v15 ∨ v1 ∨ v7 ∨ ¬v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u8 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
    have u11 : v21 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n0
      · exact a
    have u12 : v16 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    rcases c70 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c3120 : v31 ∨ ¬v15 ∨ ¬v22 := by
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
    have u7 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n1 a
      · exact a
    have u8 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u7
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2823 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u8 a
    · exact absurd a n0
  have c3121 : v12 ∨ ¬v1 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := c3057
    have u6 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact a
    rcases c959 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3122 : ¬v31 ∨ v11 ∨ v18 := by
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
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u15 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd n0 a
      · exact a
    have u16 : v8 := by
      rcases c3115 with a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u19
      · exact a
    have u23 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u20
    have u24 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v15 := by
      rcases c3119 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd u16 a
    have u26 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u25 a
      · exact a
    have u30 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u25 a
      · exact a
    have u31 : v23 := by
      rcases c3061 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd n0 a
    have u32 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact absurd a u30
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
    have u33 : ¬v25 := by
      rcases c3037 with a|a|a|a|a|a|a
      · exact absurd u31 a
      · exact absurd a u27
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u34 : ¬v27 := by
      rcases c2770 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u31 a
      · exact absurd a u32
      · exact a
    have u35 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u34
      · exact absurd a u15
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u14
    have u36 : v4 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd a u33
      · exact absurd a u34
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c30 with a|a|a
    · exact absurd u7 a
    · exact absurd u36 a
    · exact absurd u35 a
  have c3123 : ¬v41 ∨ v1 ∨ v6 ∨ v7 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u3
  have c3124 : ¬v23 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v24 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v5 := c3057
    have u6 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u7 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a n3
      · exact a
    have u10 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u11 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v41 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u10
    have u13 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u4
      · exact a
    have u14 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v33 := by
      rcases c2275 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd a u8
      · exact a
      · exact absurd a u4
    have u16 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1156 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u4
  have c3125 : v27 ∨ v22 ∨ v23 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u5 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n3 a
    rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n4
  have c3126 : v6 ∨ v11 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v8 := by
      rcases c3118 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u12 : ¬v31 := by
      rcases c3122 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u13 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u13
      · exact a
    have u19 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u15
    have u20 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v41 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u20
    have u22 : v15 := by
      rcases c3119 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd u11 a
    have u23 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v22 := by
      rcases c3120 with a|a|a
      · exact absurd a u12
      · exact absurd u22 a
      · exact a
    have u26 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u24
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u27 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u7
    have u28 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v26 := by
      rcases c3034 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd u26 a
      · exact absurd a u12
    have u30 : ¬v23 := by
      rcases c3124 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd u26 a
      · exact absurd a u29
    have u31 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u30
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u32 : v27 := by
      rcases c3125 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u30
      · exact absurd u31 a
      · exact absurd a u12
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u21
    rcases c2994 with a|a|a|a|a|a|a
    · exact absurd u26 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a n2
    · exact absurd a u30
    · exact absurd u32 a
    · exact absurd a u12
  have c3127 : v23 ∨ v1 ∨ v7 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v22 ∨ v31 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
    have u11 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v42 := by
      rcases c210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    have u18 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v27 := by
      rcases c3125 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n9
    rcases c2994 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd u19 a
    · exact absurd a n8
  have c3128 : v41 ∨ v11 ∨ v18 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : v6 := by
      rcases c3126 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u10 a
    have u13 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact a
    have u14 : v8 := by
      rcases c3118 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u15 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
    have u19 : v15 := by
      rcases c3119 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd u14 a
    have u20 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v31 := by
      rcases c3122 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u21
      · exact a
      · exact absurd a u23
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u26 : ¬v22 := by
      rcases c3120 with a|a|a
      · exact absurd a u23
      · exact absurd u19 a
      · exact a
    have u27 : v23 := by
      rcases c3127 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a n0
    have u28 : ¬v27 := by
      rcases c3004 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u22
      · exact a
    have u29 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u25 a
    have u31 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
    have u32 : v32 := by
      rcases c3086 with a|a|a|a|a|a
      · exact absurd u27 a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u23
      · exact a
    have u33 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u32 a
      · exact a
    have u36 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u35
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u37 : v42 := by
      rcases c415 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u34
      · exact absurd a u36
      · exact absurd a u13
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u7
    have u38 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u32 a
      · exact a
    have u39 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u40 : v39 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd u32 a
      · exact absurd a u24
      · exact a
      · exact absurd a u39
    rcases c163 with a|a
    · exact absurd u37 a
    · exact absurd u40 a
  have c3129 : v18 ∨ v11 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := c3057
    have u8 : ¬v10 := c3084
    have u9 : v41 := by
      rcases c3128 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u10 : ¬v30 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v8 := by
      rcases c3115 with a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u14
      · exact a
    have u16 : v6 := by
      rcases c3126 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u17 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a u17
      · exact absurd a u15
      · exact a
    have u19 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u22 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u23 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u6
    have u24 : v15 := by
      rcases c3119 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd u13 a
    have u25 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a u26
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u30 : v23 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u25
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u31 : ¬v27 := by
      rcases c3004 with a|a|a|a|a|a
      · exact absurd u30 a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n0
      · exact absurd a u27
      · exact a
    have u32 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd u29 a
    have u33 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u30 a
    have u34 : v32 := by
      rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u32
      · exact absurd a u33
      · exact absurd a u31
      · exact a
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c909 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd u34 a
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u19
  have c3130 : ¬v23 ∨ v11 ∨ ¬v41 := by
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
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : v18 := by
      rcases c3129 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u15 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
    have u17 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u16
    have u18 : v4 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u18 a
    have u20 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u18 a
    rcases c3123 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u19
  have c3131 : ¬v2 ∨ v1 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v5 := c3057
    have u2 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    rcases c3085 with a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd n0 a
  have c3132 : v1 ∨ v15 ∨ v16 ∨ v23 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u9 : ¬v2 := by
      rcases c3131 with a|a
      · exact a
      · exact absurd a n0
    have u10 : v31 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a n2
    rcases c3061 with a|a|a|a|a
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd u10 a
  have c3133 : v23 ∨ v15 ∨ v16 ∨ v17 ∨ v30 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := c3057
    have u8 : ¬v10 := c3084
    have u9 : v1 := by
      rcases c3132 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
    have u10 : v12 := by
      rcases c3121 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v18 := by
      rcases c3129 with a|a
      · exact a
      · exact absurd a u12
    have u15 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u7 a
    have u18 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v31 := by
      rcases c3061 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n2
      · exact a
    have u20 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n3
      · exact a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v27 := by
      rcases c89 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u20 a
    have u25 : v13 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c1242 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a n3
    · exact absurd u14 a
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a u24
  have c3134 : ¬v41 ∨ v11 := by
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
    have u5 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v30 := by
      rcases c3006 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v23 := by
      rcases c3130 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    have u9 : v18 := by
      rcases c3129 with a|a
      · exact a
      · exact absurd a n1
    have u10 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u9 a
      · exact a
    rcases c3133 with a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u7
  have c3135 : v30 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u5 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3133 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u5
  have c3136 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ ¬v24 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    rcases c90 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n5 a
  have c3137 : ¬v1 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    rcases c252 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3138 : ¬v8 ∨ v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
  have c3139 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v21 ∨ v23 ∨ v27 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v5 := c3057
    have u8 : ¬v10 := c3084
    have u9 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v30 := by
      rcases c3135 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v22 := by
      rcases c3136 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u17
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v37 := by
      rcases c3125 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u12 a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n7
    have u20 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v1 := by
      rcases c3137 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u21
    have u23 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u14
      · exact a
      · exact absurd a n1
    have u24 : ¬v2 := by
      rcases c3131 with a|a
      · exact a
      · exact absurd a u22
    have u25 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n2
    rcases c3138 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
  have c3140 : ¬v31 ∨ v15 ∨ v16 ∨ v17 ∨ v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3133 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u7
  have c3141 : v23 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u7 : ¬v31 := by
      rcases c3140 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u8 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n3
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v27 := by
      rcases c3139 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n6
    have u10 : ¬v22 := by
      rcases c89 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    have u11 : v30 := by
      rcases c3135 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
    have u12 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c1981 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u13
    · exact absurd a n5
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u15
  have c3142 : v31 ∨ v11 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v41 := by
      rcases c3134 with a|a
      · exact a
      · exact absurd a n1
    have u11 : v18 := by
      rcases c3128 with a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
    have u12 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v23 := by
      rcases c3141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u10
    have u19 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u14
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u22 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    have u23 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v25 := by
      rcases c97 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u19 a
    have u25 : v12 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u17
    have u26 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u21
    have u27 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : v4 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u29 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact absurd u28 a
      · exact a
    have u30 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u26
      · exact absurd a u22
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u7
      · exact a
    have u31 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u34 : v1 := by
      rcases c3094 with a|a|a|a|a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u31
      · exact absurd a u33
    rcases c8 with a|a|a
    · exact absurd u34 a
    · exact absurd u8 a
    · exact absurd u28 a
  have c3143 : v11 := by
    by_contra hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : v31 := by
      rcases c3142 with a|a
      · exact a
      · exact absurd a hc
    have u9 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u16 : v18 := by
      rcases c3128 with a|a|a
      · exact absurd a u13
      · exact absurd a hc
      · exact a
    have u17 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : v23 := by
      rcases c3141 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u13
    have u24 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u22
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
    have u25 : ¬v27 := by
      rcases c2770 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u23 a
      · exact absurd a u24
      · exact a
    have u26 : ¬v25 := by
      rcases c3037 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
    have u27 : ¬v13 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u12
    have u29 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u28 a
    rcases c1152 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a hc
    · exact absurd a u29
    · exact absurd a u7
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3144 : ¬v23 ∨ v15 ∨ ¬v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : v11 := c3143
    have u10 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u12
      · exact a
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n2 a
    have u16 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n2 a
    have u17 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n2 a
    have u18 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n2 a
      · exact a
    have u19 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n2 a
    have u20 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd n2 a
      · exact a
    have u21 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n2 a
    have u22 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u23 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u18
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u22
    have u26 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u14
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n1
    have u27 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n0 a
    have u29 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n0 a
    have u30 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd n0 a
    have u31 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u29
      · exact absurd a u30
    have u32 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u29
      · exact absurd a u20
      · exact absurd a u31
      · exact absurd a u7
      · exact absurd a u19
    have u33 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v7 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u32 a
      · exact a
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u6
    have u35 : v42 := by
      rcases c347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u34
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u33
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u36 : v38 := by
      rcases c3103 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u26 a
      · exact absurd a u16
      · exact absurd n2 a
      · exact absurd a u22
      · exact a
      · exact absurd a u23
    rcases c160 with a|a
    · exact absurd u35 a
    · exact absurd u36 a
  have c3145 : v30 ∨ v15 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v11 := c3143
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
    have u18 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u15
      · exact a
    have u19 : v23 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v29 := by
      rcases c3094 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u21
    have u24 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v25 := by
      rcases c3079 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u24
    have u29 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u30 : ¬v19 := by
      rcases c574 with a|a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a n4
    have u31 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u23 a
      · exact a
    have u32 : ¬v41 := by
      rcases c2937 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a u27
      · exact absurd a u29
    have u33 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a u32
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u25
    have u34 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u33 a
    have u35 : v18 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u34
      · exact a
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u36 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u35 a
    have u37 : ¬v7 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd u33 a
      · exact a
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u29
      · exact absurd a u6
    have u38 : v36 := by
      rcases c515 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a n5
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u36
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u24
    have u39 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u38 a
    rcases c347 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u39
    · exact absurd a u16
    · exact absurd a u37
    · exact absurd a u27
    · exact absurd a u18
    · exact absurd a u32
    · exact absurd a u12
    · exact absurd a u34
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3146 : ¬v36 ∨ v29 ∨ v34 ∨ v35 ∨ v37 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v11 := c3143
    have u6 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u9
      · exact a
    have u11 : v42 := by
      rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u4
    rcases c151 with a|a
    · exact absurd u11 a
    · exact absurd n0 a
  have c3147 : ¬v36 ∨ v29 ∨ v34 ∨ v35 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    rcases c3146 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
  have c3148 : v31 ∨ v15 ∨ v22 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v11 := c3143
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u5
      · exact a
    have u7 : v30 := by
      rcases c3145 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n1
    have u12 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u11 a
    rcases c3147 with a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u12
  have c3149 : v17 ∨ v15 ∨ ¬v23 := by
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
    have u7 : ¬v31 := by
      rcases c3144 with a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
    have u8 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u11 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n2 a
    have u12 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
    rcases c3148 with a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
  have c3150 : v22 ∨ v15 ∨ ¬v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v11 := c3143
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u5
      · exact a
    have u7 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n1
    have u10 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n2 a
    rcases c3147 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c3151 : v29 ∨ v15 ∨ ¬v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v11 := c3143
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u13
      · exact a
    have u16 : v17 := by
      rcases c3149 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v22 := by
      rcases c3117 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a n3
    have u23 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n1
    have u24 : ¬v30 := by
      rcases c3150 with a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact a
    have u25 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : v35 := by
      rcases c2992 with a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u24
      · exact a
      · exact absurd a u25
    have u27 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v25 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u22
      · exact a
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u4
    have u29 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u23 a
    have u30 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u23 a
    have u31 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u23 a
    have u32 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u26 a
      · exact a
    have u33 : ¬v27 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u32
      · exact absurd a u27
    have u34 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u33
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u27
    have u35 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u34 a
    have u36 : v32 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u35
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a u33
      · exact a
      · exact absurd a u32
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    rcases c141 with a|a
    · exact absurd u26 a
    · exact absurd u36 a
  have c3152 : v31 ∨ v15 ∨ ¬v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : v11 := c3143
    have u9 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u9
      · exact a
    have u12 : v17 := by
      rcases c3149 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    have u13 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v29 := by
      rcases c3151 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u18
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u22 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u17 a
      · exact a
    have u23 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u24 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u20
    have u25 : ¬v27 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u20
    have u26 : ¬v25 := by
      rcases c3079 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u18
    have u27 : v4 := by
      rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u27 a
    have u29 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v41 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u29
      · exact absurd a u28
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u25
    · exact absurd a u30
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u20
  have c3153 : v15 ∨ ¬v23 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v10 := c3084
    have u10 : v11 := c3143
    have u11 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u12
      · exact a
    have u15 : v31 := by
      rcases c3152 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u16 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : v17 := by
      rcases c3149 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u22 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd u15 a
      · exact a
    have u24 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u15 a
    have u25 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
    have u27 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u21 a
    have u28 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u21 a
    have u29 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u21 a
    have u30 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u21 a
    have u31 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u22
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u32 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u14
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n0
    have u33 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u30
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u19
    have u34 : ¬v27 := by
      rcases c876 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u30
      · exact absurd a u28
      · exact absurd u32 a
      · exact absurd a u33
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u19
    have u35 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u34
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a u7
      · exact absurd a u19
    have u36 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u35 a
    have u37 : ¬v25 := by
      rcases c2312 with a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u32 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
    rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u36
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u28
    · exact absurd a u37
    · exact absurd a u34
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u7
  have c3154 : ¬v23 := by
    by_contra hc
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
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
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
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
    have u15 : ¬v1 := by
      rcases c3121 with a|a
      · exact absurd a u12
      · exact a
    have u16 : v15 := by
      rcases c3153 with a|a
      · exact a
      · exact absurd hc a
    have u17 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : v4 := by
      rcases c2539 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
    have u24 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u23 a
    have u25 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u6 a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v41 := by
      rcases c3123 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u24
    have u27 : ¬v27 := by
      rcases c3004 with a|a|a|a|a|a
      · exact absurd hc a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact a
    have u28 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u5
      · exact a
    have u29 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u28 a
    have u32 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u28 a
      · exact a
    have u33 : ¬v22 := by
      rcases c3120 with a|a|a
      · exact absurd a u32
      · exact absurd u16 a
      · exact a
    have u34 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u19
      · exact a
      · exact absurd a u32
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u35 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd hc a
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u31
    have u36 : v26 := by
      rcases c334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd u16 a
      · exact absurd a u35
      · exact a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u12
    rcases c2006 with a|a|a|a
    · exact absurd u28 a
    · exact absurd a u22
    · exact absurd u34 a
    · exact absurd u36 a
  have c3155 : ¬v15 := by
    by_contra hc
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
    have u11 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v2 := by
      rcases c3083 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v23 := c3154
    have u14 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd hc a
    have u15 : ¬v31 := by
      rcases c3061 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact a
    have u16 : ¬v22 := by
      rcases c3120 with a|a|a
      · exact absurd a u15
      · exact absurd hc a
      · exact a
    have u17 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd hc a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd hc a
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a u10
  exact ⟨c3121, c3123, c3143, c3150, c3154, c3155⟩
