import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2450-2499 of the 2559-step refutation of ccase003: 112 core clauses and 65 earlier-derived ones give 13 more. -/
theorem CCase003_block049
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c31 : ¬v7 ∨ ¬v5 ∨ ¬v4)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c41 : ¬v8 ∨ ¬v12)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c57 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
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
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
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
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v43 ∨ ¬v49)
    (c177 : ¬v44 ∨ ¬v49)
    (c181 : ¬v45 ∨ ¬v49)
    (c184 : ¬v49 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c210 : ¬v49 ∨ v43 ∨ v42 ∨ v7 ∨ v1 ∨ v38 ∨ v34 ∨ v3 ∨ v29 ∨ v35 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c273 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v33 ∨ v46 ∨ v44 ∨ v37 ∨ v25 ∨ v32 ∨ v34 ∨ v41 ∨ v45 ∨ v27)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c357 : v3 ∨ ¬v2 ∨ v45 ∨ v47 ∨ v44 ∨ v12 ∨ v16 ∨ v8 ∨ v5 ∨ v9 ∨ v17 ∨ v4 ∨ v1 ∨ v15)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c392 : ¬v49 ∨ v42 ∨ v41 ∨ v6 ∨ v1 ∨ v7 ∨ v43 ∨ v48)
    (c395 : ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v36 ∨ v43 ∨ v48)
    (c404 : v36 ∨ v29 ∨ v37 ∨ v24 ∨ v31 ∨ ¬v30 ∨ v38 ∨ v23)
    (c412 : v12 ∨ v47 ∨ v5 ∨ v7 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v13)
    (c414 : ¬v16 ∨ v15 ∨ v24 ∨ v23 ∨ v10 ∨ v9 ∨ v17 ∨ v8)
    (c415 : ¬v49 ∨ v42 ∨ v27 ∨ v7 ∨ v22 ∨ v1 ∨ v41 ∨ v35 ∨ v37 ∨ v2 ∨ v28 ∨ v43 ∨ v44 ∨ v48)
    (c437 : v44 ∨ ¬v10 ∨ v2 ∨ v18 ∨ v9 ∨ v45 ∨ v46 ∨ v11 ∨ v13 ∨ v12 ∨ v3 ∨ v20 ∨ v6 ∨ v17)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c451 : v22 ∨ v27 ∨ v3 ∨ v21 ∨ v17 ∨ v1 ∨ v13 ∨ v10 ∨ v9 ∨ v7 ∨ v8 ∨ v20 ∨ ¬v14 ∨ v28)
    (c472 : v36 ∨ v37 ∨ v35 ∨ v34 ∨ v22 ∨ v41 ∨ v28 ∨ ¬v29 ∨ v7 ∨ v1 ∨ v27 ∨ v30 ∨ v2 ∨ v43)
    (c498 : v43 ∨ ¬v30 ∨ v35 ∨ v45 ∨ v34 ∨ v22 ∨ v29 ∨ v37 ∨ v44 ∨ v38 ∨ v41 ∨ v23 ∨ v27 ∨ v31)
    (c553 : v43 ∨ ¬v1 ∨ v44 ∨ v8 ∨ v7 ∨ v2 ∨ v9 ∨ v14)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c909 : v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40)
    (c945 : v29 ∨ v22 ∨ v27 ∨ v28 ∨ ¬v35 ∨ v41 ∨ v42)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1102 : ¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33)
    (c1127 : ¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1264 : ¬v34 ∨ v16 ∨ v22 ∨ ¬v23 ∨ ¬v26)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1560 : v16 ∨ v8 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2006 : ¬v34 ∨ v19 ∨ ¬v24 ∨ ¬v26)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18)
    (c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    (c2305 : ¬v28 ∨ v3 ∨ v10 ∨ ¬v25 ∨ v29 ∨ v31 ∨ v35 ∨ v38 ∨ v45)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2307 : ¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2312 : ¬v17 ∨ ¬v22 ∨ ¬v25 ∨ v30 ∨ v35)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2405 : v2 ∨ v1 ∨ v3 ∨ v10 ∨ v15 ∨ v16 ∨ v23 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2413 : v3 ∨ v10 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45)
    (c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2684 : ¬v5 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2688 : ¬v5 ∨ ¬v3 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2728 : v32 ∨ ¬v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v30 ∨ v31)
    (c2732 : v10 ∨ ¬v5 ∨ v17 ∨ v24 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2770 : ¬v31 ∨ ¬v23 ∨ v26 ∨ ¬v27)
    (c2778 : v18 ∨ v1 ∨ ¬v5 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c2810 : ¬v7 ∨ ¬v5 ∨ v11 ∨ v12 ∨ v13 ∨ v46 ∨ v47)
    (c2823 : ¬v15 ∨ ¬v22 ∨ ¬v24 ∨ v31)
    (c2826 : v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v44 ∨ v45 ∨ v46)
    (c2875 : v49)
    (c2943 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c2988 : v19 ∨ v5 ∨ v6)
    (c2992 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c3002 : ¬v31 ∨ ¬v41)
    (c3004 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ ¬v27)
    (c3006 : ¬v30 ∨ ¬v41)
    (c3021 : ¬v4 ∨ v5)
    (c3023 : ¬v3 ∨ v5)
    (c3025 : ¬v26 ∨ v1 ∨ v2 ∨ v4 ∨ v8 ∨ v9 ∨ v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v31)
    (c3028 : ¬v10 ∨ v5 ∨ v18)
    (c3029 : v2 ∨ v5 ∨ v9 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v31)
    (c3037 : ¬v23 ∨ v17 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v32 ∨ v33)
    (c3039 : v1 ∨ v2 ∨ v3 ∨ ¬v9 ∨ v10 ∨ v16)
    (c3040 : ¬v9 ∨ v2 ∨ v5 ∨ v16)
    (c3043 : v16 ∨ v2 ∨ v5 ∨ v18)
    (c3049 : ¬v16 ∨ v5)
    (c3050 : ¬v12 ∨ v5 ∨ v19)
    (c3053 : v10 ∨ v5 ∨ v19 ∨ v26)
    (c3054 : ¬v19 ∨ v5)
    : (v5) ∧ (v23 ∨ v2 ∨ v9 ∨ v16 ∨ ¬v31) ∧ (¬v25 ∨ ¬v23 ∨ v26 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v2 ∨ v3 ∨ v9) ∧ (¬v10) ∧ (v4 ∨ v1 ∨ ¬v2) ∧ (¬v23 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v32) ∧ (v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v37) ∧ (¬v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v15 ∨ ¬v24 ∨ v30 ∨ v37) ∧ (¬v30 ∨ v4 ∨ v8 ∨ v11 ∨ v18) ∧ (v4 ∨ v8 ∨ v11 ∨ v18) ∧ (v24 ∨ ¬v22 ∨ v30 ∨ ¬v31 ∨ v37 ∨ v38 ∨ v39) ∧ (v29 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v11 ∨ v18 ∨ ¬v22 ∨ v30) := by
  have c3055 : ¬v2 ∨ v5 ∨ v10 := by
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
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v19 := by
      rcases c3054 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v12 := by
      rcases c3050 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
    have u10 : v6 := by
      rcases c2988 with a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact a
    have u11 : ¬v1 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u12 : v9 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a u11
    have u13 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u12 a
      · exact a
    rcases c412 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd u10 a
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u13
  have c3056 : v10 ∨ v5 := by
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
    have u6 : ¬v19 := by
      rcases c3054 with a|a
      · exact a
      · exact absurd a n1
    have u7 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a n1
    have u8 : ¬v16 := by
      rcases c3049 with a|a
      · exact a
      · exact absurd a n1
    have u9 : ¬v2 := by
      rcases c3055 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u10 : v26 := by
      rcases c3053 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact a
    have u11 : ¬v12 := by
      rcases c3050 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
    have u12 : v18 := by
      rcases c3043 with a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n1
      · exact a
    have u13 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v9 := by
      rcases c3040 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u8
    have u15 : ¬v31 := by
      rcases c3029 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u6
      · exact a
    have u16 : v24 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u13
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v34 := by
      rcases c2006 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd u10 a
    have u18 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact a
    have u19 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd u16 a
      · exact absurd u10 a
      · exact a
    rcases c1127 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u6
    · exact absurd u16 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u17
  have c3057 : v5 := by
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
    have u4 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v10 := by
      rcases c3056 with a|a
      · exact a
      · exact absurd a hc
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v19 := by
      rcases c3054 with a|a
      · exact a
      · exact absurd a hc
    have u11 : ¬v4 := by
      rcases c3021 with a|a
      · exact a
      · exact absurd a hc
    have u12 : ¬v3 := by
      rcases c3023 with a|a
      · exact a
      · exact absurd a hc
    have u13 : ¬v16 := by
      rcases c3049 with a|a
      · exact a
      · exact absurd a hc
    have u14 : v18 := by
      rcases c3028 with a|a|a
      · exact absurd u5 a
      · exact absurd a hc
      · exact a
    have u15 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v2 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u9
    have u18 : v6 := by
      rcases c2988 with a|a|a
      · exact absurd a u10
      · exact absurd a hc
      · exact a
    have u19 : v1 := by
      rcases c357 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u17 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a hc
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u11
      · exact a
      · exact absurd a u15
    rcases c4 with a|a|a
    · exact absurd u17 a
    · exact absurd u19 a
    · exact absurd u18 a
  have c3058 : v23 ∨ v2 ∨ ¬v10 ∨ v16 ∨ ¬v26 ∨ v31 := by
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
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u11 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u13 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u14 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u15 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u16 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v1 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u15
    have u24 : v42 := by
      rcases c210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    have u25 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v24 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u26
      · exact a
      · exact absurd a n5
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a n0
    have u28 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd n4 a
    have u29 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u27 a
    rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u16 a
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u21
    · exact absurd a u29
    · exact absurd a u20
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a n5
  have c3059 : ¬v23 ∨ v6 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v26 := by
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
    have u9 : ¬v24 := by
      rcases c98 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v34 := by
      rcases c1264 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd n6 a
    have u12 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u13 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u11
    have u14 : ¬v31 := by
      rcases c3002 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v10 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u20 a
    rcases c395 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a u7
  have c3060 : ¬v26 ∨ v2 ∨ ¬v10 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v20 := by
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
    have u8 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u12 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
    have u13 : v4 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd n2 a
      · exact absurd a u10
    have u14 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v23 := by
      rcases c3059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n0 a
    have u16 : v31 := by
      rcases c3058 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u18
  have c3061 : v23 ∨ v2 ∨ v9 ∨ v16 ∨ ¬v31 := by
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
      · exact absurd n4 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u6
  have c3062 : v23 ∨ v1 ∨ v2 ∨ v6 ∨ v8 ∨ v9 ∨ v12 ∨ v15 ∨ v16 ∨ v21 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v31 := by
      rcases c3061 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact a
    have u10 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u13 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v7 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u11 a
    have u17 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u7
    have u18 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n7
    have u21 : v24 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u19
      · exact a
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a n0
    have u22 : v28 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd u20 a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    rcases c90 with a|a|a
    · exact absurd u20 a
    · exact absurd u22 a
    · exact absurd u21 a
  have c3064 : v41 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ v20 ∨ ¬v23 ∨ v26 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
    have u5 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
    have u6 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n8 a
    have u7 : ¬v31 := by
      rcases c2770 with a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd u4 a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n6
    have u10 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u9 a
      · exact a
    rcases c2414 with a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd n8 a
    · exact absurd u4 a
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n10
  have c3065 : ¬v41 ∨ v2 ∨ v6 ∨ v7 ∨ v14 := by
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
    have u8 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : v1 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u6
    have u11 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact a
    have u12 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u12 a
    rcases c553 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u10 a
    · exact absurd a u3
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a n4
  have c3066 : ¬v18 ∨ v2 ∨ ¬v10 := by
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
    have u8 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u15 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u16 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u17 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u18 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u19 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u20 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u5
    have u22 : v4 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u20
      · exact a
      · exact absurd a u16
      · exact absurd n2 a
      · exact absurd a u17
    have u23 : ¬v1 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u18
    have u24 : ¬v6 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v41 := by
      rcases c3065 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u18
    have u26 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u6
    have u27 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v26 := by
      rcases c3060 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
    have u31 : v23 := by
      rcases c3062 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u32 : v34 := by
      rcases c3064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd u31 a
      · exact absurd a u30
      · exact a
    have u33 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u32 a
    have u36 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u32 a
      · exact a
    have u37 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u36
      · exact absurd a u35
    have u38 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a u23
      · exact a
      · exact absurd a u34
      · exact absurd a u14
      · exact absurd a u9
    have u39 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u31 a
    have u40 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u39
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u25
    rcases c1156 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u37
    · exact absurd a u24
    · exact absurd a u19
    · exact absurd a u30
    · exact absurd a u39
    · exact absurd a u40
    · exact absurd a u35
    · exact absurd a u29
    · exact absurd a u25
    · exact absurd a u6
  have c3067 : v26 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ ¬v23 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
    have u6 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v34 := by
      rcases c3064 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n0
      · exact a
    have u9 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u14 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u4
    have u15 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n9 a
    have u16 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : v33 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u15
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a u3
    rcases c1155 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a n10
  have c3068 : v20 ∨ v2 ∨ v6 ∨ ¬v10 ∨ ¬v23 ∨ v41 := by
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
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : ¬v18 := by
      rcases c3066 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
    have u14 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u15 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v17 := by
      rcases c437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    have u18 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u16 a
    have u20 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u7
    have u23 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v26 := by
      rcases c3067 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
    have u25 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd n4 a
    have u26 : v29 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u20
    have u27 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u26 a
      · exact a
    rcases c2110 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u21
    · exact absurd u24 a
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u28
  have c3069 : ¬v20 ∨ v2 ∨ ¬v10 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v5 := c3057
    have u5 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
    have u11 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2218 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u6
  have c3070 : v6 ∨ v2 ∨ ¬v10 := by
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
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n2 a
      · exact a
    have u13 : ¬v18 := by
      rcases c3066 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    have u14 : ¬v20 := by
      rcases c3069 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    have u15 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n2 a
      · exact a
    have u16 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u16 a
    have u20 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n2 a
      · exact a
    have u21 : ¬v41 := by
      rcases c3065 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u20
    have u22 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u7
    have u23 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v17 := by
      rcases c437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n0
      · exact a
    have u27 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v23 := by
      rcases c3068 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a u21
    have u31 : ¬v31 := by
      rcases c3061 with a|a|a|a|a
      · exact absurd a u30
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u27
      · exact a
    have u32 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u30
      · exact absurd a u31
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u33 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u32 a
    have u35 : v24 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u34
      · exact absurd a u25
      · exact a
      · exact absurd a u31
      · exact absurd u32 a
      · exact absurd a u24
      · exact absurd a u30
    have u36 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u19
      · exact a
      · exact absurd a u34
      · exact absurd a u9
      · exact absurd a u28
    have u37 : v28 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u30
      · exact absurd a u33
      · exact absurd u36 a
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u27
      · exact a
    rcases c90 with a|a|a
    · exact absurd u36 a
    · exact absurd u37 a
    · exact absurd u35 a
  have c3071 : v23 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v16 ∨ v18 := by
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
    have u8 : ¬v31 := by
      rcases c3061 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact a
    have u9 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : v42 := by
      rcases c210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    have u17 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n9
    have u21 : v24 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u19
      · exact a
      · exact absurd a u8
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n0
    rcases c87 with a|a|a
    · exact absurd u20 a
    · exact absurd u17 a
    · exact absurd u21 a
  have c3072 : ¬v30 ∨ v4 ∨ v11 ∨ v18 ∨ ¬v23 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
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
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n4 a
      · exact absurd u8 a
      · exact a
    rcases c1102 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
  have c3073 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ ¬v23 ∨ v31 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact a
    rcases c1102 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c3074 : v33 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ ¬v23 ∨ v26 ∨ v31 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u8 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u9 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n9 a
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v32 := by
      rcases c3073 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n11
      · exact absurd a n0
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u11
    have u16 : v42 := by
      rcases c210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    have u17 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n7
    have u18 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd u17 a
    rcases c909 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u19
    · exact absurd a n10
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd a u8
  have c3075 : v34 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ ¬v23 ∨ v26 ∨ v31 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u7 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n9 a
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v33 := by
      rcases c3074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
    have u10 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
    have u14 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
    rcases c83 with a|a|a
    · exact absurd n9 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c3076 : v31 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v23 ∨ v26 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
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
    have u7 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd n11 a
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v34 := by
      rcases c3075 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u10 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
    have u13 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n7
    have u14 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd u13 a
    have u15 : v32 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c140 with a|a
    · exact absurd u9 a
    · exact absurd u15 a
  have c3077 : v31 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c3025 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v23 := by
      rcases c3071 with a|a|a|a|a|a|a|a|a|a|a|a
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
    rcases c3076 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n14
  have c3078 : ¬v31 ∨ v1 ∨ v4 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ ¬v23 := by
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
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u11
    have u13 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n5
    rcases c83 with a|a|a
    · exact absurd n7 a
    · exact absurd u13 a
    · exact absurd u14 a
  have c3079 : ¬v25 ∨ ¬v23 ∨ v26 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c2728 with a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c3080 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ ¬v23 ∨ v26 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
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
    have u5 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    rcases c3079 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n0
  have c3081 : v2 ∨ v1 ∨ v3 ∨ v4 ∨ v7 ∨ v8 ∨ v9 ∨ v11 ∨ v15 ∨ v16 ∨ v18 ∨ v19 ∨ v20 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
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
    have u6 : v23 := by
      rcases c3071 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
    have u7 : ¬v31 := by
      rcases c3078 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd u6 a
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v26 := by
      rcases c3025 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u7
    have u10 : v41 := by
      rcases c3077 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
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
      · exact a
    have u11 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v32 := by
      rcases c3080 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd a u7
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v25 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
    have u17 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n8
    rcases c83 with a|a|a
    · exact absurd u6 a
    · exact absurd u16 a
    · exact absurd u17 a
  have c3082 : v2 ∨ ¬v10 := by
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
    have u4 : v5 := c3057
    have u5 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u9 : ¬v18 := by
      rcases c3066 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u10 : ¬v20 := by
      rcases c3069 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u11 : v6 := by
      rcases c3070 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u12 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u11 a
    have u14 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u15 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
    have u16 : ¬v3 := by
      rcases c2684 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
    have u17 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u8
    have u18 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u17 a
    rcases c3081 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u10
  have c3083 : ¬v2 ∨ v3 ∨ v9 := by
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
    have u9 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v1 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n0 a
      · exact absurd u8 a
      · exact a
    have u12 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u11
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u12 a
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd a u10
  have c3084 : ¬v10 := by
    by_contra hc
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
    have u6 : v2 := by
      rcases c3082 with a|a
      · exact a
      · exact absurd hc a
    have u7 : ¬v4 := by
      rcases c18 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact a
    have u9 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c50 with a|a
    · exact absurd hc a
    · exact absurd u9 a
  have c3085 : v4 ∨ v1 ∨ ¬v2 := by
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
    have u10 : v9 := by
      rcases c3083 with a|a|a
      · exact absurd n2 a
      · exact absurd a u9
      · exact a
    have u11 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u7 a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c21 with a|a|a
    · exact absurd n2 a
    · exact absurd u7 a
    · exact absurd u12 a
  have c3086 : ¬v23 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u8 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
    have u12 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd n0 a
      · exact absurd u9 a
      · exact a
    have u14 : v26 := by
      rcases c3079 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v29 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u3
    have u16 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u16 a
    rcases c2110 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd u14 a
    · exact absurd a n5
    · exact absurd a u18
    · exact absurd a u17
  have c3087 : v1 ∨ v4 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ ¬v23 ∨ v31 := by
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
    have u9 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
    have u10 : v32 := by
      rcases c3086 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u11
    have u15 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n4
    have u16 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n6 a
    have u18 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u15 a
    have u19 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact a
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd u19 a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3088 : v1 ∨ v4 ∨ v8 ∨ v11 ∨ v18 ∨ ¬v23 ∨ v31 := by
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
    have u5 : ¬v47 := by
      rcases c186 with a|a
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
    have u9 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    have u10 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
    have u11 : v32 := by
      rcases c3086 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u13
    have u15 : v15 := by
      rcases c3087 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u16 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u16
    have u21 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u17
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v27 := by
      rcases c3004 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u19
      · exact a
    have u23 : ¬v22 := by
      rcases c2823 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u21 a
      · exact absurd a n6
    have u24 : v14 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a n2
      · exact a
    have u25 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u23
      · exact absurd a u14
    have u26 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a u5
    rcases c451 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u27
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd u24 a
    · exact absurd a u14
  have c3089 : v31 ∨ v4 ∨ v8 ∨ v11 ∨ v18 ∨ ¬v23 := by
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
    have u8 : v1 := by
      rcases c3088 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
    have u9 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u7 a
    have u10 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact a
    have u12 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u12 a
      · exact a
    rcases c553 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u8 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u14
  have c3090 : v4 ∨ v8 ∨ v11 ∨ v18 ∨ ¬v23 := by
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
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v5 := c3057
    have u9 : ¬v30 := by
      rcases c3072 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u10 : v31 := by
      rcases c3089 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
    have u11 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u15
    have u17 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v17 := by
      rcases c3037 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
    have u19 : ¬v22 := by
      rcases c83 with a|a|a
      · exact absurd n4 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u20
    have u22 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u8 a
    have u23 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd u8 a
    have u24 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u21 a
      · exact absurd u8 a
      · exact a
    have u25 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a u24
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u25 a
      · exact a
    rcases c553 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u21 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u27
  have c3091 : v8 ∨ ¬v1 ∨ v4 := by
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
    have u8 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u9 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u11 : v12 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v14 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact a
    rcases c57 with a|a
    · exact absurd u11 a
    · exact absurd u13 a
  have c3092 : v9 ∨ v2 ∨ v8 ∨ v23 ∨ ¬v25 ∨ ¬v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v10 := c3084
    have u2 : v16 := by
      rcases c3061 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v22 := by
      rcases c753 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n3
    have u6 : v24 := by
      rcases c414 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n2
    rcases c87 with a|a|a
    · exact absurd u5 a
    · exact absurd n4 a
    · exact absurd u6 a
  have c3093 : ¬v31 ∨ v4 ∨ v8 ∨ v11 ∨ v18 := by
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
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u14 : ¬v1 := by
      rcases c3091 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    have u15 : ¬v23 := by
      rcases c3090 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u16 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
    have u17 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u18
    have u20 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u3
    have u21 : v9 := by
      rcases c3092 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd u17 a
      · exact absurd n0 a
    have u22 : v16 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd u21 a
      · exact absurd a u8
      · exact a
    have u23 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u14
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u23
    have u25 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u17 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd u24 a
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u11
  have c3094 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v36 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v35 := by
      rcases c2992 with a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u6 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    rcases c945 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd u5 a
    · exact absurd a u4
    · exact absurd a u6
  have c3095 : ¬v25 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v15 ∨ ¬v24 ∨ v30 ∨ v37 := by
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
    have u7 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
    have u8 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u10 : v29 := by
      rcases c3094 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v41 := by
      rcases c2943 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
    have u16 : v42 := by
      rcases c415 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u6
    have u17 : v36 := by
      rcases c472 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u2
    rcases c151 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c3096 : v30 ∨ v4 ∨ v7 ∨ v8 ∨ v11 ∨ v15 ∨ v18 ∨ ¬v24 := by
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
    have u9 : ¬v1 := by
      rcases c3091 with a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
    have u10 : ¬v23 := by
      rcases c3090 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u11 : ¬v31 := by
      rcases c3093 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a n1
      · exact absurd a u9
      · exact a
    have u13 : v16 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v25 := by
      rcases c3095 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n0
      · exact absurd a u14
    have u17 : v32 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n7 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a u15
    have u18 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u14
    have u22 : v26 := by
      rcases c2826 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd n7 a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u23 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u9
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n5
    rcases c88 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd n7 a
  have c3097 : ¬v9 ∨ v4 ∨ v18 := by
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
    have u11 : ¬v11 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd n0 a
    have u14 : ¬v1 := by
      rcases c3091 with a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
    have u15 : ¬v31 := by
      rcases c3093 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n2
    have u16 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u18 : v16 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u9
      · exact a
    have u19 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd n0 a
      · exact a
    have u23 : ¬v7 := by
      rcases c2810 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u6
    have u24 : v30 := by
      rcases c3096 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd u21 a
    have u25 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd u24 a
      · exact a
    have u30 : v42 := by
      rcases c210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u29
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
    have u31 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u32 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u21 a
    rcases c189 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u32
    · exact absurd a u14
    · exact absurd a u33
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a u20
  have c3098 : v22 ∨ v1 ∨ v8 ∨ v23 ∨ v28 ∨ ¬v30 ∨ v31 := by
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
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u11 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n5 a
    have u12 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n5 a
    have u13 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n5 a
    have u14 : ¬v41 := by
      rcases c3006 with a|a
      · exact absurd n5 a
      · exact a
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : ¬v27 := by
      rcases c2413 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u4
    have u17 : v37 := by
      rcases c498 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n6
    have u18 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact a
    have u20 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1560 with a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n2
    · exact absurd u19 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c3099 : ¬v30 ∨ v4 ∨ v8 ∨ v11 ∨ v18 := by
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
    have u8 : ¬v3 := by
      rcases c2688 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v1 := by
      rcases c3091 with a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
    have u14 : ¬v23 := by
      rcases c3090 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v25 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v28 := by
      rcases c2305 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u16 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u3
    have u18 : v22 := by
      rcases c3098 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd n0 a
      · exact absurd a u9
    have u19 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd u18 a
      · exact absurd u16 a
      · exact a
    have u20 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact a
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u20 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd u18 a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u17
  have c3100 : v4 ∨ v8 ∨ v11 ∨ v18 := by
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
    have u6 : v5 := c3057
    have u7 : ¬v10 := c3084
    have u8 : ¬v30 := by
      rcases c3099 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v1 := by
      rcases c3091 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    have u10 : ¬v2 := by
      rcases c3085 with a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact a
    have u11 : ¬v23 := by
      rcases c3090 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u12 : ¬v31 := by
      rcases c3093 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v9 := by
      rcases c3097 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
    have u14 : v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v24 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v26 := by
      rcases c88 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u18 a
    have u22 : v33 := by
      rcases c2826 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd u18 a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c1465 with a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u17
    · exact absurd u14 a
    · exact absurd a u11
    · exact absurd a u21
  have c3101 : v29 ∨ ¬v22 ∨ ¬v24 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v15 := by
      rcases c2823 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n4
    have u2 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u5 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u6 : v35 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v16 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u8 a
      · exact a
    rcases c448 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u9
  have c3102 : v31 ∨ v1 ∨ v2 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v35 ∨ v39 := by
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
    have u10 : ¬v24 := by
      rcases c3101 with a|a|a|a|a
      · exact absurd a n4
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u11 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u7 a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v25 := by
      rcases c2312 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v23 := by
      rcases c2405 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : v26 := by
      rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c84 with a|a|a
    · exact absurd u17 a
    · exact absurd n3 a
    · exact absurd u16 a
  have c3103 : v24 ∨ ¬v22 ∨ v30 ∨ ¬v31 ∨ v37 ∨ v38 ∨ v39 := by
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
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v41 := by
      rcases c3002 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : v23 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
    have u10 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u11
  have c3104 : v35 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v11 ∨ ¬v22 ∨ v29 ∨ v30 := by
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
    have u10 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u10
    have u12 : v42 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
    have u13 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v31 := by
      rcases c3102 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u14
    have u16 : v24 := by
      rcases c3103 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u16 a
    have u18 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n6 a
    have u19 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u16 a
    have u20 : v15 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a n8
    have u21 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v9 := by
      rcases c3039 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u21
    rcases c3061 with a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd u15 a
  have c3105 : v29 ∨ v1 ∨ v2 ∨ v6 ∨ v7 ∨ v11 ∨ v18 ∨ ¬v22 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u8 : v35 := by
      rcases c3104 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n0
      · exact absurd a n8
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v25 := by
      rcases c2314 with a|a|a
      · exact absurd u8 a
      · exact absurd n7 a
      · exact a
    have u14 : ¬v24 := by
      rcases c3101 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd n7 a
      · exact a
      · exact absurd a n8
      · exact absurd a u9
    have u15 : v17 := by
      rcases c2732 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : v26 := by
      rcases c2778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a u7
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : v23 := by
      rcases c1624 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u15 a
    rcases c2110 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u18
    · exact absurd u16 a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  exact ⟨c3057, c3061, c3079, c3083, c3084, c3085, c3086, c3094, c3095, c3099, c3100, c3103, c3105⟩
