import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 600-649 of the 2915-step refutation of ccase001: 122 core clauses and 35 earlier-derived ones give 24 more. -/
theorem CCase001_block012
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v3 ∨ ¬v2)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v3 ∨ ¬v5)
    (c8 : ¬v1 ∨ ¬v3 ∨ ¬v6)
    (c9 : ¬v1 ∨ ¬v3 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c16 : ¬v4 ∨ ¬v3 ∨ ¬v2)
    (c18 : ¬v6 ∨ ¬v3 ∨ ¬v2)
    (c19 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c20 : ¬v5 ∨ ¬v4 ∨ ¬v2)
    (c26 : ¬v3 ∨ ¬v5 ∨ ¬v4)
    (c28 : ¬v3 ∨ ¬v4 ∨ ¬v7)
    (c29 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c41 : ¬v8 ∨ ¬v9 ∨ ¬v12)
    (c51 : ¬v8 ∨ ¬v13 ∨ ¬v12)
    (c52 : ¬v8 ∨ ¬v12 ∨ ¬v14)
    (c53 : ¬v8 ∨ ¬v13 ∨ ¬v14)
    (c61 : ¬v13 ∨ ¬v9 ∨ ¬v12)
    (c62 : ¬v14 ∨ ¬v9 ∨ ¬v12)
    (c73 : ¬v12 ∨ ¬v14 ∨ ¬v13)
    (c80 : ¬v15 ∨ ¬v16)
    (c81 : ¬v15 ∨ ¬v17)
    (c82 : ¬v15 ∨ ¬v18)
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
    (c126 : ¬v32 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v33)
    (c129 : ¬v35 ∨ ¬v29)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v33 ∨ ¬v34)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v34 ∨ ¬v35)
    (c147 : ¬v36 ∨ ¬v38)
    (c148 : ¬v39 ∨ ¬v36)
    (c150 : ¬v36 ∨ ¬v41)
    (c151 : ¬v36 ∨ ¬v42)
    (c152 : ¬v38 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c159 : ¬v41 ∨ ¬v38)
    (c160 : ¬v42 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v40 ∨ ¬v41)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : v36 ∨ v41 ∨ v38 ∨ v37 ∨ v39 ∨ v42 ∨ v40)
    (c168 : ¬v44 ∨ ¬v43)
    (c190 : v43 ∨ v36 ∨ v1 ∨ v15 ∨ v29 ∨ v22 ∨ v8)
    (c192 : v10 ∨ v3 ∨ v38 ∨ v45 ∨ v17 ∨ v24 ∨ v31)
    (c193 : v11 ∨ v4 ∨ v32 ∨ v46 ∨ v18 ∨ v25 ∨ v39)
    (c194 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v33 ∨ v19 ∨ v40)
    (c195 : v6 ∨ v48 ∨ v13 ∨ v27 ∨ v20 ∨ v41 ∨ v34)
    (c196 : v49 ∨ v7 ∨ v14 ∨ v21 ∨ v35 ∨ v28 ∨ v42)
    (c206 : v43 ∨ ¬v36 ∨ v49 ∨ v35 ∨ v30 ∨ v29 ∨ v42 ∨ v37)
    (c241 : v10 ∨ v3 ∨ v46 ∨ v11 ∨ v5 ∨ v47 ∨ v45 ∨ ¬v4)
    (c261 : v43 ∨ v49 ∨ v8 ∨ v48 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v14)
    (c265 : v9 ∨ ¬v8 ∨ v16 ∨ v1 ∨ v15 ∨ v2 ∨ v14 ∨ v7)
    (c269 : v6 ∨ ¬v5 ∨ v4 ∨ v11 ∨ v47 ∨ v46 ∨ v48 ∨ v12)
    (c271 : ¬v38 ∨ v45 ∨ v17 ∨ v16 ∨ v30 ∨ v18 ∨ v24 ∨ v31 ∨ v37 ∨ v39 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c275 : v43 ∨ ¬v42 ∨ v35 ∨ v49 ∨ v29 ∨ v48 ∨ v36 ∨ v41)
    (c309 : ¬v38 ∨ v45 ∨ v30 ∨ v31 ∨ v39 ∨ v37 ∨ v32 ∨ v46)
    (c315 : v24 ∨ ¬v17 ∨ v25 ∨ v9 ∨ v11 ∨ v10 ∨ v16 ∨ v18)
    (c340 : ¬v32 ∨ v39 ∨ v33 ∨ v26 ∨ v31 ∨ v40 ∨ v25 ∨ v24)
    (c356 : ¬v34 ∨ v41 ∨ v27 ∨ v33 ∨ v42 ∨ v28 ∨ v35 ∨ v26)
    (c360 : ¬v44 ∨ v37 ∨ v3 ∨ v38 ∨ v1 ∨ v2 ∨ v43 ∨ v45)
    (c362 : ¬v38 ∨ v36 ∨ v45 ∨ v11 ∨ v31 ∨ v9 ∨ v30 ∨ v3 ∨ v29 ∨ v37 ∨ v39 ∨ v43 ∨ v10 ∨ v46)
    (c366 : ¬v38 ∨ v45 ∨ v23 ∨ v24 ∨ v39 ∨ v37 ∨ v31 ∨ v34 ∨ v25 ∨ v40 ∨ v41 ∨ v30 ∨ v46 ∨ v48)
    (c383 : v11 ∨ v4 ∨ ¬v3 ∨ v2 ∨ v9 ∨ v45 ∨ v10 ∨ v46)
    (c387 : v6 ∨ v20 ∨ v13 ∨ v11 ∨ v4 ∨ v19 ∨ ¬v12 ∨ v5)
    (c404 : ¬v18 ∨ v25 ∨ v24 ∨ v10 ∨ v11 ∨ v12 ∨ v17 ∨ v19)
    (c419 : ¬v26 ∨ v21 ∨ v25 ∨ v33 ∨ v48 ∨ v27 ∨ v46 ∨ v32 ∨ v19 ∨ v40 ∨ v35 ∨ v20 ∨ v47 ∨ v28)
    (c463 : v43 ∨ ¬v44 ∨ v37 ∨ v2 ∨ v1 ∨ v36 ∨ v3 ∨ v45)
    (c474 : v11 ∨ v4 ∨ v18 ∨ v13 ∨ v5 ∨ v19 ∨ ¬v12 ∨ v6)
    (c497 : v43 ∨ v36 ∨ v45 ∨ v2 ∨ v37 ∨ v1 ∨ v38 ∨ ¬v44)
    (c508 : ¬v39 ∨ v46 ∨ v32 ∨ v47 ∨ v40 ∨ v45 ∨ v38 ∨ v31)
    (c521 : ¬v44 ∨ v22 ∨ v24 ∨ v45 ∨ v2 ∨ v38 ∨ v23 ∨ v30 ∨ v37 ∨ v1 ∨ v7 ∨ v43 ∨ v42 ∨ v49)
    (c535 : ¬v44 ∨ v37 ∨ v38 ∨ v3 ∨ v2 ∨ v43 ∨ v36 ∨ v45)
    (c538 : v10 ∨ v13 ∨ v5 ∨ v9 ∨ v2 ∨ v46 ∨ v18 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v16 ∨ v19 ∨ v47 ∨ v48)
    (c545 : v21 ∨ v14 ∨ v1 ∨ v7 ∨ v9 ∨ v2 ∨ v15 ∨ ¬v8)
    (c548 : ¬v21 ∨ v28 ∨ v19 ∨ v8 ∨ v25 ∨ v11 ∨ v18 ∨ v15 ∨ v6 ∨ v20 ∨ v1 ∨ v27 ∨ v7 ∨ v14)
    (c553 : ¬v38 ∨ v45 ∨ v30 ∨ v31 ∨ v4 ∨ v36 ∨ v2 ∨ v3 ∨ v37 ∨ v39 ∨ v42 ∨ v35 ∨ v46 ∨ v49)
    (c554 : ¬v44 ∨ v37 ∨ v2 ∨ v31 ∨ v30 ∨ v29 ∨ v41 ∨ v38 ∨ v1 ∨ v6 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c604 : v10 ∨ v11 ∨ v23 ∨ v24 ∨ ¬v17 ∨ v16 ∨ v25 ∨ v18)
    (c608 : ¬v26 ∨ v33 ∨ v18 ∨ v46 ∨ v25 ∨ v19 ∨ v34 ∨ v27 ∨ v40 ∨ v31 ∨ v17 ∨ v24 ∨ v47 ∨ v48)
    (c649 : ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c661 : ¬v12 ∨ ¬v2 ∨ ¬v3 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c709 : v11 ∨ ¬v6 ∨ v10 ∨ v18 ∨ v25 ∨ v32 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c753 : v11 ∨ v10 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c789 : ¬v2 ∨ ¬v9 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c820 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c821 : ¬v9 ∨ v7 ∨ ¬v13 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c863 : ¬v26 ∨ ¬v35 ∨ v41 ∨ v42)
    (c864 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ v30 ∨ v31)
    (c883 : ¬v18 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c887 : ¬v20 ∨ ¬v22 ∨ v29 ∨ v30)
    (c897 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c898 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v36 ∨ v42)
    (c988 : ¬v32 ∨ v25 ∨ v31 ∨ v38 ∨ v39 ∨ v40)
    (c989 : v25 ∨ v4 ∨ v11 ∨ v18 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c1000 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c1017 : v20 ∨ v6 ∨ v13 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v48)
    (c1023 : ¬v26 ∨ v19 ∨ v32 ∨ v33 ∨ v34)
    (c1031 : v34 ∨ v20 ∨ ¬v27 ∨ v30 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48)
    (c1046 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ v30 ∨ v31)
    (c1064 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1069 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1070 : ¬v27 ∨ v4 ∨ v11 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v46)
    (c1071 : v32 ∨ v4 ∨ v11 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v39 ∨ v46)
    (c1079 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1086 : v24 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v27 ∨ v31 ∨ v32 ∨ v34 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1105 : v34 ∨ v40 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1111 : v17 ∨ v3 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v45)
    (c1141 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1194 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1195 : v11 ∨ ¬v2 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1196 : v4 ∨ v11 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c1198 : ¬v36 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v43 ∨ v47 ∨ v49)
    (c1208 : v41 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v34 ∨ v48)
    (c1214 : ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v11 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19) ∧ (v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46) ∧ (v25 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v32 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v4 ∨ v2 ∨ ¬v5 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45) ∧ (v4 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15) ∧ (¬v3 ∨ v2 ∨ ¬v4 ∨ ¬v12 ∨ v15 ∨ v22 ∨ v29 ∨ v36 ∨ v43) ∧ (v39 ∨ v33 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49) ∧ (¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45) ∧ (¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25) ∧ (¬v26 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48) ∧ (v36 ∨ ¬v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v35 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46) ∧ (v19 ∨ v10 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v38 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v48 ∨ v49) ∧ (v38 ∨ ¬v32 ∨ v36 ∨ v37 ∨ v39 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1215 : ¬v32 ∨ ¬v23 ∨ v31 ∨ v33 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c110 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v24 := by
      rcases c108 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v25 := by
      rcases c109 with a|a
      · exact a
      · exact absurd n1 a
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u2
  have c1216 : ¬v38 ∨ ¬v2 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v17 ∨ v22 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n11
      · exact a
      · exact absurd a n14
    have u9 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v3 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
    rcases c362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a u12
    · exact absurd a n9
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n11
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n2
    · exact absurd a n14
  have c1217 : ¬v38 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u8 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a n12
      · exact a
      · exact absurd a n15
    have u9 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v29 := by
      rcases c898 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u4
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v17 := by
      rcases c1216 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u13 : v18 := by
      rcases c1208 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n16
    have u14 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n5 a
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    have u17 : ¬v3 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n17
    rcases c362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a n14
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a u7
    · exact absurd a n13
    · exact absurd a n3
    · exact absurd a n15
  have c1218 : ¬v2 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v20 ∨ v22 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ ¬v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n11 a
      · exact a
    have u5 : v44 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n14
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v23 := by
      rcases c1215 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n12
    have u12 : ¬v27 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : v25 := by
      rcases c366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n13
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u8
      · exact a
      · exact absurd a n12
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n16
    have u14 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c789 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
    have u16 : v3 := by
      rcases c362 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n7
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n14
    have u17 : v21 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd u16 a
      · exact absurd a n4
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n16
      · exact absurd a n17
    have u18 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v17 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v18 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u17 a
    rcases c271 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n11 a
    · exact absurd a n13
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
  have c1219 : ¬v38 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v22 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v44 := by
      rcases c1000 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd n0 a
      · exact absurd a u1
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n11
      · exact a
      · exact absurd a n14
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v23 := by
      rcases c1215 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n12
    have u6 : ¬v24 := by
      rcases c1217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u7 : v20 := by
      rcases c1218 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd n0 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v17 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u7 a
    rcases c271 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n13
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
  have c1220 : v31 ∨ ¬v2 ∨ v4 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v12 := by
      rcases c1195 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v38 := by
      rcases c1214 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n9
      · exact a
      · exact absurd a n12
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : v22 := by
      rcases c1219 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n5
      · exact a
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
    have u8 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd u7 a
      · exact a
    rcases c366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n11
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n14
  have c1221 : ¬v2 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v4 := by
      rcases c1220 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v3 := by
      rcases c16 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v5 := by
      rcases c20 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd u1 a
  have c1222 : v25 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ ¬v38 ∨ v40 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact a
      · exact absurd a n10
    rcases c340 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n1
  have c1223 : v11 ∨ v10 ∨ v17 ∨ v19 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v34 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n7
    have u2 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v32 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n6
      · exact absurd a n5
    have u4 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n10
    have u5 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u6 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u7 : v13 := by
      rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u8 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u6 a
    have u9 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u4 a
      · exact absurd u6 a
      · exact a
    have u11 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u9
      · exact absurd a n20
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n15
    have u12 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u11 a
    have u13 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u7 a
    have u14 : v21 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n22
      · exact absurd a u10
      · exact absurd a u13
      · exact a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n17
    have u15 : ¬v15 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u14 a
    rcases c548 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a u13
  have c1224 : v11 ∨ v10 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v32 := by
      rcases c340 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n5
      · exact absurd a n4
    have u2 : ¬v38 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v4 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    have u7 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n15
    have u8 : ¬v6 := by
      rcases c709 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
    have u11 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact a
    have u13 : v36 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n15
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd u5 a
    have u14 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n17
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n14
    have u15 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v29 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n9
      · exact a
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
    have u18 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : v20 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u20 : ¬v21 := by
      rcases c100 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact absurd a u12
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a u16
    have u23 : ¬v9 := by
      rcases c62 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u14 a
    have u24 : ¬v13 := by
      rcases c73 with a|a|a
      · exact absurd u14 a
      · exact absurd u22 a
      · exact a
    rcases c538 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u24
    · exact absurd a u11
    · exact absurd a u23
    · exact absurd a u4
    · exact absurd a n16
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd u14 a
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a n17
    · exact absurd a n18
  have c1225 : v19 ∨ v10 ∨ v11 ∨ ¬v22 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v28 := by
      rcases c107 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v23 := by
      rcases c102 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v27 := by
      rcases c106 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v25 := by
      rcases c104 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v24 := by
      rcases c103 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
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
    have u7 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u9 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v17 := by
      rcases c820 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
    have u11 : ¬v38 := by
      rcases c1222 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n6
    have u13 : v39 := by
      rcases c1224 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v32 := by
      rcases c508 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n11
      · exact a
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a n6
    have u18 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u14
    have u19 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n8
      · exact a
      · exact absurd a u11
      · exact absurd u7 a
    have u20 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u19 a
      · exact absurd u12 a
      · exact a
    have u23 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd u19 a
      · exact absurd u12 a
      · exact a
    have u24 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u19 a
      · exact absurd u12 a
      · exact a
    have u25 : ¬v20 := by
      rcases c887 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u20
      · exact absurd a n5
    have u26 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd u12 a
      · exact absurd a u6
      · exact a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n11
    have u27 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u23
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
    have u28 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u24
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n13
    rcases c61 with a|a|a
    · exact absurd u28 a
    · exact absurd u26 a
    · exact absurd u27 a
  have c1226 : v13 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v20 := by
      rcases c387 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n2
    have u2 : ¬v18 := by
      rcases c96 with a|a
      · exact a
      · exact absurd u1 a
    rcases c474 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd n5 a
    · exact absurd a n3
  have c1227 : v11 ∨ v2 ∨ v10 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n10 a
      · exact a
    have u2 : v3 := by
      rcases c535 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n7
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
    have u3 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd n10 a
    have u4 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
    have u7 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n12
    have u8 : v12 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n9
    have u9 : v13 := by
      rcases c1226 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n3
    rcases c61 with a|a|a
    · exact absurd u9 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1228 : v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v38 ∨ v39 ∨ v40 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v18 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c883 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1229 : v48 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v22 ∨ v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ ¬v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n12 a
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
      · exact absurd a n19
    have u5 : v25 := by
      rcases c1228 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n17
    have u6 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v29 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n12 a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a u6
      · exact absurd a n18
      · exact absurd a n19
    have u11 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a u1
      · exact absurd a u2
    have u12 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v17 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u15 : v18 := by
      rcases c1196 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n17
    have u16 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u13
      · exact absurd a n14
      · exact absurd a n16
    have u17 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a n1
      · exact a
      · exact absurd a n16
      · exact absurd a n3
      · exact absurd a n17
    have u20 : ¬v14 := by
      rcases c62 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n5 a
    have u21 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n5 a
    have u22 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n19
      · exact a
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u2
    have u23 : v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u21
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n0
    rcases c31 with a|a|a
    · exact absurd u16 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c1230 : v31 ∨ v2 ∨ v4 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v22 ∨ v26 ∨ v30 ∨ v33 ∨ ¬v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : v24 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
    have u5 : v18 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n15
    have u6 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u4
    rcases c91 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1231 : v2 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v22 ∨ ¬v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ ¬v36 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v27 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v28 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd n10 a
      · exact a
    have u7 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n10 a
    have u8 : v4 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a u5
      · exact absurd a u6
    have u11 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n13
    have u12 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u11
    have u15 : v29 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a n18
    have u16 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c94 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v13 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a n17
    have u20 : ¬v8 := by
      rcases c51 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n3 a
    have u21 : ¬v14 := by
      rcases c73 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u19 a
    have u22 : v7 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n18
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u6
    have u23 : v1 := by
      rcases c261 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n18
      · exact absurd a u20
      · exact absurd a n17
      · exact a
      · exact absurd a u12
      · exact absurd u22 a
      · exact absurd a u21
    rcases c12 with a|a|a
    · exact absurd u23 a
    · exact absurd u8 a
    · exact absurd u22 a
  have c1232 : v25 ∨ v10 ∨ v11 ∨ ¬v12 ∨ ¬v17 ∨ v24 ∨ v26 ∨ v32 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v20 := by
      rcases c93 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v23 := by
      rcases c604 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u1
    have u5 : v9 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
    have u6 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n3 a
    have u8 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c753 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1233 : v11 ∨ v10 ∨ ¬v12 ∨ v19 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v22 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v36 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd u3 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v4 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n11
    have u11 : ¬v6 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v24 := by
      rcases c1231 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u13 : ¬v17 := by
      rcases c1232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u14 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n12
    have u15 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u9 a
    have u16 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u14 a
      · exact absurd u9 a
      · exact a
    have u17 : v29 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u18 : v23 := by
      rcases c521 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a n12
      · exact absurd a u1
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n16
    have u19 : ¬v35 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v27 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : v20 := by
      rcases c1223 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n3
      · exact a
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u19
      · exact absurd a n10
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u23 : ¬v15 := by
      rcases c84 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v16 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u22 a
    rcases c864 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
  have c1234 : v33 ∨ v10 ∨ v11 ∨ ¬v12 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u2 : ¬v22 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
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
    have u3 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v25 := by
      rcases c1233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
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
    have u6 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v27 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v36 := by
      rcases c1227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd u3 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v41 := by
      rcases c150 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v42 := by
      rcases c151 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u12
    have u15 : v4 := by
      rcases c1230 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u10 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : v29 := by
      rcases c1198 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u8
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n15
    have u17 : ¬v32 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v17 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : v3 := by
      rcases c1111 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n9
      · exact absurd a n11
    have u20 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u15 a
    have u21 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd u19 a
      · exact absurd u15 a
      · exact a
    rcases c521 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n11
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a n15
  have c1235 : ¬v4 ∨ v2 ∨ ¬v5 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n5 a
      · exact a
    rcases c360 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n6
  have c1236 : v37 ∨ v10 ∨ v11 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v12 := by
      rcases c1234 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n4
      · exact a
      · exact absurd a n12
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n9
    have u6 : ¬v4 := by
      rcases c1235 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd u2 a
      · exact absurd a n10
    have u7 : v6 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a u4
    have u8 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u7 a
    have u9 : ¬v3 := by
      rcases c29 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u7 a
    rcases c360 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a n8
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n10
  have c1237 : v4 ∨ ¬v3 ∨ v11 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v5 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n7
    have u2 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact a
    rcases c269 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a n3
  have c1238 : ¬v38 ∨ ¬v15 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c80 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v18 := by
      rcases c82 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v17 := by
      rcases c81 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v24 := by
      rcases c271 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1046 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n3
  have c1239 : v11 ∨ v4 ∨ v10 ∨ v19 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v22 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
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
      · exact absurd a n14
    have u3 : v38 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact a
      · exact absurd a n11
    have u9 : ¬v15 := by
      rcases c1238 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v3 := by
      rcases c553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u1
      · exact a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n14
    have u14 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n11
    have u15 : v12 := by
      rcases c1237 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v8 := by
      rcases c41 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u17 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u18 : v1 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u16
    have u19 : ¬v5 := by
      rcases c7 with a|a|a
      · exact absurd u18 a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u18 a
      · exact absurd u13 a
      · exact a
    rcases c1226 with a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd u15 a
    · exact absurd a n3
  have c1240 : v14 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v15 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v21 := by
      rcases c545 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u1 a
    rcases c265 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
  have c1241 : ¬v3 ∨ v2 ∨ ¬v4 ∨ ¬v12 ∨ v15 ∨ v22 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact a
    have u4 : ¬v9 := by
      rcases c41 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v14 := by
      rcases c52 with a|a|a
      · exact absurd u3 a
      · exact absurd n3 a
      · exact a
    rcases c1240 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd a n4
  have c1242 : ¬v4 ∨ v2 ∨ v3 ∨ v10 ∨ v11 ∨ v36 ∨ v37 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v5 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd n0 a
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n7 a
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n8
  have c1243 : v19 ∨ v10 ∨ v11 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v4 := by
      rcases c1239 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
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
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v22 := by
      rcases c1225 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
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
    have u3 : ¬v2 := by
      rcases c1221 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
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
      · exact absurd a n12
      · exact absurd a n13
    have u4 : v38 := by
      rcases c1236 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v36 := by
      rcases c147 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v32 := by
      rcases c309 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n7
      · exact a
      · exact absurd a n10
    have u9 : ¬v15 := by
      rcases c1238 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v3 := by
      rcases c1242 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd u5 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v12 := by
      rcases c1241 with a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd u1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u10
    have u14 : ¬v5 := by
      rcases c26 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u1 a
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n8
  have c1244 : v39 ∨ v33 ∨ ¬v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd n2 a
      · exact a
    rcases c1069 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1245 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1244 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c1246 : v27 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v37 ∨ ¬v38 ∨ v40 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v41 := by
      rcases c159 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u1
    rcases c366 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n9
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n10
    · exact absurd a n11
  have c1247 : ¬v3 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c28 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : v42 := by
      rcases c521 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact a
      · exact absurd a n10
    have u6 : v36 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd n8 a
    rcases c151 with a|a
    · exact absurd u6 a
    · exact absurd u5 a
  have c1248 : ¬v5 ∨ ¬v4 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c20 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c1235 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n4 a
    · exact absurd a n5
  have c1249 : ¬v17 ∨ v10 ∨ v11 ∨ v23 ∨ v24 ∨ v25 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    rcases c604 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u1
  have c1250 : ¬v26 ∨ v4 ∨ v11 ∨ v19 ∨ v31 ∨ v33 ∨ v38 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : v18 := by
      rcases c989 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n8
    have u6 : ¬v32 := by
      rcases c988 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
    have u7 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v34 := by
      rcases c1023 with a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n5
      · exact a
    have u10 : v35 := by
      rcases c419 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u4
    rcases c144 with a|a
    · exact absurd u9 a
    · exact absurd u10 a
  have c1251 : v11 ∨ v10 ∨ v19 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a n5
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
      · exact absurd a n11
    have u3 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v26 := by
      rcases c1243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    have u12 : ¬v38 := by
      rcases c1246 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u13 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n4
    have u14 : ¬v4 := by
      rcases c1247 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n11
    have u15 : v39 := by
      rcases c1250 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v34 := by
      rcases c897 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v35 := by
      rcases c863 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
    have u21 : v18 := by
      rcases c608 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v12 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n2
    have u25 : ¬v2 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u13 a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n10
      · exact absurd a n11
    have u26 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u25
      · exact a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n8
    have u27 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u25
      · exact absurd a n6
      · exact a
      · exact absurd a u12
      · exact absurd u2 a
    have u28 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd u24 a
    have u29 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u27 a
      · exact absurd u13 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a n10
    · exact absurd a u28
    · exact absurd a u9
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a u19
  have c1252 : v36 ∨ ¬v33 ∨ v37 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v39 := by
      rcases c1064 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c167 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
  have c1253 : v4 ∨ v10 ∨ v11 ∨ v19 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v27 := by
      rcases c120 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v28 := by
      rcases c121 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : v33 := by
      rcases c1251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v17 := by
      rcases c1249 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u13 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n7
    have u15 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
    have u16 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n11
      · exact a
      · exact absurd a u2
      · exact absurd a u17
    have u20 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v12 := by
      rcases c404 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a n3
    have u23 : ¬v2 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a n14
    have u24 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u14 a
      · exact absurd a u23
      · exact a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n11
    have u25 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n10
      · exact absurd a u23
      · exact absurd a n8
      · exact a
      · exact absurd a n9
      · exact absurd u6 a
    have u26 : ¬v13 := by
      rcases c61 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
    have u27 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u25 a
      · exact absurd u14 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a n13
    · exact absurd a u26
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u8
  have c1254 : v26 ∨ v4 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v18 := by
      rcases c883 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n7
  have c1255 : v35 ∨ v2 ∨ ¬v3 ∨ v4 ∨ v10 ∨ v11 ∨ v20 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v9 := by
      rcases c383 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a n18
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n16 a
      · exact a
    have u3 : v1 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n17
      · exact absurd a n1
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd n16 a
    have u4 : ¬v7 := by
      rcases c9 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c8 with a|a|a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c821 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n20
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n19
    · exact absurd a u6
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n14
    · exact absurd a n10
  have c1256 : v49 ∨ v4 ∨ v10 ∨ v11 ∨ v19 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v33 := by
      rcases c1251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u2 : v44 := by
      rcases c1194 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n0
    have u8 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n8
    have u10 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u11 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v41 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c1070 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n11
    have u14 : ¬v26 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
    have u15 : v25 := by
      rcases c1254 with a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a n11
    have u16 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v17 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u20 : v18 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u19
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n11
    have u21 : v3 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n7
    have u22 : ¬v15 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v20 := by
      rcases c96 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v21 := by
      rcases c97 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v2 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n0
    have u26 : ¬v6 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u25 a
    have u27 : ¬v1 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u25 a
    have u28 : ¬v7 := by
      rcases c19 with a|a|a
      · exact absurd u25 a
      · exact absurd u21 a
      · exact a
    have u29 : v13 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n13
      · exact a
      · exact absurd a u13
      · exact absurd a u23
      · exact absurd a u12
      · exact absurd a u3
    have u30 : v8 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u17
      · exact a
    have u31 : v14 := by
      rcases c196 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u28
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u7
    rcases c53 with a|a|a
    · exact absurd u30 a
    · exact absurd u29 a
    · exact absurd u31 a
  have c1257 : v36 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c1248 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u2 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v3 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd n1 a
    have u4 : ¬v2 := by
      rcases c16 with a|a|a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    rcases c497 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd n6 a
  have c1258 : v11 ∨ v10 ∨ v19 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v33 := by
      rcases c1251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
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
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v42 := by
      rcases c1141 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v43 := by
      rcases c168 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v36 := by
      rcases c206 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n5
    have u9 : ¬v4 := by
      rcases c1257 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v40 := by
      rcases c1252 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v24 := by
      rcases c1256 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a u9
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
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v25 := by
      rcases c113 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v17 := by
      rcases c1079 with a|a|a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
    have u15 : v18 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a n8
      · exact a
      · exact absurd a u13
      · exact absurd a u12
    rcases c91 with a|a
    · exact absurd u14 a
    · exact absurd u15 a
  have c1259 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    rcases c309 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
  have c1260 : v19 ∨ v10 ∨ v11 ∨ v30 ∨ v31 ∨ v37 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c1251 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v38 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1258 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1261 : ¬v38 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v32 := by
      rcases c1259 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v16 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v18 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v17 := by
      rcases c92 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v24 := by
      rcases c271 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u9 a
    rcases c1046 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n3
  have c1262 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v23 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1046 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
  have c1263 : ¬v42 ∨ v29 ∨ v35 ∨ v36 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n0 a
    rcases c275 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
  have c1264 : v38 ∨ ¬v32 ∨ v36 ∨ v37 ∨ v39 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v40 := by
      rcases c1245 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v42 := by
      rcases c1263 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v41 := by
      rcases c1105 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u5
      · exact a
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c167 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u5
  exact ⟨c1223, c1226, c1228, c1232, c1235, c1237, c1240, c1241, c1244, c1245, c1247, c1248, c1249, c1250, c1252, c1254, c1255, c1257, c1259, c1260, c1261, c1262, c1263, c1264⟩
