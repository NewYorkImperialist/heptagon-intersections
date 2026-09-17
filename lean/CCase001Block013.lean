import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 650-699 of the 2915-step refutation of ccase001: 152 core clauses and 58 earlier-derived ones give 17 more. -/
theorem CCase001_block013
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c15 : ¬v1 ∨ ¬v6 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c17 : ¬v5 ∨ ¬v2 ∨ ¬v3)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c23 : ¬v5 ∨ ¬v2 ∨ ¬v6)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c35 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c46 : ¬v8 ∨ ¬v13 ∨ ¬v10)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c68 : ¬v12 ∨ ¬v14 ∨ ¬v10)
    (c69 : ¬v14 ∨ ¬v13 ∨ ¬v10)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c82 : ¬v15 ∨ ¬v18)
    (c83 : ¬v15 ∨ ¬v19)
    (c84 : ¬v15 ∨ ¬v20)
    (c85 : ¬v15 ∨ ¬v21)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
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
    (c102 : ¬v22 ∨ ¬v23)
    (c103 : ¬v22 ∨ ¬v24)
    (c104 : ¬v22 ∨ ¬v25)
    (c105 : ¬v22 ∨ ¬v26)
    (c106 : ¬v22 ∨ ¬v27)
    (c107 : ¬v22 ∨ ¬v28)
    (c108 : ¬v23 ∨ ¬v24)
    (c109 : ¬v25 ∨ ¬v23)
    (c110 : ¬v26 ∨ ¬v23)
    (c111 : ¬v27 ∨ ¬v23)
    (c113 : ¬v24 ∨ ¬v25)
    (c114 : ¬v26 ∨ ¬v24)
    (c116 : ¬v28 ∨ ¬v24)
    (c117 : ¬v25 ∨ ¬v26)
    (c118 : ¬v27 ∨ ¬v25)
    (c119 : ¬v28 ∨ ¬v25)
    (c120 : ¬v26 ∨ ¬v27)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v31 ∨ ¬v29)
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
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
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c157 : ¬v38 ∨ ¬v39)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c167 : v36 ∨ v41 ∨ v38 ∨ v37 ∨ v39 ∨ v42 ∨ v40)
    (c168 : ¬v44 ∨ ¬v43)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c201 : ¬v30 ∨ v23 ∨ v40 ∨ v17 ∨ v16 ∨ v31 ∨ v26 ∨ v38 ∨ v37 ∨ v32 ∨ v33 ∨ v22 ∨ v15 ∨ v29)
    (c206 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v30 ∨ v29 ∨ v42 ∨ v37)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c227 : v12 ∨ ¬v19 ∨ v33 ∨ v39 ∨ v26 ∨ v24 ∨ v11 ∨ v27 ∨ v10 ∨ v18 ∨ v20 ∨ v41 ∨ v17 ∨ v40)
    (c231 : ¬v18 ∨ v25 ∨ v5 ∨ v20 ∨ v26 ∨ v10 ∨ v4 ∨ v19 ∨ v14 ∨ v11 ∨ v21 ∨ v3 ∨ v17 ∨ v28)
    (c237 : ¬v39 ∨ v32 ∨ v45 ∨ v33 ∨ v47 ∨ v40 ∨ v46 ∨ v38)
    (c239 : ¬v41 ∨ v42 ∨ v40 ∨ v35 ∨ v49 ∨ v34 ∨ v33 ∨ v48)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c248 : ¬v41 ∨ v35 ∨ v40 ∨ v34 ∨ v42 ∨ v47 ∨ v48 ∨ v33)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c266 : v29 ∨ ¬v28 ∨ v35 ∨ v34 ∨ v21 ∨ v27 ∨ v22 ∨ v20)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c281 : v43 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v27 ∨ v22 ∨ v42 ∨ v20 ∨ v33 ∨ v19 ∨ v26 ∨ v29 ∨ v48 ∨ v49)
    (c300 : v24 ∨ ¬v17 ∨ v23 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c317 : v22 ∨ ¬v15 ∨ v21 ∨ v16 ∨ v9 ∨ v28 ∨ v8 ∨ v14)
    (c325 : ¬v24 ∨ v2 ∨ v4 ∨ v31 ∨ v16 ∨ v32 ∨ v23 ∨ v10 ∨ v3 ∨ v19 ∨ v26 ∨ v25 ∨ v17 ∨ v33)
    (c337 : ¬v30 ∨ v37 ∨ v22 ∨ v23 ∨ v24 ∨ v38 ∨ v31 ∨ v29)
    (c347 : v15 ∨ v6 ∨ v13 ∨ v7 ∨ v8 ∨ v21 ∨ v1 ∨ ¬v14)
    (c348 : ¬v18 ∨ v13 ∨ v45 ∨ v26 ∨ v25 ∨ v46 ∨ v27 ∨ v11 ∨ v4 ∨ v10 ∨ v19 ∨ v17 ∨ v47 ∨ v20)
    (c360 : ¬v44 ∨ v37 ∨ v3 ∨ v38 ∨ v1 ∨ v2 ∨ v43 ∨ v45)
    (c383 : v11 ∨ v4 ∨ ¬v3 ∨ v2 ∨ v9 ∨ v45 ∨ v10 ∨ v46)
    (c407 : v11 ∨ ¬v12 ∨ v48 ∨ v1 ∨ v4 ∨ v20 ∨ v5 ∨ v46 ∨ v13 ∨ v19 ∨ v15 ∨ v8 ∨ v47 ∨ v14)
    (c409 : v43 ∨ v36 ∨ v10 ∨ v7 ∨ v9 ∨ v30 ∨ v8 ∨ v29 ∨ v3 ∨ v35 ∨ v2 ∨ ¬v1 ∨ v45 ∨ v49)
    (c439 : v14 ∨ v11 ∨ v27 ∨ v18 ∨ v33 ∨ v4 ∨ v12 ∨ v21 ∨ v5 ∨ v20 ∨ ¬v13 ∨ v6 ∨ v34 ∨ v35)
    (c447 : v43 ∨ ¬v36 ∨ v42 ∨ v21 ∨ v30 ∨ v29 ∨ v22 ∨ v37 ∨ v41 ∨ v34 ∨ v49 ∨ v15 ∨ v48 ∨ v16)
    (c450 : v6 ∨ v20 ∨ v13 ∨ v19 ∨ v11 ∨ v18 ∨ ¬v12 ∨ v5)
    (c455 : ¬v44 ∨ v37 ∨ v30 ∨ v24 ∨ v4 ∨ v2 ∨ v36 ∨ v3 ∨ v22 ∨ v23 ∨ v39 ∨ v43 ∨ v45 ∨ v46)
    (c462 : ¬v39 ∨ v32 ∨ v47 ∨ v40 ∨ v38 ∨ v31 ∨ v46 ∨ v33)
    (c463 : v43 ∨ ¬v44 ∨ v37 ∨ v2 ∨ v1 ∨ v36 ∨ v3 ∨ v45)
    (c464 : v36 ∨ ¬v30 ∨ v24 ∨ v23 ∨ v31 ∨ v37 ∨ v22 ∨ v29)
    (c466 : ¬v10 ∨ v9 ∨ v17 ∨ v16 ∨ v2 ∨ v4 ∨ v11 ∨ v3)
    (c497 : v43 ∨ v36 ∨ v45 ∨ v2 ∨ v37 ∨ v1 ∨ v38 ∨ ¬v44)
    (c508 : ¬v39 ∨ v46 ∨ v32 ∨ v47 ∨ v40 ∨ v45 ∨ v38 ∨ v31)
    (c509 : v12 ∨ v10 ∨ v46 ∨ v3 ∨ v5 ∨ v45 ∨ v11 ∨ ¬v4)
    (c518 : v11 ∨ v10 ∨ v13 ∨ v4 ∨ v20 ∨ v5 ∨ v17 ∨ ¬v12 ∨ v26 ∨ v19 ∨ v3 ∨ v32 ∨ v33 ∨ v34)
    (c524 : v20 ∨ v13 ∨ v5 ∨ v18 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12)
    (c529 : v11 ∨ v4 ∨ v12 ∨ v26 ∨ v18 ∨ v6 ∨ v8 ∨ v15 ∨ v5 ∨ v20 ∨ v21 ∨ ¬v19 ∨ v22 ∨ v27)
    (c535 : ¬v44 ∨ v37 ∨ v38 ∨ v3 ∨ v2 ∨ v43 ∨ v36 ∨ v45)
    (c554 : ¬v44 ∨ v37 ∨ v2 ∨ v31 ∨ v30 ∨ v29 ∨ v41 ∨ v38 ∨ v1 ∨ v6 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c603 : ¬v44 ∨ v37 ∨ v2 ∨ v8 ∨ v36 ∨ v10 ∨ v9 ∨ v3 ∨ v6 ∨ v41 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c685 : ¬v19 ∨ ¬v28 ∨ v34 ∨ v35)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c704 : v23 ∨ ¬v19 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v38 ∨ v40)
    (c705 : v17 ∨ v16 ∨ v23 ∨ ¬v24 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v40)
    (c741 : v27 ∨ ¬v3 ∨ v11 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c745 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c758 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v19 ∨ v25 ∨ v26)
    (c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c850 : ¬v25 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c893 : ¬v19 ∨ ¬v22 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c996 : ¬v25 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v32 ∨ v33)
    (c1004 : v18 ∨ v16 ∨ v17 ∨ v23 ∨ ¬v25 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1028 : ¬v27 ∨ v20 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c1031 : v34 ∨ v20 ∨ ¬v27 ∨ v30 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48)
    (c1035 : ¬v30 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46)
    (c1064 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1095 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c1105 : v34 ∨ v40 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1132 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v29 ∨ v35)
    (c1140 : v19 ∨ v18 ∨ v20 ∨ ¬v25 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1145 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v34 ∨ v35)
    (c1167 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1168 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1172 : v35 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1201 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v43 ∨ v49)
    (c1211 : v14 ∨ v8 ∨ v9 ∨ v20 ∨ ¬v21 ∨ v23 ∨ v27 ∨ v28 ∨ v35 ∨ v36 ∨ v41 ∨ v42)
    (c1223 : v11 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1232 : v25 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v32 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1237 : v4 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1241 : ¬v3 ∨ v2 ∨ ¬v4 ∨ ¬v12 ∨ v15 ∨ v22 ∨ v29 ∨ v36 ∨ v43)
    (c1244 : v39 ∨ v33 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v48)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1247 : ¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49)
    (c1248 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1252 : v36 ∨ ¬v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1255 : v35 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49)
    (c1257 : v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47)
    (c1260 : v19 ∨ v10 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1261 : ¬v38 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v45 ∨ v46 ∨ v47)
    (c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31)
    (c1263 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v48 ∨ v49)
    (c1264 : v38 ∨ ¬v32 ∨ v36 ∨ v37 ∨ v39 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v38 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46) ∧ (¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v20 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46) ∧ (¬v19 ∨ v4 ∨ v11 ∨ v22 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47) ∧ (v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47) ∧ (¬v25 ∨ ¬v30 ∨ v37 ∨ v38) ∧ (¬v20 ∨ ¬v22 ∨ v29 ∨ v35) ∧ (v49 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v28 ∨ ¬v3 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v22 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ ¬v44 ∨ v45) ∧ (v11 ∨ v19 ∨ v20 ∨ v22 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v20 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v6 ∨ ¬v4 ∨ v37 ∨ ¬v44 ∨ v45) ∧ (v36 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v22 ∨ v28 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v21 ∨ ¬v3 ∨ v4 ∨ ¬v10 ∨ v11 ∨ v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v35 ∨ v36 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1265 : v21 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v15 ∨ v18 ∨ v20 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c1264 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n6
      · exact a
      · exact absurd a n12
    have u5 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v22 := by
      rcases c104 with a|a
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
    have u9 : v33 := by
      rcases c850 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u3
      · exact a
    have u10 : v19 := by
      rcases c1140 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u14 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u15 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : v2 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u17 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u16 a
    have u18 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
    have u19 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact a
    have u20 : ¬v12 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a n17
    have u21 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n16
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u15
      · exact absurd a u11
    have u22 : v8 := by
      rcases c529 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u17
      · exact a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u8
    have u23 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u13
    rcases c53 with a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd u23 a
  have c1266 : v31 ∨ v4 ∨ v10 ∨ v11 ∨ v30 ∨ v37 ∨ v39 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v19 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
    have u12 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n0
    have u13 : v36 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v25 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n8
    have u18 : ¬v26 := by
      rcases c117 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
    have u22 : v29 := by
      rcases c447 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u13 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a u3
    have u23 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u22 a
    rcases c850 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u4
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u24
    · exact absurd a u23
  have c1267 : v10 ∨ ¬v4 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v19 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v36 := by
      rcases c1257 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
    have u14 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u20 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact a
    have u21 : v29 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u21 a
      · exact a
    have u25 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
    have u26 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u20
      · exact a
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u15
    have u27 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u23
    have u28 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a u27
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u22
    have u29 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u28 a
    have u30 : v26 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd u2 a
      · exact absurd a u24
      · exact absurd a u16
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u17
    have u31 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u30 a
      · exact a
    rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd n1 a
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u9
    · exact absurd u3 a
    · exact absurd a n6
    · exact absurd a n10
  have c1268 : v49 ∨ v10 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v19 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n0
    have u2 : ¬v4 := by
      rcases c1267 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u4 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v38 := by
      rcases c1261 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v39 := by
      rcases c1266 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u12 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v24 := by
      rcases c1262 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v32 := by
      rcases c508 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n4
    have u19 : ¬v33 := by
      rcases c1064 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n4
    have u21 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u22
      · exact absurd a n3
    have u26 : ¬v28 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u23
    have u27 : v2 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd u20 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u28 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u27 a
    have u29 : ¬v5 := by
      rcases c17 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u20 a
    have u30 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u27 a
    have u31 : ¬v12 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u20 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a n0
    have u32 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a n9
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u21
    have u33 : v14 := by
      rcases c439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u31
      · exact absurd a u7
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd u32 a
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a u23
    have u34 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u30
      · exact absurd a u6
      · exact absurd a u22
      · exact absurd a u25
      · exact a
    rcases c53 with a|a|a
    · exact absurd u34 a
    · exact absurd u32 a
    · exact absurd u33 a
  have c1269 : v38 ∨ v32 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
    rcases c167 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n5
  have c1270 : v33 ∨ ¬v2 ∨ ¬v3 ∨ v11 ∨ v20 ∨ v21 ∨ v22 ∨ v27 ∨ v29 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u3 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n4
    have u5 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n18
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n13
    have u7 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n17
      · exact a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n10
    have u9 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u6 a
    have u10 : ¬v12 := by
      rcases c73 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u8 a
    have u11 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a u9
    have u12 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    rcases c1195 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a u10
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1271 : ¬v22 ∨ v4 ∨ v10 ∨ v11 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
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
    rcases c1254 with a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1272 : ¬v21 ∨ v4 ∨ v11 ∨ v26 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v19 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v25 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
  have c1273 : ¬v3 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n10
    have u4 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n7
    rcases c31 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1274 : ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v20 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
    have u2 : v44 := by
      rcases c1172 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
    have u4 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n15
    have u5 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v28 := by
      rcases c266 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n4
    have u8 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v2 := by
      rcases c1270 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a u9
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n15
    have u11 : ¬v12 := by
      rcases c1273 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd u10 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u12 : v19 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u13 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v25 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd u12 a
      · exact a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u16 : v24 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u5
    rcases c113 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1275 : ¬v26 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v19 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n6
    rcases c95 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1276 : ¬v19 ∨ v4 ∨ v11 ∨ v22 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
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
    have u4 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u2
      · exact a
      · exact absurd a n8
    have u6 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c1004 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1277 : v49 ∨ v4 ∨ v10 ∨ v11 ∨ v18 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v31 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n0
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n0
    have u12 : ¬v41 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
    have u13 : v38 := by
      rcases c1269 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n8
    have u16 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n8
    have u17 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n8
    have u18 : v25 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a u14
    have u19 : ¬v19 := by
      rcases c1276 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v17 := by
      rcases c996 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
    have u24 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v9 := by
      rcases c300 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u23 a
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a n4
    have u27 : ¬v3 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
    have u28 : v2 := by
      rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u29 : ¬v12 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact absurd u26 a
      · exact a
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n0
    rcases c1195 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u28 a
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1278 : v13 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v17 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v5 := by
      rcases c518 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd n6 a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n14
    rcases c23 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd u2 a
  have c1279 : v42 ∨ ¬v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v15 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24⟩ := hc
    have u1 : ¬v28 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n18
    have u2 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u3 : ¬v41 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n18
      · exact absurd a n24
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n23
    have u4 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a u2
      · exact absurd a n21
      · exact absurd a n22
      · exact absurd a n23
    have u5 : v13 := by
      rcases c1278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a n23
    have u6 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u4 a
    have u7 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u5 a
    have u8 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n20
      · exact absurd a n19
      · exact a
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a u6
    have u9 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n24
      · exact a
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n18
      · exact absurd a u1
      · exact absurd a n0
    rcases c5 with a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd u9 a
  have c1280 : v10 ∨ v4 ∨ v11 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v31 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v36 := by
      rcases c1201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n9
    have u12 : ¬v41 := by
      rcases c239 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n8
    have u13 : v38 := by
      rcases c1269 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n6
    have u16 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n6
    have u17 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n6
    have u18 : ¬v19 := by
      rcases c1276 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a n6
    have u20 : v18 := by
      rcases c1277 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n3
    have u26 : ¬v28 := by
      rcases c1132 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u6
    have u27 : ¬v3 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u28 : ¬v2 := by
      rcases c1279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u29 : v1 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u28
      · exact a
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a n5
    have u30 : v24 := by
      rcases c455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u31 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : v13 := by
      rcases c348 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u31
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a u23
    have u33 : v12 := by
      rcases c758 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a u18
      · exact absurd a u31
      · exact absurd a u16
    have u34 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u33 a
    have u35 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u33 a
    have u36 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd u32 a
    have u37 : v7 := by
      rcases c409 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a u34
      · exact absurd a n3
      · exact absurd a u35
      · exact absurd a u7
      · exact absurd a u27
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd u29 a
      · exact absurd a n5
      · exact absurd a n9
    have u38 : v6 := by
      rcases c603 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a u35
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u34
      · exact absurd a u27
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u39 : v5 := by
      rcases c231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u31
      · exact a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u36
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd a u26
    rcases c35 with a|a|a
    · exact absurd u39 a
    · exact absurd u38 a
    · exact absurd u37 a
  have c1281 : ¬v4 ∨ v3 ∨ v10 ∨ v11 ∨ v36 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd n0 a
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n6 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n7
  have c1282 : v22 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v9 ∨ ¬v12 ∨ v14 ∨ v20 ∨ v27 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : v15 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a u1
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n3
    have u3 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v28 := by
      rcases c317 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n6
    rcases c266 with a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd u5 a
    · exact absurd a n11
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n7
  have c1283 : ¬v12 ∨ ¬v3 ∨ ¬v4 ∨ v6 ∨ v20 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd a n17
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n9
    have u3 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n16
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n7
    have u5 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n0 a
    have u7 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u4 a
    have u8 : v22 := by
      rcases c1282 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n13
    have u9 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c1211 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n12
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n17
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a n12
  have c1284 : ¬v4 ∨ ¬v3 ∨ v6 ∨ ¬v12 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v20 := by
      rcases c1283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n18
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n9
    have u3 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c1241 with a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd n3 a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n14
  have c1285 : v19 ∨ v5 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
  have c1286 : v48 ∨ v10 ∨ v11 ∨ v30 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v31 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v4 := by
      rcases c1280 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u4 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v42 := by
      rcases c1168 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u13 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
    have u14 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
    have u15 : v3 := by
      rcases c1281 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v38 := by
      rcases c1257 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u15 a
      · exact absurd u2 a
      · exact a
    have u18 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u2 a
    have u19 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u2 a
    have u20 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v12 := by
      rcases c1284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd u15 a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u22 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a n7
    have u23 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
    have u27 : ¬v22 := by
      rcases c893 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
    have u28 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u17
      · exact a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u9
    have u29 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u30 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u27
      · exact a
    have u31 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u4
    rcases c53 with a|a|a
    · exact absurd u30 a
    · exact absurd u31 a
    · exact absurd u28 a
  have c1287 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v28 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
  have c1288 : v29 ∨ ¬v3 ∨ ¬v4 ∨ v6 ∨ v10 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n7
    have u6 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v19 := by
      rcases c1285 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n14
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v15 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v21 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v28 := by
      rcases c685 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a u1
      · exact a
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a n11
    have u15 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n15
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a n8
    have u17 : ¬v11 := by
      rcases c72 with a|a|a
      · exact absurd u14 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v8 := by
      rcases c53 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u14 a
    have u19 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n4
      · exact absurd a u17
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u20 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v39 := by
      rcases c1035 with a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v22 := by
      rcases c1287 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n9
    have u23 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u18
    have u24 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v23 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u19 a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u24
      · exact absurd a u4
    have u26 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u25 a
    rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd n1 a
    · exact absurd a u17
    · exact absurd u7 a
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u13
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u21
    · exact absurd a u5
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
  have c1289 : v45 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v12 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1288 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : v5 := by
      rcases c509 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n1 a
    have u13 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    have u14 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u15 : v38 := by
      rcases c1248 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact absurd a n5
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
    have u16 : v36 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a n0
    rcases c147 with a|a
    · exact absurd u16 a
    · exact absurd u15 a
  have c1290 : v37 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
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
    have u6 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v39 := by
      rcases c1035 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v4 := by
      rcases c1289 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n5
    have u12 : v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n5
    have u13 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : v25 := by
      rcases c758 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact a
      · exact absurd a u11
    have u18 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v38 := by
      rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u2
    have u21 : v36 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u2
    rcases c147 with a|a
    · exact absurd u21 a
    · exact absurd u20 a
  have c1291 : v17 ∨ v10 ∨ v11 ∨ v15 ∨ v16 ∨ v19 ∨ v20 ∨ v22 ∨ v26 ∨ v27 ∨ v28 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
    have u2 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a u6
    have u11 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a u6
    have u12 : v23 := by
      rcases c201 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u3
    have u13 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u12 a
    rcases c1223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u2
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
  have c1292 : v25 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v11 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v24 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u2 a
    rcases c325 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n9
  have c1293 : v37 ∨ v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
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
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v39 := by
      rcases c1035 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n5
    have u14 : ¬v22 := by
      rcases c1271 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n5
    have u15 : ¬v26 := by
      rcases c1275 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n5
    have u16 : v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
    have u17 : ¬v21 := by
      rcases c1272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
    have u18 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v28 := by
      rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v38 := by
      rcases c1291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v3 := by
      rcases c1274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v2 := by
      rcases c1279 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u28 : v25 := by
      rcases c1292 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n5
    have u29 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u28 a
    rcases c464 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u1 a
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u4
  have c1294 : v3 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd n1 a
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : v38 := by
      rcases c1248 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
    have u6 : v36 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    rcases c147 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n1 a
    rcases c337 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u4
  have c1296 : ¬v3 ∨ v10 ∨ v11 ∨ v22 ∨ v24 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : v12 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v4 := by
      rcases c1293 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u15 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u8
    have u18 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u8
    have u19 : v23 := by
      rcases c337 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u5
    have u20 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v17 := by
      rcases c1232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u23 : ¬v19 := by
      rcases c741 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u24 : v20 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u23
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u25 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u15
      · exact a
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u4
    have u28 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u2 a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v8 := by
      rcases c52 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u27 a
    rcases c347 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u13
    · exact absurd a u28
    · exact absurd a u15
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u14
    · exact absurd u27 a
  have c1297 : v17 ∨ v6 ∨ v10 ∨ ¬v12 ∨ v22 ∨ ¬v24 ∨ ¬v30 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : v16 := by
      rcases c705 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd n6 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u10 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd n3 a
    have u13 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n3 a
    rcases c745 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u3
  have c1298 : ¬v3 ∨ v10 ∨ v11 ∨ v22 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v4 := by
      rcases c1293 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : v12 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u8
    have u15 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
    have u16 : v24 := by
      rcases c1296 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v26 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v17 := by
      rcases c1297 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n9
    have u19 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u4
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n9
    have u22 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u5
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    rcases c73 with a|a|a
    · exact absurd u3 a
    · exact absurd u22 a
    · exact absurd u21 a
  have c1299 : v11 ∨ ¬v3 ∨ v10 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
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
    have u7 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : ¬v39 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u5
    have u13 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
    have u14 : v22 := by
      rcases c1298 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
    have u15 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u9
    have u20 : ¬v19 := by
      rcases c704 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u11
    have u21 : v20 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u21 a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u24
    · exact absurd a u22
  have c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n1 a
      · exact a
    rcases c304 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u1
  have c1301 : v10 ∨ ¬v3 ∨ v11 ∨ ¬v22 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v38 := by
      rcases c1299 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v4 := by
      rcases c1293 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u8 : v12 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u14
      · exact absurd a u16
    have u19 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u12
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a n8
    have u20 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u8 a
    have u21 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u8 a
    have u23 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u9
    rcases c1211 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd u23 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u16
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a u9
  have c1302 : v49 ∨ v10 ∨ v11 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v4 := by
      rcases c1293 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v30 := by
      rcases c1286 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u12 : v12 := by
      rcases c1290 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u13 : v3 := by
      rcases c1294 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u13 a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd u3 a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v22 := by
      rcases c1301 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u18 : v38 := by
      rcases c1299 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u13 a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u19 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : v15 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u19
      · exact absurd a u2
    have u21 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v20 := by
      rcases c84 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v21 := by
      rcases c85 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v19 := by
      rcases c83 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v13 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd u12 a
      · exact absurd a u15
    have u26 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
    have u27 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v27 := by
      rcases c1145 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u9
    have u29 : v28 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u9
      · exact a
      · exact absurd a u11
    rcases c281 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u29 a
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u8
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n0
  have c1303 : ¬v3 ∨ v11 ∨ v12 ∨ v19 ∨ v32 ∨ v33 ∨ v34 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
    have u4 : v4 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c26 with a|a|a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1304 : v28 ∨ ¬v3 ∨ ¬v10 ∨ v11 ∨ v19 ∨ v20 ∨ v22 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v12 := by
      rcases c1303 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
    have u6 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n0
    have u7 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n12
    have u8 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
    rcases c31 with a|a|a
    · exact absurd n1 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1305 : v11 ∨ ¬v10 ∨ ¬v12 ∨ v19 ∨ v20 ∨ v22 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u4 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n11
    have u7 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
    have u8 : ¬v4 := by
      rcases c34 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u9 : ¬v5 := by
      rcases c35 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u10 : ¬v1 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u11 : v18 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd n2 a
    have u12 : v15 := by
      rcases c407 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a u1
    rcases c82 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c1306 : v1 ∨ v2 ∨ v3 ∨ v37 ∨ v43 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v38 := by
      rcases c360 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
    have u2 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u1 a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n6
  have c1307 : v11 ∨ v19 ∨ v20 ∨ v22 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v26 := by
      rcases c1023 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v40 := by
      rcases c1244 with a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v41 := by
      rcases c248 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n7
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : ¬v3 := by
      rcases c1304 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v12 := by
      rcases c1305 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u1
      · exact a
      · exact absurd a n15
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a u2
    have u10 : ¬v2 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u11 : v1 := by
      rcases c1306 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd u5 a
      · exact absurd a n13
    have u12 : ¬v6 := by
      rcases c13 with a|a|a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v4 := by
      rcases c10 with a|a|a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u9 a
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a n14
    · exact absurd a n16
    · exact absurd a u8
  have c1308 : v17 ∨ v6 ∨ ¬v10 ∨ v11 ∨ v16 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n14
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n9
    have u2 : ¬v8 := by
      rcases c46 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u3 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u4 : ¬v14 := by
      rcases c69 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
    have u5 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a n12
    have u6 : v1 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n14
      · exact a
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u4
    have u7 : ¬v4 := by
      rcases c12 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u5 a
    rcases c466 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u9
  have c1309 : v4 ∨ v11 ∨ v18 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v26 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    rcases c1275 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1310 : v11 ∨ v20 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v42 := by
      rcases c1167 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v10 := by
      rcases c1302 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v27 := by
      rcases c1028 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
    have u7 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v39 := by
      rcases c1035 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v19 := by
      rcases c1307 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v18 := by
      rcases c95 with a|a
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
    have u15 : v4 := by
      rcases c1309 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n11
    have u16 : v6 := by
      rcases c1308 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u16 a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd u5 a
    · exact absurd a n10
  have c1311 : ¬v6 ∨ ¬v4 ∨ v37 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v2 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n3 a
      · exact a
    rcases c1306 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd n3 a
    · exact absurd a n4
  have c1312 : v28 ∨ v3 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v22 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n11 a
      · exact a
    have u2 : ¬v5 := by
      rcases c1248 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n11 a
      · exact absurd a n12
    have u3 : v2 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n12
    have u4 : v12 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd n2 a
    have u5 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n2 a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v13 := by
      rcases c67 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n3 a
    have u9 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
    rcases c196 with a|a|a|a|a|a|a
    · exact absurd a n15
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n10
  have c1313 : v36 ∨ ¬v4 ∨ ¬v10 ∨ v11 ∨ v22 ∨ v28 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : v3 := by
      rcases c1312 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
    have u4 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u2 a
      · exact a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd n10 a
  have c1314 : v21 ∨ ¬v3 ∨ v4 ∨ ¬v10 ∨ v11 ∨ v15 ∨ v19 ∨ v22 ∨ v26 ∨ v28 ∨ v29 ∨ v33 ∨ v35 ∨ v36 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
    have u3 : v12 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v14 := by
      rcases c68 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n3 a
    have u6 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a u2
    have u7 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n13
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u5
    rcases c9 with a|a|a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd u6 a
  exact ⟨c1269, c1271, c1272, c1274, c1275, c1276, c1285, c1295, c1300, c1302, c1304, c1306, c1307, c1310, c1311, c1313, c1314⟩
