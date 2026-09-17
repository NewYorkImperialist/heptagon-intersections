import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2600-2649 of the 2915-step refutation of ccase001: 138 core clauses and 74 earlier-derived ones give 6 more. -/
theorem CCase001_block052
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c2 : ¬v1 ∨ ¬v4 ∨ ¬v2)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v7)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v6)
    (c22 : ¬v4 ∨ ¬v2 ∨ ¬v7)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c32 : ¬v6 ∨ ¬v5 ∨ ¬v4)
    (c33 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c34 : ¬v4 ∨ ¬v6 ∨ ¬v7)
    (c39 : ¬v8 ∨ ¬v9 ∨ ¬v10)
    (c45 : ¬v8 ∨ ¬v12 ∨ ¬v10)
    (c54 : ¬v9 ∨ ¬v10 ∨ ¬v11)
    (c55 : ¬v9 ∨ ¬v12 ∨ ¬v10)
    (c56 : ¬v9 ∨ ¬v13 ∨ ¬v10)
    (c57 : ¬v9 ∨ ¬v14 ∨ ¬v10)
    (c58 : ¬v9 ∨ ¬v11 ∨ ¬v12)
    (c59 : ¬v9 ∨ ¬v11 ∨ ¬v13)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c64 : ¬v10 ∨ ¬v12 ∨ ¬v11)
    (c65 : ¬v10 ∨ ¬v13 ∨ ¬v11)
    (c67 : ¬v12 ∨ ¬v13 ∨ ¬v10)
    (c70 : ¬v12 ∨ ¬v13 ∨ ¬v11)
    (c72 : ¬v14 ∨ ¬v13 ∨ ¬v11)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
    (c86 : ¬v16 ∨ ¬v17)
    (c87 : ¬v16 ∨ ¬v18)
    (c88 : ¬v16 ∨ ¬v19)
    (c89 : ¬v16 ∨ ¬v20)
    (c91 : ¬v17 ∨ ¬v18)
    (c92 : ¬v17 ∨ ¬v19)
    (c93 : ¬v17 ∨ ¬v20)
    (c95 : ¬v18 ∨ ¬v19)
    (c96 : ¬v18 ∨ ¬v20)
    (c98 : ¬v19 ∨ ¬v20)
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
    (c112 : ¬v28 ∨ ¬v23)
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
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v34 ∨ ¬v29)
    (c129 : ¬v35 ∨ ¬v29)
    (c130 : ¬v31 ∨ ¬v30)
    (c131 : ¬v32 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c146 : ¬v36 ∨ ¬v37)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c163 : ¬v42 ∨ ¬v39)
    (c166 : ¬v41 ∨ ¬v42)
    (c173 : ¬v49 ∨ ¬v43)
    (c178 : ¬v49 ∨ ¬v44)
    (c182 : ¬v49 ∨ ¬v45)
    (c185 : ¬v49 ∨ ¬v46)
    (c187 : ¬v49 ∨ ¬v47)
    (c188 : ¬v49 ∨ ¬v48)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c191 : v9 ∨ v2 ∨ v30 ∨ v37 ∨ v44 ∨ v16 ∨ v23)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c199 : v43 ∨ ¬v36 ∨ v29 ∨ v16 ∨ v35 ∨ v44 ∨ v42 ∨ v37 ∨ v22 ∨ v31 ∨ v38 ∨ v15 ∨ v21 ∨ v45)
    (c213 : v12 ∨ v47 ∨ v3 ∨ v46 ∨ v5 ∨ v11 ∨ v45 ∨ ¬v4)
    (c226 : v9 ∨ v2 ∨ v4 ∨ v46 ∨ v10 ∨ ¬v3 ∨ v44 ∨ v45)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c270 : v36 ∨ v22 ∨ v23 ∨ v35 ∨ v28 ∨ ¬v29 ∨ v30 ∨ v37)
    (c284 : v36 ∨ ¬v16 ∨ v37 ∨ v28 ∨ v23 ∨ v8 ∨ v14 ∨ v24 ∨ v17 ∨ v15 ∨ v21 ∨ v30 ∨ v9 ∨ v38)
    (c286 : v36 ∨ v22 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v14 ∨ v28 ∨ v30 ∨ v24 ∨ v15 ∨ v8 ∨ v31 ∨ v9 ∨ v38)
    (c293 : v21 ∨ ¬v20 ∨ v27 ∨ v13 ∨ v14 ∨ v28 ∨ v12 ∨ v19)
    (c302 : v21 ∨ v28 ∨ v18 ∨ v33 ∨ v34 ∨ v26 ∨ v32 ∨ v5 ∨ v20 ∨ v7 ∨ v6 ∨ v25 ∨ v13 ∨ ¬v27)
    (c304 : ¬v22 ∨ v29 ∨ v35 ∨ v28 ∨ v21 ∨ v23 ∨ v16 ∨ v15)
    (c313 : ¬v28 ∨ v22 ∨ v35 ∨ v27 ∨ v32 ∨ v18 ∨ v15 ∨ v26 ∨ v8 ∨ v34 ∨ v14 ∨ v13 ∨ v21 ∨ v25)
    (c328 : ¬v35 ∨ v29 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v34)
    (c353 : ¬v1 ∨ v7 ∨ v44 ∨ v11 ∨ v15 ∨ v2 ∨ v8 ∨ v16 ∨ v3 ∨ v4 ∨ v21 ∨ v43 ∨ v14 ∨ v46)
    (c358 : ¬v35 ∨ v42 ∨ v28 ∨ v14 ∨ v13 ∨ v41 ∨ v22 ∨ v21 ∨ v8 ∨ v34 ∨ v29 ∨ v33 ∨ v26 ∨ v40)
    (c363 : v43 ∨ ¬v23 ∨ v45 ∨ v24 ∨ v21 ∨ v37 ∨ v30 ∨ v31 ∨ v22 ∨ v28 ∨ v35 ∨ v15 ∨ v44 ∨ v16)
    (c378 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v9 ∨ v28 ∨ v23 ∨ v24 ∨ v8 ∨ v32 ∨ v25 ∨ v14 ∨ v18)
    (c381 : v43 ∨ v9 ∨ v1 ∨ v45 ∨ ¬v2 ∨ v3 ∨ v10 ∨ v44)
    (c384 : v36 ∨ v29 ∨ v30 ∨ v15 ∨ v26 ∨ v33 ∨ v37 ∨ v27 ∨ v21 ∨ v28 ∨ v19 ∨ v42 ∨ v23 ∨ ¬v22)
    (c389 : v15 ∨ ¬v9 ∨ v16 ∨ v8 ∨ v17 ∨ v10 ∨ v2 ∨ v1)
    (c420 : ¬v49 ∨ v43 ∨ v41 ∨ v48 ∨ v7 ∨ v6 ∨ v1 ∨ v42)
    (c421 : v21 ∨ v20 ∨ v14 ∨ v12 ∨ v5 ∨ v19 ∨ v6 ∨ ¬v13)
    (c424 : ¬v49 ∨ v36 ∨ v6 ∨ v48 ∨ v42 ∨ v7 ∨ v43 ∨ v1)
    (c428 : v10 ∨ v3 ∨ v16 ∨ v17 ∨ v2 ∨ v8 ∨ ¬v9 ∨ v15)
    (c433 : ¬v3 ∨ v11 ∨ v44 ∨ v10 ∨ v4 ∨ v45 ∨ v46 ∨ v2)
    (c436 : v43 ∨ v29 ∨ v45 ∨ ¬v30 ∨ v40 ∨ v32 ∨ v37 ∨ v26 ∨ v33 ∨ v44 ∨ v31 ∨ v24 ∨ v36 ∨ v23)
    (c443 : v48 ∨ v14 ∨ v5 ∨ v12 ∨ v7 ∨ ¬v6 ∨ v47 ∨ v13)
    (c448 : ¬v49 ∨ v36 ∨ v7 ∨ v41 ∨ v48 ∨ v1 ∨ v43 ∨ v42)
    (c460 : ¬v49 ∨ v42 ∨ v14 ∨ v1 ∨ v41 ∨ v21 ∨ v7 ∨ v5 ∨ v15 ∨ v20 ∨ v40 ∨ v43 ∨ v47 ∨ v48)
    (c461 : ¬v19 ∨ v26 ∨ v13 ∨ v33 ∨ v39 ∨ v21 ∨ v20 ∨ v41 ∨ v18 ∨ v25 ∨ v28 ∨ v12 ∨ v40 ∨ v14)
    (c470 : v43 ∨ v34 ∨ v8 ∨ v35 ∨ v48 ∨ v1 ∨ v7 ∨ v41 ∨ v13 ∨ v5 ∨ v14 ∨ ¬v6 ∨ v47 ∨ v33)
    (c520 : ¬v20 ∨ v27 ∨ v19 ∨ v14 ∨ v26 ∨ v28 ∨ v13 ∨ v21)
    (c566 : v36 ∨ v22 ∨ v32 ∨ v37 ∨ v35 ∨ ¬v29 ∨ v31 ∨ v28 ∨ v25 ∨ v39 ∨ v16 ∨ v30 ∨ v15 ∨ v21)
    (c574 : v43 ∨ v29 ∨ v44 ∨ v35 ∨ v30 ∨ v2 ∨ v8 ∨ ¬v1 ∨ v6 ∨ v14 ∨ v36 ∨ v13 ∨ v7 ∨ v48)
    (c577 : v26 ∨ ¬v19 ∨ v18 ∨ v11 ∨ v27 ∨ v25 ∨ v20 ∨ v12)
    (c589 : ¬v49 ∨ v36 ∨ v6 ∨ v41 ∨ v48 ∨ v7 ∨ v43 ∨ v42)
    (c602 : v43 ∨ ¬v1 ∨ v44 ∨ v2 ∨ v9 ∨ v7 ∨ v14 ∨ v8)
    (c612 : v19 ∨ ¬v11 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c665 : ¬v20 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c691 : v25 ∨ v10 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c697 : ¬v28 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c702 : ¬v26 ∨ v19 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c830 : v12 ∨ ¬v2 ∨ v11 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c856 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v23 ∨ v29 ∨ v30)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c866 : ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c906 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v29 ∨ v30)
    (c983 : v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ ¬v16 ∨ v31 ∨ v38 ∨ v45)
    (c1033 : ¬v30 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v38)
    (c1054 : v4 ∨ v9 ∨ v11 ∨ v12 ∨ v16 ∨ v17 ∨ ¬v18 ∨ v23 ∨ v24 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c1062 : ¬v17 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1103 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v44)
    (c1122 : ¬v5 ∨ ¬v1 ∨ v12 ∨ v13 ∨ v46 ∨ v47 ∨ v48)
    (c1146 : ¬v25 ∨ ¬v29 ∨ v35 ∨ v36 ∨ v37)
    (c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25)
    (c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1295 : ¬v25 ∨ ¬v30 ∨ v37 ∨ v38)
    (c1300 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v35)
    (c1421 : v35 ∨ v15 ∨ v20 ∨ v21 ∨ ¬v28)
    (c1435 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1457 : v12 ∨ ¬v1 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1474 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c1575 : v26 ∨ v5 ∨ v12 ∨ v19 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1642 : ¬v16 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v14)
    (c2028 : ¬v23 ∨ v16 ∨ v29 ∨ v30 ∨ v31)
    (c2184 : ¬v21 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v43 ∨ v44 ∨ v45)
    (c2235 : v32 ∨ v5 ∨ v12 ∨ v19 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c2249 : ¬v37 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2297 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44 ∨ v45)
    (c2353 : v30 ∨ v2 ∨ v9 ∨ ¬v24 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2367 : ¬v29 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v43 ∨ v44 ∨ v45)
    (c2396 : ¬v35 ∨ v3 ∨ v10 ∨ v17 ∨ v43 ∨ v44 ∨ v45)
    (c2476 : v33 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v35)
    (c2547 : v31 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v46)
    (c2612 : ¬v35 ∨ v4 ∨ v11 ∨ v18 ∨ v44 ∨ v45 ∨ v46)
    (c2633 : v33 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ ¬v27 ∨ v34)
    (c2689 : ¬v16 ∨ v4 ∨ v11 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2691 : v31 ∨ v4 ∨ v11 ∨ v18 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46)
    (c2700 : v30 ∨ v2 ∨ v9 ∨ ¬v18 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2719 : ¬v22 ∨ v15 ∨ v21 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c2754 : v24 ∨ v3 ∨ v10 ∨ v17 ∨ v30 ∨ v37 ∨ v38 ∨ v39 ∨ v45)
    (c2805 : ¬v32 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c2863 : ¬v31 ∨ v24 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2925 : ¬v28 ∨ ¬v16 ∨ v35)
    (c2941 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c2978 : ¬v29 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45)
    (c3063 : v18 ∨ v4 ∨ v11 ∨ v25 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46)
    (c3068 : ¬v16 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ v34 ∨ v43 ∨ v44 ∨ v45 ∨ v46)
    (c3119 : v39 ∨ v4 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v37 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c3140 : v49)
    (c3158 : ¬v13 ∨ v3 ∨ ¬v4 ∨ v5 ∨ ¬v12)
    (c3159 : ¬v41 ∨ v33 ∨ v34 ∨ v35)
    (c3184 : v8 ∨ v1 ∨ v14 ∨ ¬v15 ∨ v21)
    (c3193 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v22 ∨ v24 ∨ v30)
    (c3200 : v37 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ ¬v36 ∨ v41)
    (c3219 : ¬v20 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c3224 : v13 ∨ v1 ∨ v4 ∨ v8 ∨ v14 ∨ v21)
    (c3225 : ¬v28 ∨ v4 ∨ ¬v13 ∨ v15 ∨ v21 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c3231 : ¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v39)
    (c3232 : ¬v26 ∨ v1 ∨ v8 ∨ v15 ∨ v29 ∨ v32 ∨ v35)
    (c3233 : v4 ∨ v1 ∨ ¬v2 ∨ v8 ∨ v14 ∨ v21 ∨ v32 ∨ v33 ∨ v35)
    (c3234 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37)
    (c3235 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v21)
    (c3239 : v32 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v29 ∨ v35)
    (c3240 : v35 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v11 ∨ v14 ∨ v19 ∨ v29 ∨ v32 ∨ v33 ∨ ¬v36)
    : (¬v28 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v32 ∨ v34 ∨ v35) ∧ (v1 ∨ v8 ∨ v14 ∨ v21) ∧ (v13 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v41) ∧ (v30 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v20 ∨ v21 ∨ v29 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41) ∧ (v20 ∨ v2 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v33 ∨ v34 ∨ v36 ∨ v41) ∧ (v25 ∨ ¬v32 ∨ v38 ∨ v39) := by
  have c3241 : v29 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v13 ∨ v15 ∨ v21 ∨ v32 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n3
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n8
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n8
    have u18 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : v37 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a n7
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u12
    have u21 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a n8
    have u22 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v7 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n9
      · exact a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u22
    have u24 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u19
    rcases c34 with a|a|a
    · exact absurd n2 a
    · exact absurd u24 a
    · exact absurd u23 a
  have c3242 : v29 ∨ v1 ∨ v8 ∨ ¬v11 ∨ v14 ∨ v21 ∨ v32 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u7 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
    have u8 : ¬v13 := by
      rcases c3239 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
    have u9 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u12 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v36 := by
      rcases c3241 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
    have u14 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v30 := by
      rcases c3234 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a u16
    have u18 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u14
    have u21 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
      · exact absurd a u14
    have u22 : v9 := by
      rcases c3200 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd u13 a
      · exact absurd a u15
    have u23 : ¬v12 := by
      rcases c58 with a|a|a
      · exact absurd u22 a
      · exact absurd n3 a
      · exact a
    have u24 : v19 := by
      rcases c3240 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd u13 a
    have u25 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u24 a
      · exact a
    rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd a u26
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd a u21
    · exact absurd a u20
    · exact absurd a u23
    · exact absurd a u11
    · exact absurd a n4
  have c3243 : v13 ∨ ¬v4 ∨ ¬v9 ∨ v11 ∨ v15 ∨ v21 ∨ v22 ∨ v26 ∨ v29 ∨ v32 ∨ v35 ∨ ¬v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd n11 a
      · exact a
    have u9 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n11 a
      · exact a
    have u10 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n11 a
      · exact a
    have u11 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n11 a
    have u12 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n11 a
    have u13 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n11 a
      · exact a
    have u14 : ¬v33 := by
      rcases c1474 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
    have u15 : v30 := by
      rcases c3234 with a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a u13
    have u16 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u8
    have u19 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd a u8
    have u20 : v23 := by
      rcases c3231 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n6
      · exact a
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
    have u21 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v16 := by
      rcases c199 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n11 a
      · exact absurd a n8
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
    have u23 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u17
    have u25 : v10 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a u21
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u26 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u24 a
    have u27 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd n1 a
    have u28 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n1 a
      · exact absurd u24 a
      · exact a
    have u29 : ¬v8 := by
      rcases c39 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u25 a
    have u30 : ¬v14 := by
      rcases c57 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u25 a
    rcases c470 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a u29
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u30
    · exact absurd u24 a
    · exact absurd a u6
    · exact absurd a u14
  have c3244 : v14 ∨ v1 ∨ v8 ∨ v21 ∨ v29 ∨ v32 ∨ v35 ∨ ¬v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c147 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
    have u11 : ¬v13 := by
      rcases c3239 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
    have u12 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
    have u14 : ¬v37 := by
      rcases c146 with a|a
      · exact absurd n7 a
      · exact a
    have u15 : v30 := by
      rcases c3234 with a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u14
    have u16 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v28 := by
      rcases c697 with a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u6
    have u19 : v9 := by
      rcases c3200 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u7
    have u20 : ¬v11 := by
      rcases c3242 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v25 := by
      rcases c1295 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u6
    have u22 : v22 := by
      rcases c3243 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u13 a
      · exact absurd u19 a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
    have u23 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a n4
      · exact absurd a n6
    have u26 : v16 := by
      rcases c304 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u23
      · exact a
      · exact absurd a u10
    have u27 : v10 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u28 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u17
    have u29 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u13 a
    rcases c1575 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u31
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c3245 : v32 ∨ v1 ∨ v8 ∨ v14 ∨ v21 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
    have u10 : ¬v13 := by
      rcases c3239 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v26 := by
      rcases c3232 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u12 : ¬v36 := by
      rcases c3244 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u14 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u15 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n5
      · exact a
      · exact absurd a n2
    have u16 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v20 := by
      rcases c1300 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v30 := by
      rcases c2719 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u22 : ¬v31 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v37 := by
      rcases c436 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd u21 a
      · exact absurd a u13
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u17
    have u25 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u23
      · exact absurd a n6
    have u26 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u23
    have u28 : v7 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact a
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u26
    rcases c34 with a|a|a
    · exact absurd u14 a
    · exact absurd u27 a
    · exact absurd u28 a
  have c3246 : ¬v22 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2719 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c3247 : v29 ∨ v1 ∨ v8 ∨ v14 ∨ v21 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u6 : v32 := by
      rcases c3245 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v22 := by
      rcases c3246 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n5
    have u10 : ¬v36 := by
      rcases c3234 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u8
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n2
  have c3248 : ¬v20 ∨ v13 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n0 a
    rcases c520 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n3
  have c3249 : v35 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v26 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v20 := by
      rcases c3248 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u7 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
    have u10 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u7
    have u11 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd n2 a
    have u12 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n2 a
      · exact absurd u10 a
      · exact a
    rcases c470 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd u10 a
    · exact absurd a u3
    · exact absurd a u8
  have c3250 : ¬v4 ∨ v5 ∨ v8 ∨ ¬v12 ∨ ¬v13 ∨ v14 ∨ v23 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v3 := by
      rcases c3158 with a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n3 a
    have u7 : ¬v9 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n0 a
      · exact absurd u6 a
      · exact a
    rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u3
  have c3251 : ¬v4 ∨ v5 ∨ v8 ∨ ¬v13 ∨ v14 ∨ ¬v22 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n5 a
      · exact a
    have u10 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n5 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u16 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v12 := by
      rcases c3250 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : v19 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u19 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v20 := by
      rcases c98 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v11 := by
      rcases c577 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u18 a
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a u17
    have u24 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n3 a
    have u25 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u23 a
    have u26 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u9
    have u27 : v3 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
    rcases c16 with a|a|a
    · exact absurd n0 a
    · exact absurd u27 a
    · exact absurd u26 a
  have c3252 : v31 ∨ ¬v4 ∨ v7 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ ¬v22 ∨ v25 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v5 := by
      rcases c3251 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u12 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u13 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n1 a
    have u14 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u15 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact a
    have u16 : v9 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u3
    have u17 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n4 a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd n4 a
    have u19 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u16 a
      · exact absurd n4 a
      · exact a
    have u20 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd n4 a
      · exact absurd a n5
    have u21 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
    rcases c428 with a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u12
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd u16 a
    · exact absurd a u14
  have c3253 : v36 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v21 ∨ ¬v22 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n6 a
      · exact a
    have u11 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n6 a
      · exact a
    have u12 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u13 : v13 := by
      rcases c3249 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u8
    have u14 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v7 := by
      rcases c3252 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
    have u22 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u21 a
    have u23 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u21 a
    have u24 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v12 := by
      rcases c3158 with a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u23
      · exact absurd n2 a
      · exact absurd a u22
      · exact a
    have u26 : v11 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u23
      · exact absurd a u5
      · exact absurd a u22
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
    have u27 : v9 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u3
    rcases c59 with a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u13 a
  have c3254 : ¬v22 ∨ v1 ∨ v8 ∨ v14 ∨ v21 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v4 := by
      rcases c3253 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u21 : ¬v2 := by
      rcases c3233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
    have u22 : v13 := by
      rcases c3224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v9 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u3
    have u24 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact a
    rcases c1254 with a|a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u25
    · exact absurd a u24
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u18
    · exact absurd a u5
  have c3255 : v4 ∨ v1 ∨ v8 ∨ v14 ∨ v21 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v22 := by
      rcases c3254 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v13 := by
      rcases c3224 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u11 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u7 a
    have u16 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u16
    have u20 : ¬v28 := by
      rcases c3225 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n5
    have u21 : v23 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u16
    have u22 : v16 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u23 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v11 := by
      rcases c2689 with a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a n0
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : v9 := by
      rcases c286 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u18
    rcases c59 with a|a|a
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd u9 a
  have c3256 : v33 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ ¬v23 ∨ ¬v29 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n7 a
    have u11 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n7 a
    have u12 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n8 a
      · exact a
    have u13 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n8 a
    have u14 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n8 a
    have u15 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n8 a
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n9
    have u18 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v16 := by
      rcases c363 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n7 a
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u3
      · exact a
    have u20 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u22 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v9 := by
      rcases c286 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd n8 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a u21
    have u26 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n2 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd n2 a
    have u28 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u25 a
      · exact absurd n2 a
      · exact a
    have u29 : v5 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u26
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u30 : v4 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u27
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u31 : v3 := by
      rcases c2754 with a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u4
    rcases c26 with a|a|a
    · exact absurd u31 a
    · exact absurd u29 a
    · exact absurd u30 a
  have c3257 : ¬v13 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v22 ∨ ¬v29 ∨ v33 ∨ v35 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n6 a
    have u11 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n6 a
    have u12 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
    have u14 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u14
    have u18 : ¬v23 := by
      rcases c3256 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v28 := by
      rcases c270 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a n8
      · exact a
      · exact absurd n6 a
      · exact absurd a u8
      · exact absurd a u14
    have u20 : ¬v16 := by
      rcases c2925 with a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a n8
    have u21 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : v20 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd u19 a
    have u25 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v11 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    have u29 : v10 := by
      rcases c691 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u18
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u30 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u29 a
    have u31 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u29 a
    have u32 : ¬v2 := by
      rcases c830 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u8
    · exact absurd a u14
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u18
  have c3258 : ¬v28 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c121 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v20 := by
      rcases c1421 with a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd n0 a
    have u5 : ¬v22 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u4 a
    rcases c313 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd a n8
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
  have c3259 : v36 ∨ v1 ∨ v8 ∨ v14 ∨ v21 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u8 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
    have u10 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u15 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : ¬v25 := by
      rcases c1146 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u14
    have u17 : v4 := by
      rcases c3255 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u18 : ¬v22 := by
      rcases c3254 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u19 : ¬v13 := by
      rcases c3257 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u18
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n0
    have u20 : ¬v28 := by
      rcases c3258 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n5
    have u21 : v16 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n4
    have u22 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v20 := by
      rcases c89 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v27 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd a n5
    have u25 : v26 := by
      rcases c3249 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u24
      · exact absurd a u20
    rcases c702 with a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u11
  have c3260 : ¬v23 ∨ v1 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    rcases c3249 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd u4 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c3261 : ¬v5 ∨ v1 ∨ ¬v4 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c420 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd a n4
  have c3262 : v7 ∨ v1 ∨ v5 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v34 ∨ v35 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c3159 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v6 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n9
    rcases c470 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd u6 a
    · exact absurd a u3
    · exact absurd a n6
  have c3263 : v26 ∨ v1 ∨ v8 ∨ v13 ∨ v14 ∨ v21 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u7 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v36 := by
      rcases c3259 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n5
    have u11 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v28 := by
      rcases c3258 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u17 : ¬v5 := by
      rcases c3261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u15
    have u18 : ¬v23 := by
      rcases c3260 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v27 := by
      rcases c3249 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a u16
    have u20 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v22 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v20 := by
      rcases c2476 with a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u19 a
      · exact absurd a u12
      · exact absurd a n6
    have u23 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v12 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u17
      · exact a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
    have u26 : v7 := by
      rcases c3262 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u15
    have u27 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u26 a
    have u28 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u26 a
    have u29 : v10 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u27
      · exact a
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u3
    have u30 : v9 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a n2
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u11
    rcases c55 with a|a|a
    · exact absurd u30 a
    · exact absurd u25 a
    · exact absurd u29 a
  have c3264 : v13 ∨ v1 ∨ v8 ∨ v14 ∨ v21 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v36 := by
      rcases c3259 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u9 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v5 := by
      rcases c3261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a u13
    have u16 : v26 := by
      rcases c3263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v20 := by
      rcases c665 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u19 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u9
    have u20 : v7 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n4
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c34 with a|a|a
    · exact absurd u7 a
    · exact absurd u19 a
    · exact absurd u20 a
  have c3265 : v20 ∨ v1 ∨ ¬v4 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u9 : ¬v5 := by
      rcases c3261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n6
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : v7 := by
      rcases c460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u13 : ¬v3 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u12 a
    have u14 : ¬v6 := by
      rcases c34 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v2 := by
      rcases c22 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v12 := by
      rcases c3158 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u13
      · exact absurd n2 a
      · exact absurd a u9
      · exact a
    have u17 : v11 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u4
      · exact absurd n2 a
    have u18 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n4 a
    have u19 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u17 a
    have u20 : v19 := by
      rcases c421 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u16
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd n4 a
    have u21 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v29 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v35 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c3247 with a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u24
  have c3266 : ¬v4 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c3261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u10 : v20 := by
      rcases c3265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v12 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u7
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u6
    have u13 : ¬v11 := by
      rcases c70 with a|a|a
      · exact absurd u12 a
      · exact absurd n3 a
      · exact a
    have u14 : ¬v10 := by
      rcases c67 with a|a|a
      · exact absurd u12 a
      · exact absurd n3 a
      · exact a
    have u15 : v3 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd n0 a
    have u16 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u17 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u15 a
      · exact absurd n0 a
      · exact a
    rcases c420 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a n11
  have c3269 : ¬v18 ∨ v1 ∨ v2 ∨ v8 ∨ ¬v13 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : v9 := by
      rcases c2700 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v10 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u5
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    rcases c56 with a|a|a
    · exact absurd u8 a
    · exact absurd n4 a
    · exact absurd u9 a
  have c3270 : v35 ∨ v1 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v13 := by
      rcases c3264 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u7 : v36 := by
      rcases c3259 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u9 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
    have u12 : v29 := by
      rcases c3247 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u13 : ¬v30 := by
      rcases c124 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v34 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v31 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v4 := by
      rcases c3266 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
    have u18 : ¬v2 := by
      rcases c3233 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n0
    have u19 : ¬v18 := by
      rcases c3269 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u13
      · exact absurd a u16
    have u20 : v11 := by
      rcases c2691 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u21 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u6 a
    have u22 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u20 a
    have u23 : v16 := by
      rcases c2367 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u8
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u21
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u25 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u22
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u26 : v17 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u25
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u3
      · exact absurd a u4
    rcases c86 with a|a
    · exact absurd u23 a
    · exact absurd u26 a
  have c3271 : v2 ∨ v4 ∨ v9 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c2353 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v3 := by
      rcases c226 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u9 : ¬v16 := by
      rcases c983 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u4
    have u10 : v17 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a n8
    have u11 : v23 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : ¬v15 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v29 := by
      rcases c1062 with a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    rcases c2367 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c3272 : v18 ∨ v1 ∨ v4 ∨ v8 ∨ ¬v13 ∨ v15 ∨ v33 ∨ ¬v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v11 := by
      rcases c2612 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n7 a
      · exact a
    have u9 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n7 a
    have u10 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n7 a
      · exact a
    have u11 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd n7 a
      · exact a
    have u12 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n7 a
      · exact a
    have u13 : ¬v14 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u7 a
    have u14 : ¬v12 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u7 a
    have u15 : ¬v10 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u7 a
    have u16 : ¬v9 := by
      rcases c59 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n4 a
    have u17 : v2 := by
      rcases c3271 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u9
    have u18 : v3 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd u17 a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
    have u19 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
    have u21 : ¬v16 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd n4 a
      · exact absurd a u13
    have u22 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u12
    have u23 : ¬v21 := by
      rcases c2184 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u8
    have u25 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a n3
    have u26 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u25 a
      · exact a
    rcases c420 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u26
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u27
  have c3273 : v4 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
    have u9 : v35 := by
      rcases c3270 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n5
    have u11 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : v18 := by
      rcases c3272 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u9 a
    have u21 : ¬v17 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v19 := by
      rcases c95 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v16 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u13
    have u26 : ¬v23 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
    have u27 : ¬v22 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u11
    have u28 : v36 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a n2
    have u29 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u29
      · exact absurd a u30
    have u32 : ¬v27 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a u31
      · exact a
      · exact absurd a u12
    have u33 : ¬v11 := by
      rcases c612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd n3 a
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    have u34 : v28 := by
      rcases c328 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u32
      · exact a
      · exact absurd a u29
      · exact absurd a u30
      · exact absurd a u12
    have u35 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u34 a
      · exact a
    have u36 : v10 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd a n0
      · exact a
      · exact absurd a u33
      · exact absurd a u25
      · exact absurd a u35
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u5
    have u37 : ¬v12 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u36 a
    have u38 : ¬v9 := by
      rcases c56 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u36 a
    rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u38
    · exact absurd a u33
    · exact absurd a u37
    · exact absurd a u24
    · exact absurd a u21
    · exact absurd u20 a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u35
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3274 : ¬v36 ∨ v1 ∨ v8 ∨ ¬v13 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v4 := by
      rcases c3273 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v35 := by
      rcases c3270 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u4 a
      · exact a
    rcases c3266 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u2
  have c3275 : ¬v13 ∨ v1 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n4
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v36 := by
      rcases c3274 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
    have u12 : v35 := by
      rcases c3259 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u13 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v39 := by
      rcases c2941 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u15
      · exact a
      · exact absurd a n2
    have u19 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u20 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : v16 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u8
      · exact a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u13
    have u26 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v9 := by
      rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u26
    have u30 : ¬v12 := by
      rcases c61 with a|a|a
      · exact absurd n0 a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v11 := by
      rcases c59 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd n0 a
    have u32 : ¬v10 := by
      rcases c56 with a|a|a
      · exact absurd u29 a
      · exact absurd n0 a
      · exact a
    have u33 : v5 := by
      rcases c1435 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u30
      · exact absurd a u27
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u34 : v4 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u31
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u35 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u16
    rcases c26 with a|a|a
    · exact absurd u35 a
    · exact absurd u33 a
    · exact absurd u34 a
  have c3276 : v41 ∨ v1 ∨ v6 ∨ v7 ∨ v8 ∨ v13 ∨ v15 ∨ v29 ∨ v30 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v42 := by
      rcases c420 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u5 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n4
    have u7 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u6 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n9
  have c3277 : ¬v2 ∨ v1 ∨ ¬v4 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v29 ∨ v30 ∨ v34 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v6 := by
      rcases c21 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v7 := by
      rcases c22 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u6 : v41 := by
      rcases c3276 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u6 a
      · exact a
    rcases c424 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n1
  have c3278 : v42 ∨ v15 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v33 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
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
    have u5 : v16 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u5 a
      · exact a
    rcases c384 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd n3 a
  have c3279 : ¬v41 ∨ v1 ∨ v8 ∨ v15 ∨ v21 ∨ v29 ∨ v30 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v36 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n2
    rcases c3278 with a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u9 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u8
  have c3280 : ¬v22 ∨ v1 ∨ ¬v4 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v34 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : v16 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v5 := by
      rcases c3261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n9
    have u16 : ¬v18 := by
      rcases c87 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd n2 a
      · exact absurd u15 a
      · exact a
    have u20 : v12 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u14
      · exact a
      · exact absurd a u19
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a n3
    have u21 : v35 := by
      rcases c3246 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v10 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u24 : ¬v8 := by
      rcases c45 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u23 a
    have u25 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u23 a
    rcases c378 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u25
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u24
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a u16
  have c3281 : v42 ∨ v1 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u8 : ¬v13 := by
      rcases c3275 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
    have u10 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u12 : v35 := by
      rcases c3264 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u13 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v38 := by
      rcases c2547 with a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v41 := by
      rcases c3279 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
    have u19 : ¬v2 := by
      rcases c3277 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u17
    have u20 : ¬v26 := by
      rcases c863 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a n0
    have u21 : ¬v22 := by
      rcases c3280 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n0
    have u22 : ¬v5 := by
      rcases c3261 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u18
      · exact absurd a n0
    have u23 : ¬v23 := by
      rcases c866 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a n0
    have u24 : v28 := by
      rcases c358 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u11
    have u25 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v27 := by
      rcases c122 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v9 := by
      rcases c3193 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n2
      · exact a
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u13
    have u28 : ¬v20 := by
      rcases c3219 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n0
    have u29 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd a u14
    have u30 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v7 := by
      rcases c34 with a|a|a
      · exact absurd u10 a
      · exact absurd u29 a
      · exact a
    have u32 : v12 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u22
      · exact a
      · exact absurd a u31
      · exact absurd u29 a
      · exact absurd a u5
      · exact absurd a u8
    have u33 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u27 a
      · exact absurd u32 a
      · exact a
    have u34 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u32 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd a u30
    · exact absurd a u4
    · exact absurd a u34
    · exact absurd a u22
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd u10 a
  have c3282 : v1 ∨ v8 ∨ v14 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c3184 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u9 : ¬v33 := by
      rcases c3235 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n3
    have u10 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v13 := by
      rcases c3275 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u12 : v42 := by
      rcases c3281 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v36 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v35 := by
      rcases c3259 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
    have u19 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v34 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v29 := by
      rcases c129 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v22 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u21
      · exact a
      · exact absurd a n1
    have u23 : ¬v26 := by
      rcases c105 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u19
    have u28 : v16 := by
      rcases c856 with a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u19
    have u29 : v6 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a u27
      · exact absurd a u13
      · exact absurd a u20
    have u30 : ¬v19 := by
      rcases c88 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v17 := by
      rcases c86 with a|a
      · exact absurd u28 a
      · exact a
    have u32 : v4 := by
      rcases c3224 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u33 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u29 a
    have u34 : ¬v5 := by
      rcases c32 with a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd u32 a
    have u35 : v10 := by
      rcases c2396 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u33
      · exact a
      · exact absurd a u31
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u36 : v12 := by
      rcases c1575 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u34
      · exact a
      · exact absurd a u30
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u37 : ¬v9 := by
      rcases c55 with a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u35 a
    have u38 : v28 := by
      rcases c284 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd u28 a
      · exact absurd a u15
      · exact a
      · exact absurd a u24
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u31
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u37
      · exact absurd a u14
    rcases c107 with a|a
    · exact absurd u22 a
    · exact absurd u38 a
  have c3283 : v20 ∨ v5 ∨ v6 ∨ v7 ∨ v13 ∨ v21 ∨ v32 ∨ v33 ∨ v34 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v19 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n8
    have u8 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u7 a
    rcases c302 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd u3 a
  have c3284 : v13 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v15 ∨ v21 ∨ v29 ∨ v30 ∨ v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u9 : ¬v6 := by
      rcases c11 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v3 := by
      rcases c6 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v5 := by
      rcases c10 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
    have u12 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u14 : v9 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n2
    have u15 : v35 := by
      rcases c574 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u7
    have u16 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v20 := by
      rcases c3283 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n8
      · exact absurd a n10
    have u19 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a n4
    have u22 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u14 a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u21 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd n1 a
  have c3285 : v22 ∨ ¬v1 ∨ v4 ∨ v13 ∨ ¬v20 ∨ v23 ∨ ¬v27 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n6 a
    have u8 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v24 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n4 a
    have u13 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n4 a
    have u14 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u16
    have u18 : v11 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u18 a
    have u20 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u14 a
    have u21 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u22 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u21
    have u23 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a n5
    rcases c1 with a|a|a
    · exact absurd n1 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c3286 : v22 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v21 ∨ v23 ∨ v26 ∨ v29 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u8 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n6 a
    have u9 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n6 a
    have u10 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n6 a
    have u11 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n6 a
    have u12 : ¬v27 := by
      rcases c3285 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u14 : ¬v30 := by
      rcases c1033 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v28 := by
      rcases c3248 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u12
      · exact a
    have u16 : ¬v24 := by
      rcases c116 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v25 := by
      rcases c119 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c2805 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a u13
    have u19 : v11 := by
      rcases c3063 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
      · exact absurd a u17
      · exact absurd a n15
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v31 := by
      rcases c2863 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u21 : v12 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u22 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u19 a
    have u23 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u24 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u20
    have u25 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u14
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n8
    rcases c1 with a|a|a
    · exact absurd u7 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c3287 : v23 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v20 ∨ v21 ∨ v29 ∨ v30 ∨ v33 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u8 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : ¬v27 := by
      rcases c3285 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v26 := by
      rcases c3286 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v32 := by
      rcases c702 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    rcases c2805 with a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c3288 : v4 ∨ ¬v1 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v3 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : v9 := by
      rcases c2297 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u12 : v10 := by
      rcases c428 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u11 a
      · exact absurd a n5
    have u13 : ¬v11 := by
      rcases c54 with a|a|a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v12 := by
      rcases c55 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u12 a
    rcases c3119 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3289 : v30 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ ¬v20 ∨ v21 ∨ v29 ∨ v34 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v19 := by
      rcases c98 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v4 := by
      rcases c3284 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
    have u11 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
    have u12 : ¬v37 := by
      rcases c2249 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u13 : ¬v22 := by
      rcases c887 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u14 : ¬v23 := by
      rcases c906 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n0
    have u15 : ¬v7 := by
      rcases c3288 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u11 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u16 : v33 := by
      rcases c3287 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : v26 := by
      rcases c1474 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v24 := by
      rcases c1079 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
    have u22 : ¬v28 := by
      rcases c3258 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a u18
    have u23 : v11 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a u5
    have u24 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v12 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
      · exact a
      · exact absurd a u7
    have u26 : ¬v10 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u23 a
    have u27 : ¬v9 := by
      rcases c58 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u25 a
    have u28 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u17
    have u29 : v2 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u14
    rcases c1 with a|a|a
    · exact absurd u11 a
    · exact absurd u28 a
    · exact absurd u29 a
  have c3290 : v2 ∨ v4 ∨ v7 ∨ v8 ∨ ¬v12 ∨ v14 ∨ v15 ∨ v21 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
    have u7 : v9 := by
      rcases c602 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n3
    have u8 : ¬v10 := by
      rcases c55 with a|a|a
      · exact absurd u7 a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v11 := by
      rcases c58 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n4 a
    have u10 : ¬v3 := by
      rcases c433 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
    have u11 : ¬v16 := by
      rcases c3068 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u5
  have c3291 : v20 ∨ v2 ∨ v4 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v15 ∨ v21 ∨ v33 ∨ v34 ∨ v36 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v43 := by
      rcases c173 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c3282 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
    have u7 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v12 := by
      rcases c3290 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u9 : ¬v5 := by
      rcases c1122 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v6 := by
      rcases c443 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a n5
    have u11 : v27 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n10
    have u12 : v42 := by
      rcases c589 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u2
      · exact a
    have u13 : ¬v26 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v28 := by
      rcases c122 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v25 := by
      rcases c118 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v19 := by
      rcases c2633 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a n10
    have u17 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : v18 := by
      rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
    rcases c95 with a|a
    · exact absurd u18 a
    · exact absurd u16 a
  have c3292 : v25 ∨ ¬v32 ∨ v38 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c3140
    have u2 : ¬v46 := by
      rcases c185 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c188 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c2805 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u6
  exact ⟨c3258, c3282, c3284, c3289, c3291, c3292⟩
