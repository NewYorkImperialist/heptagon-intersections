import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1650-1699 of the 2915-step refutation of ccase001: 98 core clauses and 48 earlier-derived ones give 17 more. -/
theorem CCase001_block033
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c63 : ¬v9 ∨ ¬v13 ∨ ¬v14)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
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
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c94 : ¬v17 ∨ ¬v21)
    (c95 : ¬v18 ∨ ¬v19)
    (c98 : ¬v19 ∨ ¬v20)
    (c99 : ¬v21 ∨ ¬v19)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c112 : ¬v28 ∨ ¬v23)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c170 : ¬v46 ∨ ¬v43)
    (c175 : ¬v46 ∨ ¬v44)
    (c176 : ¬v47 ∨ ¬v44)
    (c177 : ¬v48 ∨ ¬v44)
    (c178 : ¬v49 ∨ ¬v44)
    (c179 : ¬v46 ∨ ¬v45)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c200 : v43 ∨ v12 ∨ v44 ∨ v5 ∨ v11 ∨ v19 ∨ v45 ∨ v2 ∨ v10 ∨ v1 ∨ v8 ∨ v16 ∨ v17 ∨ ¬v9)
    (c247 : v29 ∨ ¬v22 ∨ v30 ∨ v23 ∨ v35 ∨ v15 ∨ v21 ∨ v28)
    (c282 : v43 ∨ v29 ∨ v45 ∨ v30 ∨ ¬v23 ∨ v32 ∨ v37 ∨ v16 ∨ v24 ∨ v22 ∨ v18 ∨ v17 ∨ v44 ∨ v25)
    (c297 : v11 ∨ v4 ∨ v48 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v5 ∨ v47)
    (c307 : v29 ∨ ¬v23 ∨ v3 ∨ v17 ∨ v1 ∨ v9 ∨ v21 ∨ v28 ∨ v16 ∨ v24 ∨ v22 ∨ v2 ∨ v30 ∨ v35)
    (c323 : v43 ∨ v8 ∨ v45 ∨ v23 ∨ v44 ∨ v25 ∨ v2 ∨ v11 ∨ v24 ∨ v17 ∨ v15 ∨ v9 ∨ v18 ∨ ¬v16)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c449 : ¬v38 ∨ v31 ∨ v11 ∨ v44 ∨ v10 ∨ v45 ∨ v37 ∨ v39 ∨ v9 ∨ v40 ∨ v33 ∨ v32 ∨ v3 ∨ v47)
    (c478 : ¬v33 ∨ v40 ∨ v32 ∨ v41 ∨ v26 ∨ v25 ∨ v27 ∨ v34)
    (c486 : v48 ∨ v21 ∨ v12 ∨ v8 ∨ v13 ∨ v11 ∨ v1 ∨ v7 ∨ ¬v14 ∨ v4 ∨ v20 ∨ v43 ∨ v18 ∨ v49)
    (c517 : ¬v38 ∨ v2 ∨ v44 ∨ v31 ∨ v37 ∨ v45 ∨ v32 ∨ v41 ∨ v4 ∨ v34 ∨ v40 ∨ v39 ∨ v3 ∨ v48)
    (c530 : v20 ∨ v15 ∨ ¬v14 ∨ v8 ∨ v13 ∨ v21 ∨ v7 ∨ v1)
    (c565 : v43 ∨ v29 ∨ v21 ∨ v34 ∨ v49 ∨ v23 ∨ v30 ∨ ¬v22 ∨ v36 ∨ v20 ∨ v44 ∨ v15 ∨ v28 ∨ v27)
    (c568 : v4 ∨ v9 ∨ v2 ∨ ¬v3 ∨ v44 ∨ v11 ∨ v45 ∨ v10)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c861 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v17 ∨ v23 ∨ v24)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1058 : ¬v26 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v33 ∨ v34)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1167 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1422 : v35 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1432 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1433 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v35)
    (c1462 : ¬v35 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v21 ∨ v37 ∨ v43 ∨ v48 ∨ v49)
    (c1465 : ¬v27 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1483 : v34 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1523 : v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ ¬v14 ∨ v21)
    (c1547 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c1579 : ¬v20 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c1600 : ¬v22 ∨ v3 ∨ v9 ∨ v10 ∨ v38 ∨ v39 ∨ v45)
    (c1684 : ¬v24 ∨ v8 ∨ v9 ∨ ¬v15)
    (c1685 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v38 ∨ v45)
    (c1686 : v15 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v22 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v43 ∨ v45)
    (c1708 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1709 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v44 ∨ v49)
    (c1801 : v38 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31)
    (c1911 : v10 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v9 ∨ v16)
    (c1952 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v37 ∨ v38)
    (c2006 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2059 : ¬v33 ∨ v2 ∨ v9 ∨ v16 ∨ v43 ∨ v44 ∨ v49)
    (c2066 : v19 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2069 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2070 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2071 : v39 ∨ v3 ∨ v4 ∨ v5 ∨ v45 ∨ ¬v46 ∨ v47)
    (c2074 : ¬v26 ∨ v3 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ v45)
    (c2077 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v24)
    (c2091 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ ¬v22 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c2094 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2132 : v20 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v16 ∨ v19 ∨ ¬v34 ∨ v45 ∨ v47 ∨ v48)
    (c2142 : v13 ∨ v5 ∨ ¬v6 ∨ v7 ∨ ¬v9 ∨ v47 ∨ v48 ∨ v49)
    (c2150 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c2186 : ¬v2 ∨ v47 ∨ v48 ∨ v49)
    (c2194 : v30 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44)
    (c2212 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c2223 : v26 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19)
    (c2235 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2276 : ¬v1 ∨ v47 ∨ v48 ∨ v49)
    (c2277 : ¬v40 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v17 ∨ v33 ∨ v34 ∨ v44 ∨ v47 ∨ v48)
    : (v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v23 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v35) ∧ (¬v37 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v45) ∧ (v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16) ∧ (¬v23 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49) ∧ (v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45) ∧ (v17 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (v13 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45) ∧ (v47 ∨ v5 ∨ v12 ∨ v19 ∨ ¬v29 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48) ∧ (v12 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v17 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v44 ∨ v45) ∧ (¬v32 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v43 ∨ v44 ∨ v45) ∧ (v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v4 ∨ v8 ∨ ¬v14 ∨ v16 ∨ v47 ∨ v48 ∨ v49) := by
  have c2278 : v16 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v17 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v30 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd u5 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c2279 : v16 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v13 ∨ ¬v14 ∨ v15 ∨ v17 ∨ v37 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u2 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u3 : v36 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u4 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v29 := by
      rcases c1708 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u6 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n14
  have c2280 : v40 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ ¬v13 ∨ ¬v14 ∨ v15 ∨ v16 ∨ v17 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u2 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u4 : v37 := by
      rcases c2279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v22 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    rcases c1600 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n14
  have c2281 : v16 ∨ v3 ∨ v8 ∨ ¬v13 ∨ ¬v14 ∨ v15 ∨ v17 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u4 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
    have u10 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v40 := by
      rcases c2277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v42 := by
      rcases c2280 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    have u14 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v35 := by
      rcases c1422 with a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v32 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u16
      · exact a
      · exact absurd a u14
      · exact absurd a u7
    rcases c141 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2282 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    rcases c1168 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
  have c2283 : v16 ∨ v1 ∨ v2 ∨ v3 ∨ v7 ∨ v8 ∨ v9 ∨ v10 ∨ v12 ∨ ¬v15 ∨ v17 ∨ v18 ∨ v38 ∨ v42 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v22 := by
      rcases c1685 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n12
      · exact absurd a n14
    have u2 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n9 a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a u2
      · exact a
    rcases c1801 with a|a|a|a|a
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd u5 a
  have c2284 : ¬v23 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    rcases c307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n12
  have c2285 : ¬v23 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2284 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c2286 : v1 ∨ v2 ∨ v3 ∨ ¬v13 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ ¬v31 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u5 : ¬v23 := by
      rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n5
    · exact absurd a u5
  have c2287 : v3 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v13 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v18 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v15 := by
      rcases c2281 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n11
    have u14 : ¬v42 := by
      rcases c2282 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v38 := by
      rcases c2283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u14
      · exact absurd a u11
    have u16 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v31 := by
      rcases c2286 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a u12
    have u20 : v32 := by
      rcases c449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u21 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u19
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a u23
  have c2288 : v45 ∨ v1 ∨ v3 ∨ v8 ∨ ¬v13 ∨ ¬v14 ∨ v16 ∨ ¬v17 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v2 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n9
    have u6 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact a
    have u7 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u7
    rcases c2249 with a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
  have c2289 : ¬v13 ∨ v3 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v14 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v17 := by
      rcases c2288 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
    have u7 : v18 := by
      rcases c2287 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u7 a
    rcases c2281 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd n5 a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2290 : ¬v37 ∨ v1 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v11 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v22 := by
      rcases c1600 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
    have u7 : v15 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u7 a
    have u10 : v31 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u9
      · exact a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v44 := by
      rcases c2249 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n7
      · exact a
      · exact absurd a n8
    have u13 : ¬v49 := by
      rcases c178 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v48 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v47 := by
      rcases c176 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v46 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u12 a
    rcases c2069 with a|a|a|a
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
  have c2291 : v23 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v22 := by
      rcases c745 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
    have u2 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    rcases c861 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u3
  have c2292 : v8 ∨ v3 ∨ v7 ∨ v12 ∨ ¬v13 ∨ ¬v14 ∨ v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v37 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u7
    have u10 : v16 := by
      rcases c2289 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v23 := by
      rcases c2291 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd u10 a
    have u14 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n9
    have u17 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u20
    · exact absurd a u7
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u19
  have c2293 : v3 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v13 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u2 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v37 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
    have u11 : v19 := by
      rcases c2292 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
    have u19 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u9
    have u20 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v27 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
    have u22 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v42 := by
      rcases c1422 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v36 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
    have u25 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v29 := by
      rcases c1708 with a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
    have u27 : ¬v26 := by
      rcases c2074 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u25
      · exact absurd a u8
    have u28 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u18
    rcases c577 with a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd u11 a
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u21
    · exact absurd a u30
    · exact absurd a u16
    · exact absurd a n3
  have c2294 : v47 ∨ ¬v5 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v13 ∨ ¬v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n6 a
    have u2 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n6 a
      · exact absurd n5 a
      · exact a
    have u4 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v3 := by
      rcases c2293 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    rcases c568 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd u8 a
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u3
  have c2295 : v13 ∨ v1 ∨ v7 ∨ v8 ∨ ¬v14 ∨ ¬v16 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n5 a
      · exact a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n1
  have c2296 : ¬v23 ∨ v1 ∨ v8 ∨ v15 ∨ v16 ∨ v17 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u3 a
    rcases c397 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n5
  have c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v37 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
    rcases c2249 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c2298 : v17 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c2296 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u7 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    rcases c2091 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
  have c2299 : v13 ∨ v1 ∨ v2 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v15 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact a
    have u2 : v17 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u2 a
      · exact a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd n6 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n1
  have c2300 : v12 ∨ v3 ∨ ¬v5 ∨ v7 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c2294 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v15 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u9 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v6 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd n6 a
      · exact absurd a u11
    have u15 : ¬v4 := by
      rcases c32 with a|a|a
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
    have u16 : v11 := by
      rcases c486 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n9
    have u17 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u16 a
    rcases c354 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a u13
    · exact absurd u16 a
    · exact absurd a u15
    · exact absurd a u9
  have c2301 : v8 ∨ v3 ∨ ¬v5 ∨ v7 ∨ v12 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c2294 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v16 := by
      rcases c2295 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
      · exact a
    have u5 : v9 := by
      rcases c2300 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u5 a
      · exact absurd n5 a
      · exact a
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u5 a
    · exact absurd a u4
  have c2302 : v49 ∨ ¬v5 ∨ v7 ∨ v8 ∨ v12 ∨ ¬v14 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v3 := by
      rcases c2301 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v13 := by
      rcases c2294 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n0
    have u11 : v11 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a n6
    have u12 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd n5 a
      · exact a
    have u13 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u12 a
    rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u13
    · exact absurd n5 a
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n0
  have c2303 : v8 ∨ v7 ∨ v9 ∨ v12 ∨ ¬v14 ∨ v15 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c2302 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
    have u9 : v13 := by
      rcases c2299 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u10 : v17 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u11 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n9
    have u12 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n4 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n4 a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact a
    have u17 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u17 a
      · exact a
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
  have c2304 : v16 ∨ v7 ∨ v8 ∨ v9 ∨ v12 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v5 := by
      rcases c2302 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
    have u8 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n8
    have u9 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : v15 := by
      rcases c2303 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c2305 : v8 ∨ v7 ∨ v12 ∨ ¬v14 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c2302 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v9 := by
      rcases c2304 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u4 a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v6 := by
      rcases c2142 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v21 := by
      rcases c1523 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd n3 a
      · exact a
    have u9 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u4 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u2
  have c2306 : ¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ v11 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    rcases c323 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd n5 a
  have c2307 : v7 ∨ v8 ∨ v12 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v5 := by
      rcases c2302 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v16 := by
      rcases c2305 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v13 := by
      rcases c2295 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd u8 a
    have u12 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n3 a
    have u13 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n3 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v22 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u16 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c2235 with a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a n5
  have c2308 : v47 ∨ v5 ∨ v12 ∨ v19 ∨ ¬v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    rcases c2235 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n5
  have c2309 : ¬v22 ∨ v2 ∨ v8 ∨ v9 ∨ ¬v14 ∨ ¬v16 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v11 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u3 a
    rcases c861 with a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a u2
  have c2310 : v12 ∨ v8 ∨ v9 ∨ ¬v14 ∨ ¬v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v7 := by
      rcases c2307 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v22 := by
      rcases c2309 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u15 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n7
    have u16 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v5 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u15 a
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u22 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u12
    have u23 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : ¬v3 := by
      rcases c30 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
    have u25 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u1 a
    have u26 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u25
      · exact a
      · exact absurd a u7
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u24
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u12
    rcases c69 with a|a|a
    · exact absurd n3 a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2311 : ¬v5 ∨ ¬v7 ∨ v11 ∨ v12 ∨ v13 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
  have c2312 : v34 ∨ v5 ∨ ¬v7 ∨ v12 ∨ v13 ∨ v15 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n10 a
      · exact a
    have u7 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n10 a
      · exact a
    have u8 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n0
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u10 a
    have u15 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n2 a
    have u16 : ¬v36 := by
      rcases c1708 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n13
    have u17 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd u9 a
      · exact absurd a n11
    have u18 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u9 a
      · exact absurd a n11
    have u19 : v30 := by
      rcases c565 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u5
      · exact a
      · exact absurd n10 a
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u2
    have u20 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v31 := by
      rcases c1952 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u20
    have u23 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd u19 a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u18
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u22
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a u5
  have c2313 : ¬v16 ∨ v8 ∨ v12 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v7 := by
      rcases c2307 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v9 := by
      rcases c2310 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd n3 a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c63 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n3 a
    have u14 : ¬v5 := by
      rcases c2311 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v22 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n6
    have u17 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v34 := by
      rcases c2312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u16 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v35 := by
      rcases c144 with a|a
      · exact absurd u19 a
      · exact a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd u16 a
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u21
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u17
  have c2314 : v13 ∨ v5 ∨ v8 ∨ v11 ∨ v12 ∨ ¬v14 ∨ ¬v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v16 := by
      rcases c2313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v19 := by
      rcases c2223 with a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
    have u8 : ¬v20 := by
      rcases c1579 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v34 := by
      rcases c2132 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v6 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v7 := by
      rcases c2307 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u15 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u13 a
    have u16 : v39 := by
      rcases c2071 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n7
    have u17 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v33 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a u7
      · exact absurd a u17
    have u19 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u18 a
    rcases c478 with a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u10
  have c2315 : v15 ∨ v5 ∨ v8 ∨ v11 ∨ v12 ∨ ¬v14 ∨ ¬v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c2313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : v13 := by
      rcases c2314 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v9 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n5 a
    have u11 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u9 a
      · exact a
    have u12 : v17 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n9
    rcases c2077 with a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u2
  have c2316 : v15 ∨ v5 ∨ v8 ∨ v12 ∨ ¬v14 ∨ ¬v22 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v16 := by
      rcases c2313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v11 := by
      rcases c2315 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v10 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u11 a
    have u13 : ¬v9 := by
      rcases c60 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v17 := by
      rcases c1547 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n8
  have c2317 : v8 ∨ v5 ∨ v12 ∨ ¬v14 ∨ v15 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c2313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v22 := by
      rcases c2316 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n7
    have u10 : v19 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd u9 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v9 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u13 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u12 a
      · exact absurd n3 a
      · exact a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u12 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u4
  have c2318 : ¬v9 ∨ v1 ∨ v2 ∨ v5 ∨ v8 ∨ v12 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v19 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c60 with a|a|a
      · exact absurd n6 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd n0 a
      · exact absurd n6 a
      · exact a
    rcases c200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd n0 a
  have c2319 : v5 ∨ v8 ∨ v12 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c2313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v15 := by
      rcases c2317 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v29 := by
      rcases c2308 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v9 := by
      rcases c2318 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    have u13 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
    have u14 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n6
    have u15 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v32 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
    rcases c2028 with a|a|a|a|a
    · exact absurd u19 a
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u17
  have c2320 : v4 ∨ v3 ∨ v6 ∨ v8 ∨ v9 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n8
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
    have u9 : v15 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u10 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u9 a
    have u16 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v31 := by
      rcases c2286 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u15
      · exact a
      · exact absurd a u7
      · exact absurd a u6
    have u20 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u19
    have u21 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v32 := by
      rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n9
    have u24 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u25
  have c2321 : v9 ∨ v3 ∨ v4 ∨ v6 ∨ v8 ∨ ¬v14 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c2070 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n7
    have u8 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u6
    have u9 : v17 := by
      rcases c2320 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v27 := by
      rcases c1433 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u14
    have u16 : v13 := by
      rcases c1483 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v10 := by
      rcases c69 with a|a|a
      · exact absurd n5 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd n5 a
      · exact absurd u16 a
      · exact a
    have u19 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact a
    have u20 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
    have u23 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n9
    rcases c124 with a|a
    · exact absurd u23 a
    · exact absurd u22 a
  have c2322 : v12 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v5 := by
      rcases c2319 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v16 := by
      rcases c2313 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v7 := by
      rcases c2302 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v3 := by
      rcases c30 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v4 := by
      rcases c33 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u9 : v9 := by
      rcases c2321 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v10 := by
      rcases c57 with a|a|a
      · exact absurd u9 a
      · exact absurd n2 a
      · exact a
    rcases c1911 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd u9 a
    · exact absurd a u4
  have c2323 : ¬v17 ∨ v8 ∨ ¬v14 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v12 := by
      rcases c2322 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v46 := by
      rcases c2066 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u4 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u4 a
      · exact absurd n2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : v24 := by
      rcases c2077 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact a
    have u15 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v30 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
    have u18 : v29 := by
      rcases c1709 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n5
    rcases c124 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2324 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v37 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v38 := by
      rcases c2212 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1111 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n6
  have c2325 : ¬v32 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v16 ∨ v17 ∨ v21 ∨ v24 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
    rcases c2297 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2326 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v29 ∨ v32 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n3
      · exact a
    have u2 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u1 a
    rcases c282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n13
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n12
    · exact absurd a n7
  have c2327 : ¬v4 ∨ v8 ∨ ¬v14 ∨ v16 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v12 := by
      rcases c2322 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v17 := by
      rcases c2323 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2069 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c2186 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v1 := by
      rcases c2276 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v11 := by
      rcases c71 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v10 := by
      rcases c68 with a|a|a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : v15 := by
      rcases c2298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u7
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u14 : ¬v34 := by
      rcases c2006 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
    have u15 : ¬v33 := by
      rcases c2059 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
    have u16 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v24 := by
      rcases c1684 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u13 a
    have u21 : ¬v41 := by
      rcases c1432 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v27 := by
      rcases c2150 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u14
    have u24 : ¬v26 := by
      rcases c1058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u14
    have u25 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v37 := by
      rcases c2290 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
    have u27 : ¬v32 := by
      rcases c2325 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u28 : ¬v29 := by
      rcases c2324 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u26
      · exact absurd a u12
      · exact absurd a u11
    have u29 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u15
    have u30 : v30 := by
      rcases c2326 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u31 : ¬v40 := by
      rcases c2094 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n5
    have u32 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u30 a
    have u33 : v38 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u25
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u32
    have u34 : v39 := by
      rcases c449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u32
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u26
      · exact a
      · exact absurd a u7
      · exact absurd a u31
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a n4
    rcases c157 with a|a
    · exact absurd u33 a
    · exact absurd u34 a
  exact ⟨c2278, c2285, c2290, c2295, c2296, c2297, c2298, c2299, c2306, c2308, c2311, c2322, c2323, c2324, c2325, c2326, c2327⟩
