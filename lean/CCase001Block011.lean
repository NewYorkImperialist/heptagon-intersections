import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 550-599 of the 2915-step refutation of ccase001: 142 core clauses and 60 earlier-derived ones give 14 more. -/
theorem CCase001_block011
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
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
    (c101 : v15 ∨ v20 ∨ v16 ∨ v17 ∨ v19 ∨ v18 ∨ v21)
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c168 : ¬v44 ∨ ¬v43)
    (c169 : ¬v45 ∨ ¬v43)
    (c170 : ¬v46 ∨ ¬v43)
    (c171 : ¬v47 ∨ ¬v43)
    (c172 : ¬v48 ∨ ¬v43)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c206 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v30 ∨ v29 ∨ v42 ∨ v37)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c280 : v36 ∨ ¬v43 ∨ v37 ∨ v2 ∨ v1 ∨ v7 ∨ v44 ∨ v49)
    (c289 : v29 ∨ v22 ∨ v30 ∨ v24 ∨ v31 ∨ v17 ∨ ¬v23 ∨ v16)
    (c294 : v36 ∨ ¬v43 ∨ v37 ∨ v8 ∨ v7 ∨ v4 ∨ v9 ∨ v14 ∨ v1 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c295 : v36 ∨ ¬v21 ∨ v28 ∨ v23 ∨ v8 ∨ v27 ∨ v41 ∨ v20 ∨ v15 ∨ v14 ∨ v16 ∨ v35 ∨ v9 ∨ v42)
    (c300 : v24 ∨ ¬v17 ∨ v23 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c334 : ¬v24 ∨ v31 ∨ v30 ∨ v9 ∨ v11 ∨ v17 ∨ v22 ∨ v23 ∨ v21 ∨ v18 ∨ v28 ∨ v25 ∨ v10 ∨ v35)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c365 : v36 ∨ ¬v43 ∨ v37 ∨ v8 ∨ v16 ∨ v7 ∨ v1 ∨ v21 ∨ v15 ∨ v3 ∨ v38 ∨ v44 ∨ v45 ∨ v49)
    (c382 : v22 ∨ ¬v15 ∨ v21 ∨ v9 ∨ v23 ∨ v14 ∨ v16 ∨ v8)
    (c387 : v6 ∨ v20 ∨ v13 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12 ∨ v5)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c397 : v22 ∨ v15 ∨ v31 ∨ v30 ∨ v16 ∨ ¬v23 ∨ v24 ∨ v17)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c431 : v15 ∨ v12 ∨ v17 ∨ v1 ∨ v46 ∨ v4 ∨ v8 ∨ ¬v11 ∨ v9 ∨ v10 ∨ v18 ∨ v45 ∨ v5 ∨ v47)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c435 : ¬v19 ∨ v13 ∨ v18 ∨ v20 ∨ v26 ∨ v25 ∨ v12 ∨ v27)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c457 : ¬v42 ∨ v29 ∨ v34 ∨ v35 ∨ v48 ∨ v49 ∨ v41 ∨ v36)
    (c467 : v29 ∨ ¬v27 ∨ v41 ∨ v28 ∨ v26 ∨ v20 ∨ v34 ∨ v33 ∨ v21 ∨ v22 ∨ v15 ∨ v47 ∨ v48 ∨ v49)
    (c474 : v11 ∨ v4 ∨ v18 ∨ v13 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v6)
    (c495 : v29 ∨ ¬v22 ∨ v30 ∨ v35 ∨ v28 ∨ v23 ∨ v15 ∨ v16)
    (c496 : v43 ∨ ¬v36 ∨ v22 ∨ v42 ∨ v37 ∨ v49 ∨ v30 ∨ v28 ∨ v23 ∨ v40 ∨ v33 ∨ v29 ∨ v47 ∨ v41)
    (c508 : ¬v39 ∨ v46 ∨ v32 ∨ v47 ∨ v40 ∨ v45 ∨ v38 ∨ v31)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c566 : v36 ∨ v22 ∨ v32 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v31 ∨ v28 ∨ v25 ∨ v39 ∨ v16 ∨ v30 ∨ v15 ∨ v21)
    (c609 : v49 ∨ v12 ∨ ¬v6 ∨ v48 ∨ v5 ∨ v13 ∨ v47 ∨ v7)
    (c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c626 : v20 ∨ ¬v3 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v46 ∨ v48)
    (c634 : v20 ∨ ¬v4 ∨ ¬v5 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v27 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v48)
    (c637 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c651 : v10 ∨ v11 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c652 : ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c680 : ¬v19 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c683 : ¬v19 ∨ v12 ∨ v13 ∨ v25 ∨ v26 ∨ v27)
    (c684 : v46 ∨ v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v17 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v33 ∨ v34 ∨ v37 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v15 ∨ v9 ∨ v13 ∨ v14 ∨ v16 ∨ v19 ∨ ¬v20 ∨ v23 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c693 : ¬v2 ∨ ¬v5 ∨ ¬v10 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c723 : ¬v21 ∨ v8 ∨ v14 ∨ v20 ∨ v22 ∨ v27 ∨ v28)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c820 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c825 : v26 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c838 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c839 : v13 ∨ ¬v2 ∨ v4 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c892 : v10 ∨ ¬v11 ∨ ¬v12 ∨ v16 ∨ v18 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c934 : ¬v10 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c969 : v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1046 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31)
    (c1053 : ¬v10 ∨ ¬v2 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1059 : v13 ∨ ¬v2 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1078 : ¬v24 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v32)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1088 : v24 ∨ v3 ∨ v10 ∨ v11 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1109 : ¬v16 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1119 : ¬v10 ∨ v2 ∨ ¬v11 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1132 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1139 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1143 : ¬v34 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v42 ∨ v47 ∨ v48 ∨ v49)
    (c1145 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v34 ∨ v35)
    (c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1149 : ¬v5 ∨ v2 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49)
    (c1155 : ¬v3 ∨ ¬v4 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49)
    (c1161 : v19 ∨ v20 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1162 : v37 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v19 ∨ ¬v20 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1163 : v35 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1164 : v30 ∨ ¬v11 ∨ v19 ∨ v31 ∨ v32 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v30 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v31 ∨ ¬v42 ∨ v48 ∨ v49) ∧ (¬v10 ∨ ¬v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27) ∧ (v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ ¬v3 ∨ v12 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46) ∧ (¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v43 ∨ v47 ∨ v49) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v49) ∧ (v41 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v34 ∨ v48) ∧ (v14 ∨ v8 ∨ v9 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v35 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1165 : v2 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v17 ∨ v18 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n12
    have u3 : ¬v46 := by
      rcases c170 with a|a
      · exact a
      · exact absurd n9 a
    have u4 : ¬v45 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n9 a
    have u5 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd n1 a
    have u6 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd n2 a
    rcases c55 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd n2 a
  have c1166 : v44 ∨ v19 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v26 := by
      rcases c1163 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v11 := by
      rcases c1164 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v20 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
    have u19 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n7
    have u20 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n10
    have u21 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
    have u22 : v2 := by
      rcases c1165 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u23 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u22 a
    have u24 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u19 a
      · exact absurd u22 a
      · exact a
    have u25 : v12 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v8 := by
      rcases c365 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a u6
      · exact a
      · exact absurd a u15
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n10
    rcases c45 with a|a|a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd u21 a
  have c1167 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n1 a
    rcases c457 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
  have c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n1 a
    rcases c457 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
  have c1169 : v49 ∨ ¬v34 ∨ v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : v19 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1143 with a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n0
  have c1170 : v27 ∨ v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v12 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u2 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n9
    have u17 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n12
    have u18 : v10 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n8
    have u19 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u18 a
    have u20 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u18 a
    have u21 : v2 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd u18 a
    rcases c1053 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1171 : ¬v10 ∨ ¬v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c683 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1172 : v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c1169 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v29 := by
      rcases c457 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u8
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v19 := by
      rcases c1166 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
    have u24 : ¬v24 := by
      rcases c652 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
    have u25 : v22 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u20
    have u26 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n0
    have u27 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v11 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : ¬v10 := by
      rcases c1171 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u26
    have u31 : ¬v12 := by
      rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd u29 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u32 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u10
    have u33 : v13 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u31
      · exact absurd a u26
    have u34 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n6
    have u35 : v2 := by
      rcases c684 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u32 a
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u28
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u36 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u33 a
    have u37 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u33 a
    have u38 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u32 a
    have u39 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u35 a
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u31
    · exact absurd a u22
    · exact absurd a u39
    · exact absurd a n3
    · exact absurd a u34
    · exact absurd a u36
    · exact absurd u29 a
    · exact absurd a u37
    · exact absurd a u30
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u38
    · exact absurd a n4
  have c1173 : ¬v27 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v29 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1174 : ¬v19 ∨ v26 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v34 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u9 a
      · exact a
    have u20 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u18
    have u22 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u23 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
    have u24 : ¬v23 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u6
      · exact a
      · exact absurd a u1
    have u25 : ¬v27 := by
      rcases c1173 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : v11 := by
      rcases c1170 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd n0 a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v10 := by
      rcases c1171 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n0 a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u25
    have u28 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u16
    have u29 : ¬v12 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u28 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
    have u30 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n7
    have u31 : v13 := by
      rcases c435 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a u29
      · exact absurd a u25
    have u32 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u31 a
    have u33 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u31 a
    have u34 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u33
      · exact a
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u24
    have u35 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u28 a
    have u36 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u34 a
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u29
    · exact absurd a u6
    · exact absurd a u36
    · exact absurd a n4
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd u26 a
    · exact absurd a u33
    · exact absurd a u27
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u35
    · exact absurd a n5
  have c1175 : v13 ∨ ¬v3 ∨ v12 ∨ v20 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
    have u2 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v5 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c609 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u2
  have c1176 : v18 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v23 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n9
    have u16 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n13
    have u18 : ¬v12 := by
      rcases c626 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u15 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u19 : v11 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n10
    have u20 : v13 := by
      rcases c1175 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u22 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u20 a
    have u23 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n6
    have u24 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u15 a
    have u25 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u23 a
    rcases c431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u25
    · exact absurd a n10
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd u19 a
    · exact absurd a u22
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u24
    · exact absurd a n11
  have c1177 : ¬v10 ∨ ¬v11 ∨ v20 ∨ v23 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : v2 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1053 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u12 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1178 : ¬v19 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v34 := by
      rcases c1143 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u9 a
      · exact a
    have u21 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u9 a
      · exact a
    have u22 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
    have u23 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u21
      · exact absurd a u18
    have u24 : ¬v23 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u6
      · exact a
      · exact absurd a u1
    have u25 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u24
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : v26 := by
      rcases c1174 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u27 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v10 := by
      rcases c1176 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v11 := by
      rcases c1177 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a n3
    have u31 : ¬v5 := by
      rcases c634 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u30 a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
    have u32 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n6
    have u33 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u32
      · exact absurd a n3
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a n2
      · exact absurd u30 a
    have u34 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u28 a
    have u35 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd u28 a
    have u36 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u34
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u24
    rcases c1053 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd u36 a
    · exact absurd a u35
    · exact absurd a u5
    · exact absurd a u27
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1179 : v36 ∨ ¬v10 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v37 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n8
    have u2 : ¬v2 := by
      rcases c693 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v4 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n14
    have u4 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n3
    have u5 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u6 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n9 a
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n14
  have c1180 : ¬v5 ∨ v2 ∨ ¬v6 ∨ v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c35 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
  have c1181 : v46 ∨ ¬v10 ∨ v11 ∨ v20 ∨ v27 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n0
    have u4 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
    have u13 : v12 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u16 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u17 : ¬v2 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u10
    have u19 : ¬v5 := by
      rcases c1180 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u18 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
    have u20 : v7 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a n7
      · exact a
      · exact absurd a u16
    have u21 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    have u22 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u20 a
    have u23 : v18 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u19
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd u13 a
    have u24 : v15 := by
      rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n8
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u1
      · exact a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a u14
    rcases c82 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c1182 : v49 ∨ ¬v10 ∨ v20 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v11 := by
      rcases c1181 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u5 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n0
    have u13 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u13
    have u16 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u17 : ¬v2 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u18 : ¬v5 := by
      rcases c1180 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n0
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u9
  have c1183 : v37 ∨ v2 ∨ ¬v5 ∨ v10 ∨ ¬v11 ∨ v20 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v36 ∨ v38 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v47 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n15 a
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u1
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v6 := by
      rcases c1180 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n20
    have u5 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n19
      · exact a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n11
    have u6 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u5 a
    have u7 : ¬v4 := by
      rcases c1149 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n20
    have u8 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n18
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n17
    have u11 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a u9
      · exact a
    rcases c1062 with a|a|a|a|a
    · exact absurd u10 a
    · exact absurd u11 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1184 : ¬v11 ∨ ¬v5 ∨ v10 ∨ v20 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v2 := by
      rcases c1183 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u3 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n17
    have u8 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n19
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n10
    have u9 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u8 a
    rcases c365 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd n15 a
    · exact absurd a n12
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n20
  have c1185 : ¬v24 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n0 a
      · exact a
    rcases c651 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
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
  have c1186 : v44 ∨ ¬v5 ∨ v20 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
    have u18 : ¬v10 := by
      rcases c1182 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v11 := by
      rcases c1184 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v24 := by
      rcases c1185 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v3 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n8
    have u23 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u21 a
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u23
  have c1187 : v44 ∨ v11 ∨ v20 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v5 := by
      rcases c1186 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u5 a
      · exact a
    have u17 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u5 a
      · exact a
    have u18 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
    have u19 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u7
    have u20 : ¬v10 := by
      rcases c1181 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v24 := by
      rcases c1185 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v3 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v4 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n8
    have u24 : v2 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u25 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    have u26 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u24 a
    have u27 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u24 a
      · exact absurd u22 a
      · exact a
    have u28 : v13 := by
      rcases c387 with a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd u19 a
      · exact absurd a u1
    have u29 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u19 a
    have u30 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u19 a
    have u31 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u28 a
    rcases c294 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u4 a
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u27
    · exact absurd a u23
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n8
  have c1188 : v44 ∨ v20 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
    have u15 : v11 := by
      rcases c1187 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v5 := by
      rcases c1186 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u5
    have u18 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u17 a
    have u19 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u22 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u11
    have u23 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u15 a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u24 : v7 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u22 a
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n5
      · exact a
      · exact absurd a u19
    have u25 : ¬v3 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
    have u26 : ¬v16 := by
      rcases c1109 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u27 : v17 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n3
    have u28 : v23 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u26
      · exact a
    rcases c1062 with a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u8
  have c1189 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v12 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
    have u2 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n13 a
    have u3 : ¬v47 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n13 a
    have u4 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n17
    have u5 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n17
    have u6 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u7 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
      · exact absurd a n17
    have u11 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u11
    have u13 : ¬v20 := by
      rcases c1162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u9
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a n17
    have u14 : v27 := by
      rcases c1188 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a u13
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n17
    have u15 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v21 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u13
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u11
    rcases c1095 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u15
  have c1190 : ¬v11 ∨ v18 ∨ v19 ∨ ¬v21 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v13 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n22
    have u5 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n22
    have u6 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a u2
      · exact absurd a n5
    have u7 : v10 := by
      rcases c1189 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd n18 a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
    have u8 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    rcases c1095 with a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n8
  have c1191 : v20 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u17 : v27 := by
      rcases c1188 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : v21 := by
      rcases c272 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u13
    have u24 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v11 := by
      rcases c1190 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u1
      · exact absurd u23 a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u28 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u1
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u29 : ¬v3 := by
      rcases c1155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n6
    have u30 : v10 := by
      rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u29
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u31 : ¬v2 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u30 a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u32 : v12 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u30 a
      · exact absurd a u27
      · exact a
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u33 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a u26
      · exact absurd u30 a
    rcases c55 with a|a|a
    · exact absurd u33 a
    · exact absurd u32 a
    · exact absurd u30 a
  have c1192 : ¬v10 ∨ v11 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v20 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u17 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u3 a
    have u18 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u3 a
    have u19 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u5 a
    have u20 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u5 a
      · exact a
    have u21 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u5 a
      · exact a
    have u22 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u20
    have u23 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u19
    have u24 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u21
      · exact absurd a u12
    have u25 : ¬v23 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact a
      · exact absurd a u22
      · exact absurd a u18
    have u26 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u27 : v12 := by
      rcases c1179 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd n0 a
    have u29 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd n0 a
    have u30 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u25
    have u31 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd u26 a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v1 := by
      rcases c2 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u30 a
    rcases c365 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u4 a
    · exact absurd a u8
    · exact absurd a u29
    · exact absurd a u16
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u31
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
  have c1193 : ¬v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v20 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v31 := by
      rcases c1168 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v30 := by
      rcases c1167 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c1141 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u4 a
      · exact a
    have u17 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u15
    have u18 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u14
    have u19 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u16
      · exact absurd a u9
    have u20 : ¬v23 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a u17
      · exact absurd a u13
    have u21 : v11 := by
      rcases c1192 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u21 a
    have u24 : v2 := by
      rcases c1119 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u25 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u18
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u5
    have u26 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd u24 a
    rcases c839 with a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd u24 a
    · exact absurd a u26
    · exact absurd u25 a
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v35 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v19 := by
      rcases c1178 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : v42 := by
      rcases c1139 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v20 := by
      rcases c1191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u6
      · exact absurd a u2
    have u22 : ¬v23 := by
      rcases c864 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u7
    have u23 : ¬v24 := by
      rcases c1046 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u7
    have u24 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
    have u25 : ¬v10 := by
      rcases c1193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u23
      · exact absurd a u7
    have u27 : ¬v11 := by
      rcases c1162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u25
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd u24 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u28 : v4 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n2
    have u29 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u28 a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u28 a
    have u31 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u28 a
    have u32 : v9 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u22
    have u33 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u30
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
    have u34 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u33 a
    rcases c389 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u32 a
    · exact absurd a u18
    · exact absurd a u34
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u29
    · exact absurd a u31
  have c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n6
    have u2 : ¬v4 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n2
  have c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n7
  have c1197 : v41 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ ¬v36 ∨ v37 ∨ v40 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n7 a
      · exact a
    rcases c496 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n7 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a n0
  have c1198 : ¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1197 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1199 : v28 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v43 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
  have c1200 : v49 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v39 := by
      rcases c508 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n11
      · exact absurd a n19
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n10
    have u2 : v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n18
    have u3 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n17
    have u8 : ¬v24 := by
      rcases c1078 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u11 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u7 a
    have u12 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n1 a
    have u13 : v25 := by
      rcases c883 with a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a n8
    have u14 : v13 := by
      rcases c387 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a u11
    have u15 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n5 a
    have u18 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u14 a
    have u19 : v29 := by
      rcases c1199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n0
    have u20 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : v36 := by
      rcases c1146 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd u19 a
      · exact absurd a u20
      · exact a
      · exact absurd a n13
    have u22 : v42 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u16
      · exact a
    rcases c151 with a|a
    · exact absurd u21 a
    · exact absurd u22 a
  have c1201 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n4
  have c1202 : v27 ∨ v4 ∨ v5 ∨ ¬v8 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v23 ∨ v26 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v13 := by
      rcases c51 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n5 a
    have u4 : v20 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd n5 a
    have u5 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u4 a
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd u4 a
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1203 : ¬v2 ∨ v8 ∨ v10 ∨ ¬v20 ∨ v22 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
    rcases c1 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n0 a
  have c1204 : v18 ∨ ¬v2 ∨ v4 ∨ v5 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v8 := by
      rcases c1202 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v20 := by
      rcases c1203 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : v13 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd n6 a
    have u4 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v21 := by
      rcases c723 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v15 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a u1
      · exact absurd a u5
    have u9 : ¬v17 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n0
    rcases c101 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u7
  have c1205 : v24 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v5 := by
      rcases c1204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
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
    have u2 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u3 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n19
      · exact absurd a n21
      · exact a
      · exact absurd a n0
      · exact absurd a n14
    have u5 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v9 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n9
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n6
    have u8 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n8
      · exact a
    rcases c41 with a|a|a
    · exact absurd u8 a
    · exact absurd u7 a
    · exact absurd n5 a
  have c1206 : v11 ∨ ¬v2 ∨ v4 ∨ v10 ∨ ¬v12 ∨ v19 ∨ v23 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
    have u6 : v18 := by
      rcases c1205 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n11
    have u11 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u12 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
    have u13 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u14 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a u1
      · exact a
    have u15 : v13 := by
      rcases c387 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a u12
    rcases c51 with a|a|a
    · exact absurd u14 a
    · exact absurd u15 a
    · exact absurd n4 a
  have c1207 : v22 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n12
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u5 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u6 : v13 := by
      rcases c474 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd n5 a
      · exact absurd a u5
    have u7 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n5 a
    have u8 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v16 := by
      rcases c838 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u11 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n13
      · exact absurd a u3
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u7
    have u12 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u11 a
      · exact a
    rcases c382 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u7
  have c1208 : v41 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v34 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v16 := by
      rcases c1046 with a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v32 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u3 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n11 a
    have u5 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : v9 := by
      rcases c334 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n13
      · exact absurd a n12
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u8
    have u10 : v13 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n15
    rcases c61 with a|a|a
    · exact absurd u10 a
    · exact absurd u9 a
    · exact absurd n5 a
  have c1209 : ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v24 := by
      rcases c1207 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v17 := by
      rcases c1208 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n21
    have u5 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v13 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n21
    have u9 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n4 a
    have u10 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u8 a
    have u11 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd a n15
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u9
    have u12 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n18
    rcases c5 with a|a|a
    · exact absurd u11 a
    · exact absurd n0 a
    · exact absurd u12 a
  have c1210 : ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v18 := by
      rcases c1209 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n23
    have u4 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v28 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
    have u9 : ¬v27 := by
      rcases c1145 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v13 := by
      rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n19
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n20
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n21
      · exact absurd a u6
    have u11 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n4 a
    have u12 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u10 a
    have u13 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n15
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u11
    have u14 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n23
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n14
      · exact absurd a u8
      · exact absurd a n18
    rcases c5 with a|a|a
    · exact absurd u13 a
    · exact absurd n0 a
    · exact absurd u14 a
  have c1211 : v14 ∨ v8 ∨ v9 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v35 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    rcases c295 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd n4 a
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n11
  have c1212 : v36 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v22 := by
      rcases c1210 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
    have u8 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n12
    have u9 : v21 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u5
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n22
      · exact absurd a n23
    have u10 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u9 a
    rcases c495 with a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u1 a
    · exact absurd a n11
    · exact absurd a n15
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a u10
    · exact absurd a u11
  have c1213 : v11 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v32 := by
      rcases c1200 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n17
    have u9 : ¬v25 := by
      rcases c1206 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n17
    have u10 : v39 := by
      rcases c988 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n11
      · exact a
      · exact absurd a n12
    have u11 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u10 a
    rcases c1212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1214 : ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v23 := by
      rcases c1213 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
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
    have u3 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v18 := by
      rcases c637 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v39 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n13
    have u10 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v32 := by
      rcases c508 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n7
    have u13 : ¬v35 := by
      rcases c866 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u10
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v17 := by
      rcases c1062 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v16 := by
      rcases c289 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd u2 a
      · exact a
    have u18 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n7
    have u19 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u17 a
      · exact a
    rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd u18 a
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n15
    · exact absurd a n16
  exact ⟨c1167, c1168, c1171, c1172, c1173, c1175, c1194, c1195, c1196, c1198, c1201, c1208, c1211, c1214⟩
