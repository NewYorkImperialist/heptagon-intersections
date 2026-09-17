import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 550-599 of the 2189-step refutation of ccase000: 150 core clauses and 69 earlier-derived ones give 22 more. -/
theorem CCase000_block011
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v1 ∨ ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c21 : ¬v4 ∨ ¬v2 ∨ ¬v3 ∨ ¬v5)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c60 : ¬v14 ∨ ¬v13)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c71 : ¬v21 ∨ ¬v16)
    (c73 : ¬v17 ∨ ¬v19)
    (c74 : ¬v17 ∨ ¬v20)
    (c75 : ¬v21 ∨ ¬v17)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c79 : ¬v19 ∨ ¬v20)
    (c80 : ¬v21 ∨ ¬v19)
    (c81 : ¬v20 ∨ ¬v21)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
    (c98 : ¬v27 ∨ ¬v25)
    (c99 : ¬v28 ∨ ¬v25)
    (c100 : ¬v26 ∨ ¬v27)
    (c101 : ¬v28 ∨ ¬v26)
    (c102 : ¬v27 ∨ ¬v28)
    (c104 : ¬v30 ∨ ¬v29)
    (c105 : ¬v31 ∨ ¬v29)
    (c106 : ¬v32 ∨ ¬v29)
    (c107 : ¬v29 ∨ ¬v33)
    (c108 : ¬v29 ∨ ¬v34)
    (c109 : ¬v29 ∨ ¬v35)
    (c110 : ¬v30 ∨ ¬v31)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c120 : ¬v32 ∨ ¬v34)
    (c121 : ¬v32 ∨ ¬v35)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c129 : ¬v40 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c131 : ¬v42 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c145 : ¬v42 ∨ ¬v40)
    (c146 : ¬v41 ∨ ¬v42)
    (c148 : ¬v44 ∨ ¬v43)
    (c149 : ¬v45 ∨ ¬v43)
    (c150 : ¬v46 ∨ ¬v43)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c172 : v10 ∨ v3 ∨ v24 ∨ v17 ∨ v31 ∨ v38 ∨ v45)
    (c174 : v12 ∨ v5 ∨ v40 ∨ v19 ∨ v26 ∨ v47 ∨ v33)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c213 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v40 ∨ v48 ∨ v49)
    (c217 : v28 ∨ ¬v20 ∨ v27 ∨ v11 ∨ v21 ∨ v12 ∨ v19 ∨ v13 ∨ v18 ∨ v25 ∨ v34 ∨ v40 ∨ v41 ∨ v42)
    (c224 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v47 ∨ v40 ∨ v48)
    (c227 : v43 ∨ v21 ∨ v3 ∨ v9 ∨ v7 ∨ v13 ∨ v8 ∨ v6 ∨ v17 ∨ v10 ∨ ¬v14 ∨ v15 ∨ v48 ∨ v49)
    (c243 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v35 ∨ v49 ∨ v42)
    (c251 : v43 ∨ ¬v42 ∨ v49 ∨ v48 ∨ v35 ∨ v29 ∨ v36 ∨ v41)
    (c261 : v29 ∨ ¬v15 ∨ v26 ∨ v16 ∨ v35 ∨ v30 ∨ v22 ∨ v12 ∨ v8 ∨ v14 ∨ v21 ∨ v20 ∨ v19 ∨ v23)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c268 : v1 ∨ v6 ∨ v13 ∨ v20 ∨ v21 ∨ v8 ∨ v7 ∨ ¬v14)
    (c285 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v45 ∨ v30 ∨ v32 ∨ v46)
    (c286 : ¬v34 ∨ v41 ∨ v27 ∨ v35 ∨ v40 ∨ v26 ∨ v28 ∨ v33)
    (c290 : v21 ∨ ¬v15 ∨ v9 ∨ v16 ∨ v14 ∨ v22 ∨ v28 ∨ v8)
    (c299 : ¬v35 ∨ v29 ∨ v42 ∨ v22 ∨ v27 ∨ v41 ∨ v28 ∨ v34)
    (c312 : v36 ∨ ¬v35 ∨ v42 ∨ v41 ∨ v22 ∨ v34 ∨ v29 ∨ v28)
    (c319 : v36 ∨ ¬v29 ∨ v22 ∨ v28 ∨ v23 ∨ v35 ∨ v30 ∨ v42)
    (c334 : v36 ∨ v29 ∨ v28 ∨ v27 ∨ v41 ∨ v42 ∨ v34 ∨ ¬v35)
    (c341 : v43 ∨ ¬v42 ∨ v48 ∨ v35 ∨ v36 ∨ v41 ∨ v49 ∨ v34)
    (c349 : v43 ∨ ¬v35 ∨ v42 ∨ v48 ∨ v24 ∨ v22 ∨ v31 ∨ v30 ∨ v41 ∨ v28 ∨ v29 ∨ v34 ∨ v38 ∨ v49)
    (c353 : ¬v41 ∨ v34 ∨ v40 ∨ v48 ∨ v47 ∨ v49 ∨ v42 ∨ v33)
    (c393 : ¬v8 ∨ v10 ∨ v3 ∨ v16 ∨ v9 ∨ v1 ∨ v7 ∨ v15 ∨ v14 ∨ v17 ∨ v36 ∨ v37 ∨ v42 ∨ v43)
    (c398 : v2 ∨ v6 ∨ v5 ∨ v47 ∨ v9 ∨ ¬v13 ∨ v21 ∨ v14 ∨ v8 ∨ v20 ∨ v12 ∨ v16 ∨ v48 ∨ v49)
    (c418 : v36 ∨ ¬v30 ∨ v22 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v29)
    (c421 : v29 ∨ ¬v27 ∨ v21 ∨ v15 ∨ v22 ∨ v26 ∨ v34 ∨ v28 ∨ v33 ∨ v20 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c424 : ¬v34 ∨ v42 ∨ v27 ∨ v35 ∨ v40 ∨ v41 ∨ v26 ∨ v33)
    (c425 : v3 ∨ v7 ∨ v20 ∨ v47 ∨ ¬v13 ∨ v17 ∨ v11 ∨ v14 ∨ v6 ∨ v10 ∨ v12 ∨ v19 ∨ v48 ∨ v49)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c432 : v29 ∨ ¬v28 ∨ v35 ∨ v22 ∨ v34 ∨ v15 ∨ v27 ∨ v21)
    (c435 : ¬v31 ∨ v30 ∨ v38 ∨ v39 ∨ v37 ∨ v32 ∨ v24 ∨ v23)
    (c440 : v36 ∨ ¬v32 ∨ v46 ∨ v39 ∨ v24 ∨ v29 ∨ v40 ∨ v33 ∨ v22 ∨ v30 ∨ v31 ∨ v45 ∨ v25 ∨ v47)
    (c448 : ¬v22 ∨ v29 ∨ v30 ∨ v23 ∨ v28 ∨ v35 ∨ v16 ∨ v15)
    (c449 : ¬v44 ∨ v43 ∨ v2 ∨ v1 ∨ v37 ∨ v36 ∨ v38 ∨ v45)
    (c470 : ¬v26 ∨ v33 ∨ v27 ∨ v19 ∨ v32 ∨ v20 ∨ v13 ∨ v24 ∨ v23 ∨ v25 ∨ v30 ∨ v12 ∨ v11 ∨ v16)
    (c482 : ¬v44 ∨ v43 ∨ v3 ∨ v2 ∨ v36 ∨ v37 ∨ v38 ∨ v45)
    (c490 : ¬v34 ∨ v41 ∨ v33 ∨ v28 ∨ v35 ∨ v42 ∨ v40 ∨ v27)
    (c519 : v41 ∨ ¬v33 ∨ v32 ∨ v40 ∨ v46 ∨ v26 ∨ v37 ∨ v30 ∨ v23 ∨ v34 ∨ v25 ∨ v31 ∨ v47 ∨ v48)
    (c529 : v43 ∨ ¬v1 ∨ v9 ∨ v7 ∨ v2 ∨ v14 ∨ v49 ∨ v8)
    (c553 : v29 ∨ v28 ∨ v5 ∨ v7 ∨ v8 ∨ v19 ∨ v6 ∨ ¬v14 ∨ v13 ∨ v12 ∨ v15 ∨ v21 ∨ v34 ∨ v35)
    (c555 : v33 ∨ ¬v26 ∨ v25 ∨ v31 ∨ v40 ∨ v27 ∨ v34 ∨ v24 ∨ v19 ∨ v18 ∨ v17 ∨ v46 ∨ v47 ∨ v48)
    (c556 : v48 ∨ v12 ∨ ¬v6 ∨ v5 ∨ v13 ∨ v7 ∨ v49 ∨ v47)
    (c599 : v1 ∨ v7 ∨ v13 ∨ ¬v14 ∨ v15 ∨ v20 ∨ v21)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c642 : ¬v6 ∨ ¬v2 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c669 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c671 : v6 ∨ ¬v10 ∨ v11 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c675 : v12 ∨ v1 ∨ v6 ∨ v7 ∨ v11 ∨ v14 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c688 : v24 ∨ v11 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c714 : ¬v10 ∨ v6 ∨ v22 ∨ v26 ∨ v27 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c762 : ¬v10 ∨ v22 ∨ v28 ∨ ¬v35 ∨ v40 ∨ v41 ∨ v42)
    (c768 : v15 ∨ v1 ∨ v5 ∨ v6 ∨ v11 ∨ ¬v12 ∨ v13 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27)
    (c771 : ¬v16 ∨ v8 ∨ v9 ∨ v13 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v31)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c807 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v23 ∨ v24)
    (c808 : v24 ∨ v3 ∨ ¬v12 ∨ v23 ∨ v31 ∨ v38 ∨ v45)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c838 : v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c853 : ¬v13 ∨ v5 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v47)
    (c855 : ¬v32 ∨ v24 ∨ v25 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c906 : v10 ∨ v3 ∨ v9 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45)
    (c924 : ¬v17 ∨ v5 ∨ v12 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47)
    (c985 : ¬v18 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c988 : v42 ∨ v24 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c992 : v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c993 : v6 ∨ ¬v3 ∨ ¬v4 ∨ ¬v12 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c1000 : ¬v35 ∨ ¬v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1013 : ¬v24 ∨ v17 ∨ v30 ∨ v31 ∨ v32)
    (c1019 : v24 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1027 : ¬v4 ∨ ¬v2 ∨ ¬v7 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1046 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ v33 ∨ v40 ∨ v47)
    (c1047 : v6 ∨ v13 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1050 : ¬v19 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1052 : ¬v32 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1069 : v26 ∨ v27 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1070 : ¬v3 ∨ ¬v2 ∨ ¬v5 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1073 : v7 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v12 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c1074 : v5 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1079 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1092 : v49 ∨ v7 ∨ ¬v11 ∨ v22 ∨ v28 ∨ v42 ∨ v47 ∨ v48)
    (c1097 : v31 ∨ v3 ∨ ¬v11 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v45)
    (c1103 : v49 ∨ ¬v2 ∨ ¬v4 ∨ ¬v11 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1104 : ¬v4 ∨ ¬v2 ∨ ¬v11 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1105 : ¬v20 ∨ ¬v28 ∨ v30 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1106 : v19 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ ¬v13 ∨ v20)
    (c1107 : v7 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v11 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v42 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1110 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v26 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1111 : ¬v20 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v13 ∨ v16 ∨ v23 ∨ v27 ∨ v28)
    (c1112 : v13 ∨ v5 ∨ v6 ∨ v7 ∨ v9 ∨ v12 ∨ v16 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    : (¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v28 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v27 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45) ∧ (¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (v14 ∨ v1 ∨ v3 ∨ v7 ∨ v13 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28) ∧ (¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42) ∧ (v41 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v4 ∨ ¬v2 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49) ∧ (v26 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49) ∧ (v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v2 ∨ v5 ∨ v6 ∨ v12 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v42 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v12 ∨ ¬v4 ∨ v7 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v41 ∨ ¬v4 ∨ v5 ∨ v12 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1113 : v22 ∨ ¬v2 ∨ ¬v4 ∨ v23 ∨ v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n13
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
    have u7 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n18
    have u8 : v26 := by
      rcases c1110 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
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
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u9
    have u13 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
    have u14 : v3 := by
      rcases c906 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n14
    have u15 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd n2 a
    have u17 : ¬v12 := by
      rcases c993 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u14 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n18
    have u18 : v13 := by
      rcases c1112 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
    have u19 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n5
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u16
    rcases c780 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a n0
    · exact absurd a n3
  have c1114 : v29 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c1107 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
    have u8 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n17
    have u9 : v23 := by
      rcases c1113 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n0
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
    have u10 : ¬v25 := by
      rcases c89 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v18 := by
      rcases c985 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n16
    have u16 : ¬v17 := by
      rcases c669 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u10
    have u17 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v16 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u16
      · exact a
    have u19 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n8
      · exact a
      · exact absurd a n17
    rcases c71 with a|a
    · exact absurd u19 a
    · exact absurd u18 a
  have c1115 : v35 ∨ ¬v2 ∨ ¬v4 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ ¬v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v36 := by
      rcases c129 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v41 := by
      rcases c144 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v38 := by
      rcases c138 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : v22 := by
      rcases c1114 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n13
    have u14 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u9
    have u19 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a n14
    have u20 : v15 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u18
      · exact a
    rcases c66 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1116 : ¬v4 ∨ ¬v2 ∨ v6 ∨ v7 ∨ v11 ∨ ¬v13 ∨ v28 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n11
    have u5 : ¬v20 := by
      rcases c81 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v19 := by
      rcases c80 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v5 := by
      rcases c1106 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd n5 a
      · exact absurd a u5
    have u9 : v3 := by
      rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
    rcases c21 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u9 a
    · exact absurd u8 a
  have c1117 : ¬v27 ∨ ¬v33 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n1 a
    have u8 : v39 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v37 := by
      rcases c519 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    rcases c133 with a|a
    · exact absurd u8 a
    · exact absurd u9 a
  have c1118 : v28 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v27 ∨ v34 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
    have u3 : v20 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n12
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a u2
    have u4 : v26 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n12
    have u5 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v12 := by
      rcases c217 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u7
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a n10
    have u10 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n13
    rcases c59 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1119 : v46 ∨ ¬v2 ∨ ¬v4 ∨ ¬v33 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c112 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u10 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u11 : ¬v40 := by
      rcases c1115 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v41 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u7
    have u13 : ¬v27 := by
      rcases c1117 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u14 : v28 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u14 a
      · exact a
    rcases c431 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a u11
    · exact absurd a u12
  have c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v30 := by
      rcases c1105 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u3 a
      · exact a
    rcases c432 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a u1
  have c1121 : v42 ∨ ¬v2 ∨ ¬v4 ∨ ¬v28 ∨ v34 ∨ v35 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a n6
    have u15 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v5 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v1 := by
      rcases c675 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c5 with a|a|a|a
    · exact absurd u18 a
    · exact absurd n1 a
    · exact absurd u17 a
    · exact absurd n2 a
  have c1122 : v10 ∨ ¬v2 ∨ ¬v4 ∨ v20 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v5 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u13 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    rcases c425 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n13
    · exact absurd u6 a
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u13
    · exact absurd a n14
    · exact absurd a n15
  have c1123 : v15 ∨ ¬v2 ∨ ¬v4 ∨ v7 ∨ v10 ∨ v11 ∨ ¬v13 ∨ v17 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v31 ∨ v33 ∨ v40 ∨ v43 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v12 := by
      rcases c58 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : v5 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd n2 a
    have u5 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u6 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a u4
    have u7 : v38 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n13
      · exact a
      · exact absurd a n17
    rcases c127 with a|a
    · exact absurd u7 a
    · exact absurd u6 a
  have c1124 : ¬v2 ∨ ¬v4 ∨ ¬v28 ∨ v34 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v35 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v44 := by
      rcases c992 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u1 a
    have u14 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u15 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u16 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u17 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v10 := by
      rcases c714 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u19 : v20 := by
      rcases c1122 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v17 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v21 := by
      rcases c81 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v13 := by
      rcases c1123 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u9
      · exact a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : v14 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u25 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a n8
    have u29 : v3 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u21
      · exact a
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd u24 a
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd a n10
    rcases c21 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u29 a
    · exact absurd u28 a
  have c1125 : ¬v4 ∨ ¬v2 ∨ ¬v28 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v42 := by
      rcases c1124 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v39 := by
      rcases c143 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v18 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v10 := by
      rcases c671 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : v20 := by
      rcases c1122 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n5
    have u19 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v5 := by
      rcases c1070 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact absurd n0 a
    have u23 : v12 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u24 : ¬v13 := by
      rcases c853 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    rcases c768 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u9
    · exact absurd a u1
    · exact absurd u23 a
    · exact absurd a u24
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
  have c1126 : ¬v42 ∨ v29 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    rcases c251 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
  have c1127 : v48 ∨ ¬v2 ∨ ¬v4 ∨ ¬v28 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1069 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v34 := by
      rcases c1125 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
    have u8 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v42 := by
      rcases c424 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    rcases c1126 with a|a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n8
  have c1128 : ¬v12 ∨ ¬v2 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v29 ∨ v31 ∨ v36 ∨ v38 ∨ v43 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v3 := by
      rcases c808 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
    have u7 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd n2 a
    have u10 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
    rcases c170 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u9
  have c1129 : v45 ∨ ¬v2 ∨ ¬v4 ∨ ¬v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v41 := by
      rcases c1127 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u12 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : v34 := by
      rcases c213 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a u7
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u8
    have u19 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v29 := by
      rcases c108 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v12 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n0
    have u23 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
    have u24 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact absurd n2 a
    have u25 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u23 a
    have u26 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n0
    have u27 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u21
      · exact a
      · exact absurd a u30
      · exact absurd a u1
      · exact absurd a u24
    have u32 : ¬v16 := by
      rcases c771 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
    have u33 : ¬v20 := by
      rcases c65 with a|a
      · exact absurd u31 a
      · exact a
    have u34 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u31 a
      · exact a
    have u35 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd u31 a
      · exact a
    rcases c261 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u31 a
    · exact absurd a u6
    · exact absurd a u32
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u22
    · exact absurd a u30
    · exact absurd a u27
    · exact absurd a u35
    · exact absurd a u33
    · exact absurd a u34
    · exact absurd a u3
  have c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    rcases c877 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1131 : v14 ∨ v1 ∨ v3 ∨ v7 ∨ v13 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n11
    have u2 : v8 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u3 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
    have u4 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v16 := by
      rcases c71 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u2 a
    rcases c393 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1132 : v33 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v40 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v32 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n10 a
    have u3 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd n10 a
      · exact a
    have u4 : ¬v35 := by
      rcases c124 with a|a
      · exact absurd n10 a
      · exact a
    have u5 : v41 := by
      rcases c286 with a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
    have u6 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
    have u7 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v37 := by
      rcases c135 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd n2 a
    have u12 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n16
    have u15 : v14 := by
      rcases c1131 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n16
    have u16 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v9 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v21 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u16
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd u15 a
    have u20 : v24 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n13
    have u21 : ¬v17 := by
      rcases c75 with a|a
      · exact absurd u19 a
      · exact a
    rcases c1013 with a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
  have c1133 : v10 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v40 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v35 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v41 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n14
      · exact absurd a n11
    have u3 : v36 := by
      rcases c334 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n12
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v22 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n14
      · exact a
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n12
    have u7 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
    have u9 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    rcases c809 with a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n11
    · exact absurd a u7
    · exact absurd a n15
  have c1134 : v29 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v10 ∨ v11 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v34 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : v42 := by
      rcases c1133 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n12
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n16
      · exact absurd a n17
    have u9 : v13 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n16
    have u10 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u11 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u10 a
      · exact absurd n2 a
    have u14 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u10 a
    have u15 : v24 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a u5
      · exact absurd a n14
    have u16 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v17 := by
      rcases c1013 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
    have u18 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u13
    rcases c62 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c1135 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v42 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    rcases c353 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n1
  have c1136 : v33 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v40 ∨ v43 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v34 := by
      rcases c1132 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v10 := by
      rcases c1134 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u2 a
      · exact a
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n15
  have c1137 : v42 ∨ v7 ∨ ¬v10 ∨ v22 ∨ v28 ∨ v40 ∨ v41 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v35 := by
      rcases c1130 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n7
    rcases c762 with a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
  have c1138 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v21 := by
      rcases c66 with a|a
      · exact absurd n0 a
      · exact a
    rcases c290 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n1
  have c1139 : ¬v10 ∨ v1 ∨ v7 ∨ v22 ∨ v28 ∨ v29 ∨ v40 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v15 := by
      rcases c1138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n1
    have u6 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v42 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u5 a
    rcases c1137 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n8
  have c1140 : v17 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ ¬v36 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n6
    have u5 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v30 := by
      rcases c110 with a|a
      · exact a
      · exact absurd u4 a
    rcases c435 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a n3
  have c1141 : ¬v31 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
    have u8 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n13
    have u9 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n13
    have u10 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a u3
      · exact absurd a u7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
    have u12 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n13
    have u13 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v19 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v5 := by
      rcases c553 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
    have u19 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u20 : v43 := by
      rcases c227 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a n12
      · exact absurd a n13
    have u21 : ¬v46 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v45 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v44 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u20 a
    rcases c1079 with a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1142 : v45 ∨ v1 ∨ ¬v2 ∨ v3 ∨ ¬v4 ∨ v17 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v28 := by
      rcases c1129 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n4 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd n7 a
      · exact a
    have u7 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v10 := by
      rcases c1137 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u10
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n14
    have u12 : ¬v36 := by
      rcases c1140 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u5
      · exact a
      · exact absurd a n0
    have u13 : ¬v31 := by
      rcases c1141 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v38 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a n0
    have u15 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v30 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n8
    have u18 : ¬v32 := by
      rcases c440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n11
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n12
    rcases c285 with a|a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n11
  have c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n7
    rcases c172 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
  have c1144 : v45 ∨ ¬v2 ∨ ¬v4 ∨ v12 ∨ v26 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v28 := by
      rcases c1129 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v27 := by
      rcases c1136 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v5 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v1 := by
      rcases c5 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd n2 a
    have u16 : ¬v3 := by
      rcases c21 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v10 := by
      rcases c1139 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n9
    have u18 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u12
    have u19 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u18
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
    have u20 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v41 := by
      rcases c1142 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd n2 a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd u9 a
      · exact absurd a n5
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : v34 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u20
      · exact absurd a u1
    have u24 : v31 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u19
      · exact a
      · exact absurd a u22
      · exact absurd a n0
    rcases c117 with a|a
    · exact absurd u24 a
    · exact absurd u23 a
  have c1145 : v42 ∨ v6 ∨ v7 ∨ ¬v12 ∨ v26 ∨ v28 ∨ v29 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : v35 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a n9
    have u5 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v41 := by
      rcases c1000 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u9 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
    have u10 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : v36 := by
      rcases c312 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n5
    have u13 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : v43 := by
      rcases c349 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n9
    have u15 : ¬v46 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v45 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v44 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u14 a
    rcases c1079 with a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1146 : v45 ∨ ¬v2 ∨ ¬v4 ∨ v26 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v28 := by
      rcases c1129 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v12 := by
      rcases c1144 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v42 := by
      rcases c1145 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v27 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a n7
    have u17 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n4
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n0
  have c1147 : v29 ∨ ¬v2 ∨ ¬v4 ∨ ¬v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v11 := by
      rcases c1104 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u12 : v26 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v13 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u12 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u17
    have u24 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u17
    have u25 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n4
    have u26 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u15
      · exact a
    rcases c1 with a|a|a|a
    · exact absurd u26 a
    · exact absurd n1 a
    · exact absurd u25 a
    · exact absurd n2 a
  have c1148 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    rcases c299 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u1
  have c1149 : v41 ∨ ¬v2 ∨ ¬v4 ∨ v6 ∨ v7 ∨ v11 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v35 := by
      rcases c1148 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n12
    have u2 : v34 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    rcases c490 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a u1
    · exact absurd a n12
    · exact absurd a n11
    · exact absurd a n7
  have c1150 : ¬v4 ∨ ¬v2 ∨ v29 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v42 := by
      rcases c1147 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c1119 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v11 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v28 := by
      rcases c1129 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v26 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v41 := by
      rcases c1149 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v38 := by
      rcases c139 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v35 := by
      rcases c1000 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v34 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
    have u22 : ¬v32 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u5
    have u23 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n7
    have u24 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n7
    have u25 : ¬v31 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v30 := by
      rcases c113 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u12
    have u28 : ¬v12 := by
      rcases c1128 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a n3
    have u29 : v3 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n3
    have u30 : ¬v16 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u12
    have u31 : ¬v1 := by
      rcases c1 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u29 a
      · exact absurd n0 a
    have u32 : ¬v5 := by
      rcases c21 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v13 := by
      rcases c1116 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u6
      · exact a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u34 : ¬v20 := by
      rcases c1111 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u28
      · exact absurd a u33
      · exact absurd a u30
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u9
    have u35 : v19 := by
      rcases c470 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u14
      · exact a
      · exact absurd a u22
      · exact absurd a u34
      · exact absurd a u33
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u6
      · exact absurd a u30
    have u36 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u35 a
    have u37 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u35 a
    have u38 : ¬v14 := by
      rcases c599 with a|a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd a u8
      · exact absurd a u33
      · exact a
      · exact absurd a u36
      · exact absurd a u34
      · exact absurd a u37
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u38
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u37
    · exact absurd a n7
  have c1151 : v47 ∨ ¬v2 ∨ ¬v4 ∨ v42 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v29 := by
      rcases c1150 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u9 : ¬v41 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n6
    have u10 : ¬v28 := by
      rcases c1121 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u11 : ¬v11 := by
      rcases c1103 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
    have u12 : ¬v6 := by
      rcases c642 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u13 : ¬v7 := by
      rcases c1027 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    have u14 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
    have u15 : v27 := by
      rcases c1118 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
    have u24 : ¬v17 := by
      rcases c806 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a u17
    have u25 : v36 := by
      rcases c319 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a n3
    have u26 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a u22
      · exact a
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u6
    have u27 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a n7
    have u28 : ¬v39 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : ¬v12 := by
      rcases c59 with a|a
      · exact absurd u27 a
      · exact a
    have u32 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u27 a
      · exact a
    have u33 : v3 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u29
      · exact absurd a n4
    have u34 : v5 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u31
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a n0
    rcases c1070 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u33 a
    · exact absurd n1 a
    · exact absurd u34 a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u4
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
  have c1152 : ¬v2 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v29 := by
      rcases c1150 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v41 := by
      rcases c1135 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v42 := by
      rcases c1151 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd u9 a
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a u5
  have c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n1 a
      · exact a
    rcases c341 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u1
  have c1154 : v26 ∨ v5 ∨ v10 ∨ v12 ∨ v13 ∨ v24 ∨ v25 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n7
    rcases c1050 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u1
  have c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v19 := by
      rcases c174 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
    have u2 : v27 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u2 a
      · exact a
    rcases c421 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd u2 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1157 : ¬v13 ∨ v2 ∨ v5 ∨ v6 ∨ v12 ∨ v16 ∨ v20 ∨ v21 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n0 a
    rcases c398 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n10
  have c1158 : ¬v42 ∨ ¬v4 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v41 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c145 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v38 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v30 := by
      rcases c1025 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v31 := by
      rcases c1026 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v33 := by
      rcases c1033 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v32 := by
      rcases c1052 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v44 := by
      rcases c1079 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v3 := by
      rcases c482 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u12
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
    have u14 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v1 := by
      rcases c449 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n2
    have u16 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
    have u17 : v35 := by
      rcases c1126 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u14
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v6 := by
      rcases c12 with a|a|a|a
      · exact absurd u15 a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u19 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a n6
    have u22 : v26 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : v13 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u26 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v9 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v14 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u25 a
    rcases c529 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u15 a
    · exact absurd a u27
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u28
    · exact absurd a n6
    · exact absurd a u26
  have c1159 : v12 ∨ ¬v4 ∨ v7 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v35 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n7
    have u8 : ¬v11 := by
      rcases c1092 with a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v10 := by
      rcases c1137 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n14
    have u10 : ¬v9 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n14
    have u11 : ¬v17 := by
      rcases c807 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u2
    have u12 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    have u13 : v19 := by
      rcases c555 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n14
    have u18 : ¬v13 := by
      rcases c60 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v1 := by
      rcases c599 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd u17 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
    have u20 : v6 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n9
    have u21 : v5 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd u20 a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a n14
      · exact absurd a n12
    rcases c17 with a|a|a|a
    · exact absurd u19 a
    · exact absurd u21 a
    · exact absurd u20 a
    · exact absurd n1 a
  have c1160 : v16 ∨ v2 ∨ v5 ∨ v6 ∨ v12 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c1157 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c175 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n9
  have c1161 : v41 ∨ ¬v4 ∨ v5 ∨ ¬v7 ∨ v12 ∨ ¬v19 ∨ v22 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v20 := by
      rcases c79 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v17 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u8 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : v6 := by
      rcases c1160 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u10 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd u9 a
    have u12 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
      · exact absurd u9 a
    have u13 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u14 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u12
    have u17 : v38 := by
      rcases c172 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n11
      · exact a
      · exact absurd a n15
    rcases c127 with a|a
    · exact absurd u17 a
    · exact absurd u16 a
  have c1162 : v41 ∨ ¬v4 ∨ v5 ∨ v12 ∨ ¬v26 ∨ v29 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v2 := by
      rcases c1152 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v42 := by
      rcases c1158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : v44 := by
      rcases c988 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v17 := by
      rcases c924 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    have u11 : v7 := by
      rcases c1159 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v43 := by
      rcases c148 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v19 := by
      rcases c1161 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
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
    have u14 : v18 := by
      rcases c555 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v6 := by
      rcases c1160 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u20 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd u19 a
    have u21 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd u19 a
    have u22 : v11 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd n1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : v38 := by
      rcases c1097 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u20
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd a n10
    have u25 : v36 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u1
      · exact absurd a u21
    rcases c127 with a|a
    · exact absurd u24 a
    · exact absurd u25 a
  exact ⟨c1117, c1118, c1120, c1126, c1128, c1130, c1131, c1135, c1138, c1143, c1148, c1149, c1150, c1152, c1153, c1154, c1155, c1156, c1157, c1158, c1159, c1162⟩
