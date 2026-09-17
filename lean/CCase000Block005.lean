import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 250-299 of the 2189-step refutation of ccase000: 115 core clauses and 46 earlier-derived ones give 23 more. -/
theorem CCase000_block005
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c26 : ¬v2 ∨ ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c28 : ¬v2 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c30 : ¬v2 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c63 : ¬v15 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v18)
    (c72 : ¬v17 ∨ ¬v18)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c93 : ¬v24 ∨ ¬v25)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c122 : ¬v34 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c149 : ¬v45 ∨ ¬v43)
    (c150 : ¬v46 ∨ ¬v43)
    (c151 : ¬v47 ∨ ¬v43)
    (c152 : ¬v48 ∨ ¬v43)
    (c169 : v43 ∨ v49 ∨ v46 ∨ v48 ∨ v45 ∨ v44 ∨ v47)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c184 : ¬v31 ∨ v45 ∨ v24 ∨ v28 ∨ v44 ∨ v35 ∨ v30 ∨ v38 ∨ v32 ∨ v29 ∨ v42 ∨ v39 ∨ v23 ∨ v46)
    (c209 : v36 ∨ v42 ∨ v44 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v7 ∨ v49)
    (c266 : v3 ∨ ¬v2 ∨ v10 ∨ v9 ∨ v1 ∨ v44 ∨ v45 ∨ v8)
    (c274 : v14 ∨ v7 ∨ v6 ∨ v19 ∨ v21 ∨ v20 ∨ v12 ∨ ¬v13)
    (c299 : ¬v35 ∨ v29 ∨ v42 ∨ v22 ∨ v27 ∨ v41 ∨ v28 ∨ v34)
    (c300 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v46 ∨ v45 ∨ v44 ∨ v32)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c358 : v36 ∨ v42 ∨ v37 ∨ v1 ∨ ¬v43 ∨ v2 ∨ v44 ∨ v49)
    (c376 : ¬v25 ∨ v32 ∨ v17 ∨ v30 ∨ v26 ∨ v23 ∨ v18 ∨ v24 ∨ v16 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c390 : v46 ∨ v10 ∨ v2 ∨ v4 ∨ v45 ∨ v11 ∨ v44 ∨ ¬v3)
    (c392 : v12 ∨ ¬v19 ∨ v26 ∨ v27 ∨ v25 ∨ v20 ∨ v18 ∨ v13)
    (c396 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ v14 ∨ ¬v6 ∨ v48 ∨ v47)
    (c397 : ¬v24 ∨ v17 ∨ v32 ∨ v16 ∨ v18 ∨ v25 ∨ v23 ∨ v31)
    (c420 : v11 ∨ v9 ∨ ¬v10 ∨ v3 ∨ v16 ∨ v2 ∨ v4 ∨ v17)
    (c424 : ¬v34 ∨ v42 ∨ v27 ∨ v35 ∨ v40 ∨ v41 ∨ v26 ∨ v33)
    (c443 : ¬v32 ∨ v39 ∨ v25 ∨ v38 ∨ v40 ∨ v33 ∨ v24 ∨ v31)
    (c444 : ¬v32 ∨ v39 ∨ v25 ∨ v40 ∨ v38 ∨ v33 ∨ v26 ∨ v31)
    (c445 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v32 ∨ v25 ∨ v24 ∨ v23)
    (c456 : v25 ∨ ¬v11 ∨ v3 ∨ v16 ∨ v2 ∨ v4 ∨ v9 ∨ v10 ∨ v18 ∨ v19 ∨ v12 ∨ v31 ∨ v32 ∨ v33)
    (c460 : ¬v37 ∨ v2 ∨ v29 ∨ v30 ∨ v44 ∨ v10 ∨ v35 ∨ v8 ∨ v36 ∨ v38 ∨ v42 ∨ v9 ∨ v45 ∨ v49)
    (c463 : v36 ∨ ¬v43 ∨ v1 ∨ v2 ∨ v15 ∨ v6 ∨ v8 ∨ v21 ∨ v16 ∨ v41 ∨ v42 ∨ v44 ∨ v48 ∨ v49)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c492 : v36 ∨ v29 ∨ v30 ∨ v4 ∨ ¬v43 ∨ v1 ∨ v35 ∨ v2 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c512 : ¬v38 ∨ v37 ∨ v31 ∨ v44 ∨ v45 ∨ v46 ∨ v30 ∨ v39)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c588 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v28)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c662 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c665 : v10 ∨ v3 ∨ v9 ∨ v12 ∨ ¬v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c671 : v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c677 : ¬v4 ∨ ¬v3 ∨ v6 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c687 : ¬v13 ∨ ¬v18 ∨ v25 ∨ v26)
    (c688 : v24 ∨ v11 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c689 : ¬v24 ∨ v15 ∨ v16 ∨ v17 ∨ v25 ∨ v29 ∨ v31 ∨ v32 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c695 : ¬v18 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c702 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v25 ∨ v26)
    (c711 : v17 ∨ v10 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v24 ∨ v26 ∨ v27 ∨ v33 ∨ v39 ∨ v40 ∨ v41)
    (c714 : ¬v10 ∨ v6 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c729 : ¬v18 ∨ ¬v10 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c733 : v26 ∨ v32 ∨ ¬v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41)
    (c735 : v18 ∨ v3 ∨ ¬v4 ∨ ¬v7 ∨ v8 ∨ v11 ∨ v13 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c755 : v28 ∨ ¬v11 ∨ v13 ∨ v22 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42)
    (c762 : ¬v10 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42)
    (c778 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c786 : v23 ∨ v24 ∨ v30 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c790 : v46 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c800 : v26 ∨ ¬v3 ∨ ¬v4 ∨ v14 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c802 : v39 ∨ ¬v3 ∨ v14 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c803 : v32 ∨ v3 ∨ v14 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c811 : ¬v5 ∨ v3 ∨ v4 ∨ ¬v10 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v46 ∨ v48 ∨ v49)
    : (¬v18 ∨ ¬v4 ∨ ¬v5 ∨ v13 ∨ v14 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v3 ∨ v4 ∨ v5 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (¬v19 ∨ v12 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27) ∧ (v12 ∨ v5 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v30 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ ¬v7 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47) ∧ (¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42) ∧ (v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41) ∧ (¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42) ∧ (¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26) ∧ (¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (¬v13 ∨ v5 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v47) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40) ∧ (v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v6 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49) ∧ (v26 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) := by
  have c812 : ¬v18 ∨ ¬v4 ∨ ¬v5 ∨ v13 ∨ v14 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n8
    have u5 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n11
    rcases c35 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c813 : v42 ∨ v14 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v27 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n12
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v3 := by
      rcases c802 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n10
    have u12 : ¬v12 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
    have u13 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v26 := by
      rcases c803 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n12
    have u18 : v4 := by
      rcases c811 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u10
      · exact a
      · exact absurd u11 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u19 : ¬v18 := by
      rcases c812 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v7 := by
      rcases c735 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd u18 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u22 : v6 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u23 : ¬v2 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u18 a
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u24 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u22 a
      · exact absurd u18 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u24
    · exact absurd u4 a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a n14
  have c814 : ¬v5 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c32 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c11 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v2 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n7
  have c815 : v12 ∨ ¬v3 ∨ ¬v4 ∨ v13 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v5 := by
      rcases c814 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd n13 a
      · exact absurd a n14
      · exact absurd a n17
    have u2 : v26 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n15
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n11
    have u7 : v7 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n17
      · exact absurd a n15
    rcases c33 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u7 a
    · exact absurd u6 a
  have c816 : v40 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
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
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n11
    have u3 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v14 := by
      rcases c813 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v11 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v10 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
    have u11 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
    have u12 : ¬v27 := by
      rcases c790 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v30 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
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
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v4 := by
      rcases c815 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u11 a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n10
    have u20 : v2 := by
      rcases c390 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u9
      · exact a
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd u11 a
    have u21 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v25 := by
      rcases c720 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n2
      · exact a
    have u25 : ¬v28 := by
      rcases c646 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
    have u26 : ¬v5 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u20 a
      · exact a
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u27 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u24 a
    rcases c798 with a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u5
    · exact absurd a u27
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n11
  have c817 : v23 ∨ v24 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v31 := by
      rcases c816 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v25 := by
      rcases c445 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u7 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    rcases c184 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n9
  have c818 : ¬v2 ∨ ¬v3 ∨ v5 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v7 := by
      rcases c26 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u2 : v12 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n5
    have u3 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n5
    rcases c59 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c819 : ¬v3 ∨ v4 ∨ v5 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n19
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n20
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n18
    have u3 : ¬v2 := by
      rcases c818 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : v1 := by
      rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u5 : ¬v7 := by
      rcases c16 with a|a|a|a
      · exact absurd u4 a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u6 : v14 := by
      rcases c396 with a|a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd u1 a
      · exact absurd a n19
      · exact absurd a n18
    have u7 : v12 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n20
      · exact absurd a n18
    rcases c59 with a|a
    · exact absurd u6 a
    · exact absurd u7 a
  have c820 : v4 ∨ ¬v13 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v18 := by
      rcases c687 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
  have c821 : v4 ∨ v10 ∨ ¬v12 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    rcases c695 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c822 : ¬v19 ∨ v12 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n0 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
  have c823 : v12 ∨ v5 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n7
    rcases c822 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    rcases c821 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c825 : v30 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ ¬v7 ∨ v29 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd n3 a
    rcases c492 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n10 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c826 : v4 ∨ v10 ∨ v11 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v12 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    rcases c702 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
  have c827 : v35 ∨ v4 ∨ v23 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v24 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
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
    have u2 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n18
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a n16
    have u4 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
    have u11 : ¬v13 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
    have u12 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u13 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n17
    have u14 : v5 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n16
    have u15 : ¬v7 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd u14 a
      · exact absurd u13 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd u3 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u16 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n18
    have u17 : v11 := by
      rcases c826 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
    have u18 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u6
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a n12
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a n18
  have c828 : ¬v6 ∨ ¬v4 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd n5 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
  have c829 : ¬v4 ∨ ¬v5 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v6 := by
      rcases c828 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n20
    have u3 : ¬v3 := by
      rcases c814 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n17
      · exact absurd a n20
    have u4 : ¬v10 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u5 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n19
    have u6 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v2 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n17
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a u7
      · exact absurd a n18
      · exact absurd a n20
    have u9 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u7
      · exact a
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u6
    rcases c5 with a|a|a|a
    · exact absurd u9 a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c830 : v5 ∨ v6 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v18 := by
      rcases c687 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c661 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
  have c831 : v5 ∨ ¬v13 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v18 := by
      rcases c687 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    rcases c661 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c832 : ¬v6 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v10 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n15 a
      · exact a
    have u2 : ¬v13 := by
      rcases c831 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n23
    have u3 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v12 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n23
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v2 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n20
      · exact absurd a n4
      · exact absurd a n14
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n3
      · exact absurd a n21
      · exact absurd a n24
    rcases c642 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd a u6
    · exact absurd a n21
    · exact absurd a n22
    · exact absurd a n23
  have c833 : ¬v9 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c823 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c834 : v9 ∨ ¬v4 ∨ v5 ∨ ¬v6 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : v10 := by
      rcases c832 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
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
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c823 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n17
    · exact absurd a n22
  have c835 : v47 ∨ v23 ∨ ¬v31 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v4 := by
      rcases c827 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v24 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u9 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n0
    have u11 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v5 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u10 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v9 := by
      rcases c833 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
    have u18 : v6 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n11
    rcases c834 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u7 a
    · exact absurd a u16
    · exact absurd u18 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd u9 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n12
  have c836 : ¬v34 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n0 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n3
  have c837 : v44 ∨ v5 ∨ v23 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v31 := by
      rcases c835 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v24 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
    have u5 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u1
    have u11 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n11
    have u12 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v4 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
    have u16 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c800 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd u16 a
    · exact absurd u15 a
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c838 : v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n2 a
    rcases c733 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    rcases c838 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c840 : ¬v5 ∨ ¬v4 ∨ ¬v12 ∨ ¬v24 ∨ v34 ∨ v36 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v6 := by
      rcases c828 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n11
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n3 a
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n10
  have c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    rcases c319 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
  have c842 : v36 ∨ ¬v4 ∨ ¬v5 ∨ v23 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n15
    have u8 : ¬v6 := by
      rcases c828 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd u7 a
      · exact absurd a n12
      · exact absurd a n17
    have u9 : ¬v12 := by
      rcases c840 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd u7 a
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
    have u10 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n16
    have u11 : ¬v10 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n16
    have u12 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v18 := by
      rcases c687 with a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
    have u17 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n3
    have u18 : ¬v15 := by
      rcases c588 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u3
    have u19 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u20 : v17 := by
      rcases c397 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
    have u21 : ¬v20 := by
      rcases c74 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v21 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v7 := by
      rcases c274 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd u10 a
    have u24 : ¬v1 := by
      rcases c18 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact absurd n2 a
    have u25 : ¬v2 := by
      rcases c28 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact absurd n2 a
    rcases c463 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u7 a
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n16
    · exact absurd a n17
  have c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    rcases c702 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c844 : v11 ∨ v4 ∨ v10 ∨ v12 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
  have c845 : v23 ∨ v10 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v35 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u11
    have u13 : v5 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v31 := by
      rcases c835 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
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
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v32 := by
      rcases c444 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u14
    have u16 : ¬v4 := by
      rcases c842 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v12 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
    have u18 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact a
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v13 := by
      rcases c820 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n9
    have u20 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u21 : ¬v19 := by
      rcases c822 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
    have u22 : v11 := by
      rcases c844 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n9
    have u23 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u5
    have u27 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n0
    have u28 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u26
      · exact absurd a n12
    have u29 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u3
      · exact absurd a n0
    have u30 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u28 a
      · exact absurd u18 a
    have u31 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u28 a
      · exact absurd u18 a
    have u32 : v17 := by
      rcases c689 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u29
      · exact absurd a u27
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u33 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u32 a
      · exact a
    rcases c456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u22 a
    · exact absurd a u31
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd a u16
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a u33
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u10
  have c846 : v40 ∨ v23 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n9
    have u3 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v10 := by
      rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v24 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v35 := by
      rcases c762 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u17 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n5
    have u18 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u19 : v7 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n11
    have u20 : ¬v34 := by
      rcases c490 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u13
    have u21 : v5 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n9
    have u22 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n4
    have u23 : ¬v2 := by
      rcases c30 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact absurd u22 a
    have u24 : ¬v4 := by
      rcases c35 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact absurd u22 a
    have u25 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
      · exact absurd u22 a
    have u26 : v30 := by
      rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd u22 a
      · exact absurd u19 a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u27 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a n8
      · exact a
      · exact absurd a u27
      · exact absurd a n3
    have u29 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u28 a
    rcases c420 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a u25
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u29
  have c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c729 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
  have c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c173 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n8
  have c849 : ¬v7 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ ¬v31 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n4 a
      · exact a
    rcases c825 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n3 a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd n9 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c850 : v44 ∨ v4 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v23 := by
      rcases c846 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : v11 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u13 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u14 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v12 := by
      rcases c55 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v9 := by
      rcases c47 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u12 a
      · exact a
    have u19 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
    have u21 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u22 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n11
    have u23 : v5 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n10
    have u24 : ¬v19 := by
      rcases c822 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
    have u25 : ¬v35 := by
      rcases c755 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u5
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : v7 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a n12
    have u27 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u26 a
      · exact absurd u22 a
    have u28 : ¬v31 := by
      rcases c849 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a n1
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
      · exact absurd a u25
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u29 : v17 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u10
      · exact a
      · exact absurd a u28
      · exact absurd a n3
      · exact absurd a n8
    have u30 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u29 a
      · exact a
    rcases c665 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd u29 a
    · exact absurd a u30
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n9
  have c851 : ¬v6 ∨ ¬v4 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n7
  have c852 : v44 ∨ ¬v4 ∨ ¬v5 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ ¬v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v3 := by
      rcases c814 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n0
      · exact absurd a n19
    have u5 : ¬v6 := by
      rcases c851 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd n16 a
      · exact absurd a n0
      · exact absurd a n19
    have u6 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n18
    have u7 : ¬v10 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n18
    have u8 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v18 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u12
      · exact a
      · exact absurd a n11
      · exact absurd a n17
    have u14 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v2 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a n17
      · exact absurd a n19
    have u18 : v1 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a u8
    rcases c5 with a|a|a|a
    · exact absurd u18 a
    · exact absurd u17 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c853 : ¬v13 ∨ v5 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c661 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
  have c854 : v48 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v4 := by
      rcases c850 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v37 := by
      rcases c778 with a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
      · exact absurd a n11
    have u3 : v23 := by
      rcases c846 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u4 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n10
    have u5 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v5 := by
      rcases c852 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd u1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
    have u12 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v13 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n10
    have u14 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u16 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n0
    have u17 : v12 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n10
    have u18 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v18 := by
      rcases c662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u18
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    rcases c688 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u18
    · exact absurd u19 a
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    rcases c443 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a u1
  have c856 : v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c846 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
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
    have u2 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u6 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c854 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
  have c857 : ¬v32 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v30 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd n1 a
      · exact a
    rcases c512 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n2
  have c858 : ¬v6 ∨ ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c22 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v1 := by
      rcases c12 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v48 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v47 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v46 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v45 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : v37 := by
      rcases c358 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    rcases c856 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n7
  have c859 : v6 ∨ v5 ∨ ¬v18 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v12 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n5
    have u4 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
    rcases c58 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c860 : v26 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v3 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v38 := by
      rcases c856 with a|a|a|a|a|a|a|a|a|a|a
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
    have u4 : ¬v34 := by
      rcases c836 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v43 := by
      rcases c169 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n12
    have u6 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v32 := by
      rcases c857 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v31 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u8
    have u10 : ¬v6 := by
      rcases c858 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n14
    have u11 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v18 := by
      rcases c859 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v25 := by
      rcases c677 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v22 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v10 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n13
    have u19 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n13
    have u20 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
    have u23 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u2
    rcases c711 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u21
    · exact absurd a u12
    · exact absurd u23 a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c861 : ¬v25 ∨ v16 ∨ v17 ∨ v18 ∨ v26 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    rcases c376 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  exact ⟨c812, c818, c819, c820, c822, c823, c824, c825, c833, c836, c838, c839, c841, c843, c847, c848, c853, c855, c856, c857, c858, c860, c861⟩
