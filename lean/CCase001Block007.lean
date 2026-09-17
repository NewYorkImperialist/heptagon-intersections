import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 350-399 of the 2915-step refutation of ccase001: 148 core clauses and 46 earlier-derived ones give 21 more. -/
theorem CCase001_block007
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c24 : ¬v5 ∨ ¬v2 ∨ ¬v7)
    (c25 : ¬v2 ∨ ¬v6 ∨ ¬v7)
    (c30 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c40 : ¬v8 ∨ ¬v9 ∨ ¬v11)
    (c44 : ¬v8 ∨ ¬v10 ∨ ¬v11)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c48 : ¬v8 ∨ ¬v12 ∨ ¬v11)
    (c49 : ¬v8 ∨ ¬v11 ∨ ¬v13)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c60 : ¬v14 ∨ ¬v9 ∨ ¬v11)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c66 : ¬v10 ∨ ¬v14 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c71 : ¬v12 ∨ ¬v14 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
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
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c112 : ¬v28 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c115 : ¬v27 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c121 : ¬v28 ∨ ¬v26)
    (c122 : ¬v27 ∨ ¬v28)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
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
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c169 : ¬v45 ∨ ¬v43)
    (c170 : ¬v46 ∨ ¬v43)
    (c171 : ¬v47 ∨ ¬v43)
    (c172 : ¬v48 ∨ ¬v43)
    (c173 : ¬v49 ∨ ¬v43)
    (c189 : v43 ∨ v48 ∨ v44 ∨ v47 ∨ v49 ∨ v45 ∨ v46)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c231 : ¬v18 ∨ v25 ∨ v5 ∨ v20 ∨ v26 ∨ v10 ∨ v4 ∨ v19 ∨ v14 ∨ v11 ∨ v21 ∨ v3 ∨ v17 ∨ v28)
    (c236 : v36 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v42 ∨ v1 ∨ v7 ∨ v49)
    (c249 : v6 ∨ ¬v7 ∨ v49 ∨ v1 ∨ v48 ∨ v14 ∨ v13 ∨ v8)
    (c254 : ¬v25 ∨ v18 ∨ v19 ∨ v26 ∨ v17 ∨ v24 ∨ v32 ∨ v33)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c272 : ¬v27 ∨ v20 ∨ v21 ∨ v28 ∨ v33 ∨ v19 ∨ v26 ∨ v34)
    (c288 : v8 ∨ v9 ∨ v45 ∨ v3 ∨ v44 ∨ v1 ∨ ¬v2 ∨ v10)
    (c296 : v20 ∨ v21 ∨ v19 ∨ ¬v13 ∨ v12 ∨ v7 ∨ v14 ∨ v6)
    (c322 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v7 ∨ v44 ∨ v49)
    (c330 : ¬v38 ∨ v45 ∨ v31 ∨ v39 ∨ v46 ∨ v44 ∨ v37 ∨ v32)
    (c333 : ¬v24 ∨ v38 ∨ v18 ∨ v23 ∨ v17 ∨ v30 ∨ v33 ∨ v26 ∨ v31 ∨ v25 ∨ v19 ∨ v44 ∨ v45 ∨ v46)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c354 : v12 ∨ v10 ∨ v17 ∨ v3 ∨ v19 ∨ ¬v11 ∨ v4 ∨ v18)
    (c376 : v6 ∨ v48 ∨ v13 ∨ v12 ∨ v46 ∨ v4 ∨ v47 ∨ ¬v5)
    (c377 : v43 ∨ ¬v37 ∨ v44 ∨ v45 ∨ v29 ∨ v36 ∨ v30 ∨ v38)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c398 : v36 ∨ ¬v43 ∨ v37 ∨ v42 ∨ v1 ∨ v2 ∨ v44 ∨ v49)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c414 : v18 ∨ ¬v25 ∨ v47 ∨ v32 ∨ v45 ∨ v39 ∨ v23 ∨ v16 ∨ v30 ∨ v26 ∨ v24 ∨ v33 ∨ v46 ∨ v17)
    (c426 : v9 ∨ v11 ∨ v16 ∨ v3 ∨ v17 ∨ v2 ∨ v18 ∨ ¬v10)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c440 : v48 ∨ v49 ∨ ¬v6 ∨ v5 ∨ v14 ∨ v47 ∨ v7 ∨ v13)
    (c441 : ¬v24 ∨ v31 ∨ v17 ∨ v32 ∨ v25 ∨ v18 ∨ v23 ∨ v16)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c498 : ¬v25 ∨ v18 ∨ v19 ∨ v26 ∨ v17 ∨ v24 ∨ v32 ∨ v31)
    (c505 : v12 ∨ v9 ∨ v31 ∨ v16 ∨ v18 ∨ v32 ∨ v3 ∨ v25 ∨ v4 ∨ v2 ∨ v10 ∨ ¬v11 ∨ v33 ∨ v19)
    (c506 : ¬v24 ∨ v31 ∨ v17 ∨ v25 ∨ v23 ∨ v16 ∨ v15 ∨ v32 ∨ v29 ∨ v22 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c516 : ¬v27 ∨ v20 ∨ v35 ∨ v19 ∨ v21 ∨ v26 ∨ v34 ∨ v28)
    (c518 : v11 ∨ v10 ∨ v13 ∨ v4 ∨ v20 ∨ v5 ∨ v17 ∨ ¬v12 ∨ v26 ∨ v19 ∨ v3 ∨ v32 ∨ v33 ∨ v34)
    (c525 : v12 ∨ v19 ∨ v5 ∨ v18 ∨ v17 ∨ ¬v11 ∨ v10 ∨ v4)
    (c559 : v36 ∨ ¬v43 ∨ v2 ∨ v8 ∨ v1 ∨ v9 ∨ v14 ∨ v5 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c569 : ¬v38 ∨ v31 ∨ v39 ∨ v37 ∨ v44 ∨ v45 ∨ v30 ∨ v46)
    (c616 : ¬v4 ∨ ¬v10 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c617 : v21 ∨ ¬v4 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c641 : ¬v10 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c657 : ¬v20 ∨ ¬v25 ∨ v26 ∨ v32 ∨ v33)
    (c660 : v4 ∨ v2 ∨ v11 ∨ ¬v12 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c667 : ¬v11 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c671 : v20 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c672 : v21 ∨ ¬v2 ∨ v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c678 : ¬v16 ∨ ¬v28 ∨ v34 ∨ v35)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c687 : ¬v17 ∨ ¬v28 ∨ v34 ∨ v35)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c706 : ¬v11 ∨ v10 ∨ ¬v13 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23)
    (c728 : ¬v11 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v15 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c767 : v25 ∨ v31 ∨ ¬v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c772 : ¬v12 ∨ ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c778 : v12 ∨ ¬v2 ∨ ¬v5 ∨ v9 ∨ v10 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c795 : v10 ∨ ¬v2 ∨ ¬v11 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c817 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c825 : v26 ∨ ¬v9 ∨ ¬v11 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ v24 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30)
    (c894 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c901 : ¬v2 ∨ ¬v6 ∨ ¬v11 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c902 : v2 ∨ v8 ∨ v9 ∨ v10 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c913 : v24 ∨ v23 ∨ v29 ∨ v30 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45)
    (c926 : ¬v4 ∨ ¬v3 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c940 : v16 ∨ v30 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c942 : v47 ∨ ¬v10 ∨ ¬v11 ∨ v20 ∨ v27 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49)
    (c947 : ¬v5 ∨ ¬v6 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c955 : ¬v11 ∨ ¬v10 ∨ ¬v20 ∨ v26 ∨ v27)
    (c956 : v44 ∨ ¬v10 ∨ v16 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c957 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v25 ∨ v31 ∨ v32)
    (c958 : v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c960 : v25 ∨ v10 ∨ v11 ∨ v16 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c961 : v40 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v16 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c962 : v27 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v26 ∨ v31 ∨ v34 ∨ v38 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    : (¬v26 ∨ v3 ∨ v10 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45) ∧ (v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48) ∧ (v28 ∨ v11 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45) ∧ (v36 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v36 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40) ∧ (v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v49 ∨ v4 ∨ ¬v10 ∨ v11 ∨ ¬v16 ∨ v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48) ∧ (v27 ∨ ¬v10 ∨ ¬v11 ∨ v20 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33) ∧ (v44 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v44 ∨ ¬v10 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ v11 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v10 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v20 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) := by
  have c963 : v26 ∨ v4 ∨ v5 ∨ v10 ∨ ¬v11 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n15
      · exact absurd a n21
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n10
    have u2 : v19 := by
      rcases c962 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n24
    have u3 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n24
      · exact absurd a n25
    have u7 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n22
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n20
      · exact absurd a n21
    have u8 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n4 a
    have u9 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u7 a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v13 := by
      rcases c59 with a|a|a
      · exact absurd u7 a
      · exact absurd n4 a
      · exact a
    rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a n16
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n18
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n17
    · exact absurd a u8
  have c964 : v42 ∨ v4 ∨ v16 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v30 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v10 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v11 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u13 : ¬v18 := by
      rcases c961 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v24 := by
      rcases c957 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
    have u15 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u7
    have u16 : v5 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u17 : ¬v2 := by
      rcases c17 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v1 := by
      rcases c7 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u19 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u16 a
      · exact absurd u15 a
      · exact a
    rcases c236 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u17
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n16
  have c965 : v4 ∨ ¬v5 ∨ v10 ∨ ¬v11 ∨ v16 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v25 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n22
      · exact absurd a n18
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd u1 a
      · exact absurd a n18
      · exact absurd a n23
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n22
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n14
    have u4 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u5 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u6 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u3 a
    have u7 : v7 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u2
    have u8 : ¬v2 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u9 : ¬v3 := by
      rcases c30 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
    rcases c505 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n12
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n13
    · exact absurd a n6
  have c966 : v40 ∨ v4 ∨ v16 ∨ v25 ∨ v26 ∨ v27 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v30 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v10 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : v11 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd u4 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u13 : v17 := by
      rcases c964 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v28 := by
      rcases c687 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
    have u19 : ¬v5 := by
      rcases c965 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u20 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n13
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n0
    have u21 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u12 a
    have u22 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u20 a
    have u23 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u12 a
    have u24 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u12 a
    have u25 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a u3
    have u26 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a n9
    have u27 : ¬v2 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u12 a
      · exact absurd a u21
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u28 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u26 a
    rcases c559 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u4 a
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u28
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c967 : v27 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v16 ∨ v25 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v30 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
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
    have u2 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v26 := by
      rcases c966 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v19 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
    have u11 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
    have u12 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u3
    have u16 : ¬v2 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n16
    have u17 : v9 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd u15 a
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v8 := by
      rcases c40 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n3 a
    have u19 : ¬v14 := by
      rcases c60 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n3 a
    have u20 : v1 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u16
      · exact a
    have u21 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n10
    rcases c9 with a|a|a
    · exact absurd u20 a
    · exact absurd u15 a
    · exact absurd u21 a
  have c968 : ¬v26 ∨ v3 ∨ v10 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v19 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a u1
      · exact absurd a n3
    rcases c92 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c969 : v25 ∨ v3 ∨ v10 ∨ v16 ∨ v17 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n4
      · exact a
      · exact absurd a n6
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v18 := by
      rcases c441 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n3
    have u5 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u4 a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c970 : ¬v1 ∨ ¬v4 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n12
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
    rcases c70 with a|a|a
    · exact absurd u3 a
    · exact absurd u4 a
    · exact absurd n2 a
  have c971 : ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n12
      · exact a
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
    have u4 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
    rcases c70 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n2 a
  have c972 : v16 ∨ v25 ∨ v27 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
      · exact absurd a n13
    have u3 : v30 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
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
      · exact absurd a n13
    have u4 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v10 := by
      rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v11 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u12 : v4 := by
      rcases c967 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n1
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
      · exact absurd a n13
    have u13 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n13
    have u14 : ¬v26 := by
      rcases c968 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n9
    have u15 : v17 := by
      rcases c969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v19 := by
      rcases c92 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v2 := by
      rcases c971 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v1 := by
      rcases c970 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u20 : v7 := by
      rcases c236 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u19
      · exact a
      · exact absurd a n13
    have u21 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u20 a
    have u22 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u20 a
    have u23 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n5
    have u24 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n12
      · exact a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u1
    rcases c70 with a|a|a
    · exact absurd u23 a
    · exact absurd u24 a
    · exact absurd u11 a
  have c973 : ¬v4 ∨ ¬v11 ∨ v17 ∨ v19 ∨ v21 ∨ v24 ∨ v26 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n19
    have u2 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n15 a
    have u3 : v10 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
    have u4 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u5 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
    have u8 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n14
    have u9 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a n18
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n13
    have u10 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u8 a
    · exact absurd a n19
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u4
  have c974 : v4 ∨ ¬v10 ∨ ¬v11 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v13 := by
      rcases c65 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u6 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
    have u7 : ¬v6 := by
      rcases c35 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v1 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    rcases c249 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u5 a
    · exact absurd a n14
    · exact absurd a u8
    · exact absurd a n13
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
  have c975 : v28 ∨ ¬v11 ∨ v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v29 ∨ v31 ∨ v33 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n19
    have u8 : ¬v4 := by
      rcases c973 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd u6 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n21
    have u9 : ¬v10 := by
      rcases c974 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u10 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n9
    have u11 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a n18
      · exact absurd a u9
      · exact absurd u10 a
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u11 a
      · exact absurd u10 a
      · exact a
    have u13 : v12 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
    have u14 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n21
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n15
    rcases c71 with a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd n1 a
  have c976 : v40 ∨ v16 ∨ v25 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v30 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : v27 := by
      rcases c972 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
    have u18 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v11 := by
      rcases c975 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n4
    have u24 : v10 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u23 a
      · exact a
      · exact absurd a u22
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u25 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n12
    have u26 : ¬v2 := by
      rcases c672 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u27 : v9 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u20
      · exact absurd u24 a
    have u28 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u24 a
    have u30 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n6
    have u31 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u12
      · exact a
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a n0
    rcases c33 with a|a|a
    · exact absurd u31 a
    · exact absurd u23 a
    · exact absurd u30 a
  have c977 : v49 ∨ v4 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n8
    have u2 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n0
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n13
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n3
  have c978 : v28 ∨ ¬v5 ∨ ¬v12 ∨ v17 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n19
    have u2 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n18
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n9
    have u3 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact a
    have u5 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n14
    have u6 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
    rcases c30 with a|a|a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd u5 a
  have c979 : ¬v12 ∨ v4 ∨ v10 ∨ v11 ∨ v17 ∨ v20 ∨ v21 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v2 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
    rcases c433 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n16
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a u2
  have c980 : v28 ∨ v11 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
      · exact absurd a n24
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n23
      · exact absurd a n19
      · exact absurd a n22
      · exact absurd a n24
      · exact absurd a n20
      · exact absurd a n21
    have u3 : v12 := by
      rcases c977 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n24
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd u2 a
      · exact absurd a n19
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u4 : ¬v5 := by
      rcases c978 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd u2 a
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n23
      · exact absurd a n24
    have u5 : v10 := by
      rcases c979 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n23
      · exact absurd a n24
    have u6 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u5 a
    have u8 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u5 a
    have u9 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n18
    have u10 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n23
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n17
      · exact absurd a n12
    have u11 : v1 := by
      rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n23
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n21
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n22
      · exact absurd a u6
    rcases c15 with a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c981 : v42 ∨ v16 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v25 := by
      rcases c976 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u10 : v30 := by
      rcases c940 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v20 := by
      rcases c657 with a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u13
    have u16 : v18 := by
      rcases c850 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
    have u17 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v4 := by
      rcases c617 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v11 := by
      rcases c980 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v10 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
    have u24 : ¬v9 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u22 a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
    have u25 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u11
    have u26 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u21
      · exact absurd a n8
      · exact absurd a u23
      · exact absurd u25 a
      · exact absurd a n6
      · exact absurd a n7
    rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u26 a
    · exact absurd u25 a
    · exact absurd a u15
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u14
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n11
  have c982 : v21 ∨ v19 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v34 := by
      rcases c516 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a n4
    have u5 : ¬v29 := by
      rcases c128 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u4 a
      · exact a
    rcases c913 with a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd n6 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
  have c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n5
    have u5 : v12 := by
      rcases c354 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u1
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n3 a
    have u9 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u5 a
    rcases c745 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u6
  have c984 : ¬v35 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n1 a
    have u11 : v43 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n2
    have u12 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a u7
    have u14 : ¬v49 := by
      rcases c173 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v47 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v46 := by
      rcases c170 with a|a
      · exact a
      · exact absurd u11 a
    have u18 : v16 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u19 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v25 := by
      rcases c850 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
    have u23 : ¬v24 := by
      rcases c333 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
    rcases c913 with a|a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n4
  have c985 : ¬v16 ∨ ¬v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v12 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v14 := by
      rcases c71 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n5 a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v2 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u7 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u8 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v23 := by
      rcases c112 with a|a
      · exact absurd u7 a
      · exact a
    rcases c817 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u9
  have c986 : v36 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v35 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v3 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n11
    have u2 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v48 := by
      rcases c172 with a|a
      · exact a
      · exact absurd n9 a
    have u8 : ¬v47 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n9 a
    have u9 : ¬v12 := by
      rcases c985 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u10 : v5 := by
      rcases c525 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u3
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n1
    have u11 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n13
    have u12 : ¬v7 := by
      rcases c30 with a|a|a
      · exact absurd u10 a
      · exact absurd u1 a
      · exact a
    have u13 : v13 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u10 a
    have u14 : v14 := by
      rcases c296 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd u13 a
      · exact absurd a u9
      · exact absurd a u12
      · exact a
      · exact absurd a u11
    rcases c72 with a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd n3 a
  have c987 : v36 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v4 := by
      rcases c986 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u2 : ¬v47 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n15
    have u8 : v24 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a u4
      · exact a
      · exact absurd a n4
    have u9 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v13 := by
      rcases c706 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v6 := by
      rcases c728 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a n14
    · exact absurd a u13
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u12
  have c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    rcases c767 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
  have c990 : v42 ∨ v10 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v16 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
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
    have u3 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v15 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v35 := by
      rcases c984 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v11 := by
      rcases c987 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v4 := by
      rcases c958 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
    have u14 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u15 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v32 := by
      rcases c498 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u16
      · exact a
      · exact absurd a n2
    have u20 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u21 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u19 a
      · exact a
    rcases c980 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a n2
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c991 : v49 ∨ v4 ∨ ¬v10 ∨ v11 ∨ ¬v16 ∨ v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v32 := by
      rcases c498 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a n5
    have u10 : ¬v12 := by
      rcases c772 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u8
    have u11 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u9 a
      · exact a
    rcases c977 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd n11 a
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c992 : v27 ∨ ¬v10 ∨ ¬v11 ∨ v20 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
  have c993 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c982 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c994 : ¬v12 ∨ v10 ∨ ¬v11 ∨ v20 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ ¬v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c70 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c48 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n7
    have u6 : v2 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u7 : v43 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n9
    have u8 : v47 := by
      rcases c901 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a n15
    rcases c171 with a|a
    · exact absurd u8 a
    · exact absurd u7 a
  have c995 : v47 ∨ ¬v11 ∨ ¬v16 ∨ v27 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v10 := by
      rcases c942 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v31 := by
      rcases c990 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u7
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
    have u14 : ¬v12 := by
      rcases c994 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u15 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n6
    have u16 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n13
    have u17 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u5
    have u18 : ¬v8 := by
      rcases c49 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u19 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    have u20 : v2 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    rcases c778 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u20 a
    · exact absurd u15 a
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a n12
  have c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    rcases c254 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
  have c997 : v39 ∨ v10 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v16 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v35 := by
      rcases c984 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v27 := by
      rcases c993 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u12 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v31 := by
      rcases c990 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u12
    have u17 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v11 := by
      rcases c995 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n0
    rcases c958 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd u19 a
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd u3 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
  have c998 : v19 ∨ ¬v10 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ ¬v31 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    have u5 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    rcases c641 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c999 : v44 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u2 : v16 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v37 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v35 := by
      rcases c984 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n6
    have u11 : v10 := by
      rcases c997 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u12 : ¬v27 := by
      rcases c993 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
    have u13 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v11 := by
      rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u11 a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v28 := by
      rcases c678 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
    have u16 : ¬v31 := by
      rcases c998 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u11 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v4 := by
      rcases c991 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v3 := by
      rcases c926 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n10
    have u19 : ¬v12 := by
      rcases c616 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd u11 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v5 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a u18
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd u17 a
    have u21 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n10
    have u22 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u20 a
      · exact absurd u17 a
      · exact a
    have u23 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n9
      · exact a
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u13
    have u24 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n5
    rcases c69 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u11 a
  have c1000 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v32 := by
      rcases c330 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n1
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    rcases c569 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n6
  have c1001 : ¬v10 ∨ ¬v20 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c657 with a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
    rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1002 : v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
    have u2 : ¬v45 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v6 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n13
    have u4 : v4 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n1
    have u5 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u4 a
    have u6 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact a
    have u7 : v37 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n8 a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n13
    have u8 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u7 a
    rcases c999 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1003 : v40 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v27 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u1
    have u10 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n1 a
    have u13 : ¬v20 := by
      rcases c1001 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
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
    have u14 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u1
    have u15 : ¬v5 := by
      rcases c947 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n13
    have u16 : v7 := by
      rcases c440 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd u14 a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n11
      · exact a
      · exact absurd a u11
    have u17 : ¬v2 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u16 a
    have u18 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u16 a
    rcases c398 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a n7
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n8
    · exact absurd a n13
  have c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n4 a
    rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n4 a
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n2
  have c1005 : v39 ∨ ¬v10 ∨ ¬v19 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
    have u15 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
    have u16 : ¬v25 := by
      rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c956 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1006 : ¬v10 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v19 := by
      rcases c1005 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v26 := by
      rcases c702 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u1
    have u11 : v11 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v20 := by
      rcases c955 with a|a|a|a|a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
    rcases c992 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd u3 a
    · exact absurd a n6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1007 : v23 ∨ ¬v10 ∨ ¬v11 ∨ v16 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v14 := by
      rcases c66 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c54 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v12 := by
      rcases c64 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n13
    have u5 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n0
    have u6 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n6
      · exact a
      · exact absurd a n15
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n12
    rcases c24 with a|a|a
    · exact absurd u6 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1008 : v44 ∨ ¬v10 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v38 := by
      rcases c999 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v43 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v31 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : v27 := by
      rcases c1006 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v23 := by
      rcases c111 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
    have u17 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v11 := by
      rcases c1007 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd n1 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
    have u22 : v12 := by
      rcases c1002 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : v4 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a n2
    have u24 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n1 a
    have u25 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd n1 a
    have u26 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u24
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n5
    have u27 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u15
    rcases c22 with a|a|a
    · exact absurd u23 a
    · exact absurd u27 a
    · exact absurd u26 a
  have c1009 : v4 ∨ v11 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n10
      · exact a
      · exact absurd a u2
      · exact absurd a n8
    have u4 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u3 a
      · exact a
    rcases c272 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n7
  have c1010 : v10 ∨ v4 ∨ v11 ∨ ¬v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n19
      · exact a
      · exact absurd a n4
      · exact absurd a n14
    have u2 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v13 := by
      rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n18
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n19
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n20
      · exact absurd a u4
    have u8 : v24 := by
      rcases c883 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n16
    have u13 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a u6
      · exact absurd a u11
    have u14 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u12 a
    have u15 : ¬v3 := by
      rcases c19 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u12 a
    rcases c231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u2
    · exact absurd a n7
  have c1011 : ¬v12 ∨ ¬v2 ∨ v3 ∨ v4 ∨ ¬v7 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
    have u2 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
    have u3 : v13 := by
      rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v8 := by
      rcases c288 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n6
    rcases c51 with a|a|a
    · exact absurd u4 a
    · exact absurd u3 a
    · exact absurd n0 a
  have c1012 : v20 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27⟩ := hc
    have u1 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v2 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n19
      · exact absurd a n23
      · exact absurd a n24
      · exact absurd a n25
    have u6 : ¬v3 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n26
      · exact absurd a n27
    have u7 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n26
      · exact absurd a n27
    have u8 : ¬v7 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n23
      · exact absurd a n24
    have u9 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n27
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a n17
      · exact absurd a n12
      · exact absurd a n21
    have u10 : v1 := by
      rcases c322 with a|a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd n22 a
      · exact absurd a n19
      · exact absurd a n21
      · exact a
      · exact absurd a u8
      · exact absurd a n23
      · exact absurd a n27
    have u11 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd n4 a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd u10 a
      · exact absurd u5 a
      · exact a
    rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n10
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  exact ⟨c968, c969, c971, c980, c983, c984, c986, c987, c988, c989, c991, c992, c996, c999, c1000, c1002, c1004, c1008, c1009, c1010, c1012⟩
