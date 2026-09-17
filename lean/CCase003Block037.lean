import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1850-1899 of the 2559-step refutation of ccase003: 132 core clauses and 107 earlier-derived ones give 14 more. -/
theorem CCase003_block037
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c154 : ¬v40 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c170 : ¬v47 ∨ ¬v43)
    (c175 : ¬v47 ∨ ¬v44)
    (c179 : ¬v47 ∨ ¬v45)
    (c182 : ¬v47 ∨ ¬v46)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c202 : ¬v32 ∨ v39 ∨ v25 ∨ v5 ∨ v26 ∨ v27 ∨ v4 ∨ v31 ∨ v33 ∨ v34 ∨ v38 ∨ v3 ∨ v41 ∨ v46)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c216 : ¬v21 ∨ v28 ∨ v14 ∨ v27 ∨ v8 ∨ v15 ∨ v13 ∨ v20)
    (c235 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v40 ∨ v33 ∨ v48 ∨ v49)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c253 : ¬v32 ∨ v39 ∨ v38 ∨ v25 ∨ v26 ∨ v24 ∨ v33 ∨ v31)
    (c254 : ¬v32 ∨ v39 ∨ v18 ∨ v38 ∨ v25 ∨ v26 ∨ v31 ∨ v30 ∨ v29 ∨ v17 ∨ v33 ∨ v36 ∨ v22 ∨ v19)
    (c256 : ¬v39 ∨ v35 ∨ v45 ∨ v33 ∨ v3 ∨ v42 ∨ v46 ∨ v32 ∨ v41 ∨ v38 ∨ v40 ∨ v4 ∨ v5 ∨ v49)
    (c264 : ¬v47 ∨ v41 ∨ v5 ∨ v40 ∨ v46 ∨ v6 ∨ v4 ∨ v48)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c273 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v33 ∨ v46 ∨ v44 ∨ v37 ∨ v25 ∨ v32 ∨ v34 ∨ v41 ∨ v45 ∨ v27)
    (c283 : v43 ∨ ¬v8 ∨ v15 ∨ v44 ∨ v21 ∨ v14 ∨ v12 ∨ v1 ∨ v5 ∨ v9 ∨ v19 ∨ v13 ∨ v2 ∨ v49)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c307 : v22 ∨ ¬v15 ∨ v28 ∨ v21 ∨ v9 ∨ v16 ∨ v8 ∨ v14)
    (c311 : v43 ∨ ¬v16 ∨ v44 ∨ v23 ∨ v9 ∨ v24 ∨ v2 ∨ v15 ∨ v11 ∨ v18 ∨ v17 ∨ v8 ∨ v25 ∨ v45)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c372 : v43 ∨ v49 ∨ ¬v7 ∨ v1 ∨ v6 ∨ v8 ∨ v13 ∨ v14)
    (c377 : v16 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v9)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c382 : v29 ∨ ¬v21 ∨ v28 ∨ v24 ∨ v15 ∨ v8 ∨ v27 ∨ v14 ∨ v34 ∨ v16 ∨ v20 ∨ v17 ∨ v10 ∨ v35)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c470 : ¬v4 ∨ v3 ∨ v45 ∨ v46 ∨ v10 ∨ v11 ∨ v12 ∨ v5)
    (c484 : ¬v47 ∨ v40 ∨ v5 ∨ v46 ∨ v39 ∨ v4 ∨ v41 ∨ v48)
    (c511 : ¬v47 ∨ v33 ∨ v4 ∨ v37 ∨ v5 ∨ v34 ∨ v40 ∨ v32 ∨ v2 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c522 : ¬v39 ∨ v32 ∨ v45 ∨ v4 ∨ v33 ∨ v40 ∨ v38 ∨ v10 ∨ v46 ∨ v34 ∨ v41 ∨ v12 ∨ v11 ∨ v48)
    (c525 : v43 ∨ v44 ∨ v22 ∨ ¬v15 ∨ v49 ∨ v27 ∨ v21 ∨ v28 ∨ v20 ∨ v1 ∨ v13 ∨ v16 ∨ v9 ∨ v8)
    (c545 : ¬v47 ∨ v12 ∨ v2 ∨ v39 ∨ v37 ∨ v11 ∨ v40 ∨ v13 ∨ v5 ∨ v6 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c560 : ¬v47 ∨ v33 ∨ v3 ∨ v4 ∨ v25 ∨ v27 ∨ v40 ∨ v5 ∨ v38 ∨ v26 ∨ v41 ∨ v45 ∨ v46 ∨ v48)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c676 : v27 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c679 : v26 ∨ ¬v25 ∨ v27 ∨ ¬v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c714 : ¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c859 : ¬v10 ∨ ¬v21 ∨ v22 ∨ v28)
    (c876 : ¬v27 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34)
    (c921 : ¬v35 ∨ v22 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1075 : ¬v32 ∨ ¬v41 ∨ v42 ∨ v48 ∨ v49)
    (c1102 : ¬v25 ∨ v18 ∨ ¬v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33)
    (c1127 : ¬v26 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v32 ∨ v33 ∨ v34)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1267 : ¬v26 ∨ v22 ∨ ¬v23 ∨ v25 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v34)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1356 : v8 ∨ v1 ∨ v15 ∨ v22 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1371 : v33 ∨ ¬v17 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v34)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1561 : ¬v15 ∨ v8 ∨ v22 ∨ v23 ∨ v28)
    (c1562 : v8 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1605 : v35 ∨ v1 ∨ v7 ∨ v8 ∨ v14 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v49)
    (c1622 : ¬v35 ∨ v1 ∨ v8 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v45 ∨ v49)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1662 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v14 ∨ v15 ∨ v21)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1765 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v28)
    (c1816 : ¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1921 : ¬v10 ∨ v3 ∨ v4 ∨ v16 ∨ v17 ∨ v18)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c2017 : ¬v36 ∨ v29 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c2028 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v28)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2091 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2155 : v17 ∨ v2 ∨ v3 ∨ v4 ∨ v9 ∨ ¬v10 ∨ v11)
    (c2158 : v28 ∨ v47 ∨ v48 ∨ v49)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2170 : ¬v29 ∨ v15 ∨ v22 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2218 : ¬v10 ∨ v2 ∨ v3 ∨ v16 ∨ v17 ∨ v18)
    (c2221 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2249 : v28 ∨ v1 ∨ ¬v3 ∨ v21 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2252 : v14 ∨ v11 ∨ v13 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v28 ∨ v29 ∨ v34 ∨ v35)
    (c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35)
    (c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c2271 : ¬v10 ∨ v1 ∨ v3 ∨ v23 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45)
    (c2272 : v1 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2276 : v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2287 : ¬v41 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48)
    (c2288 : v4 ∨ v3 ∨ ¬v10 ∨ ¬v20)
    (c2298 : v1 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2307 : ¬v23 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v25 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45)
    (c2311 : ¬v33 ∨ v48 ∨ v49)
    (c2314 : ¬v35 ∨ ¬v22 ∨ ¬v25)
    (c2318 : ¬v22 ∨ ¬v25 ∨ v31 ∨ v48 ∨ v49)
    (c2338 : ¬v10 ∨ v18 ∨ v20 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2339 : v23 ∨ ¬v22 ∨ ¬v30 ∨ v31 ∨ v48 ∨ v49)
    (c2340 : v18 ∨ v4 ∨ v10 ∨ v20 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v48 ∨ v49)
    (c2341 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v45 ∨ v46)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2375 : v7 ∨ v15 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v48 ∨ v49)
    (c2376 : v20 ∨ ¬v1 ∨ ¬v7 ∨ v19 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v48)
    (c2383 : v1 ∨ v7 ∨ v15 ∨ v21 ∨ v22 ∨ v28 ∨ ¬v30 ∨ v48 ∨ v49)
    (c2395 : ¬v15 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 ∨ v49)
    (c2397 : ¬v4 ∨ ¬v1 ∨ ¬v47)
    (c2407 : v27 ∨ v10 ∨ v31 ∨ v32 ∨ v34 ∨ v48 ∨ v49)
    (c2412 : ¬v17 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34)
    (c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34)
    (c2428 : v32 ∨ v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49)
    (c2430 : v48 ∨ ¬v3 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v28 ∨ v31 ∨ ¬v32 ∨ v34 ∨ v49)
    (c2433 : ¬v15 ∨ ¬v3 ∨ v10 ∨ v27 ∨ v34 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2434 : v4 ∨ ¬v3 ∨ v10 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48)
    (c2437 : v24 ∨ v10 ∨ v23 ∨ v31 ∨ v34 ∨ v48 ∨ v49)
    (c2438 : ¬v1 ∨ v10 ∨ v22 ∨ v23 ∨ ¬v25 ∨ v28 ∨ v31 ∨ v34 ∨ v38 ∨ v48 ∨ v49)
    (c2440 : v25 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v15 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v37 ∨ v48 ∨ v49)
    (c2441 : ¬v27 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    : (¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v1 ∨ v31 ∨ v34 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v31 ∨ v34 ∨ v48 ∨ v49) ∧ (v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v3 ∨ v1 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v48 ∨ v49) ∧ (¬v22 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v44) ∧ (¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28) ∧ (¬v4 ∨ v3 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46) ∧ (¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v48) ∧ (v41 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v25 ∨ v28 ∨ v43 ∨ v45 ∨ v49) := by
  have c2442 : v23 ∨ ¬v1 ∨ v10 ∨ v22 ∨ v28 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v24 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n8
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v27 := by
      rcases c2441 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u18 : ¬v25 := by
      rcases c2438 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v15 := by
      rcases c2395 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
    rcases c2440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd n1 a
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u12
    · exact absurd a n7
    · exact absurd a n8
  have c2443 : v23 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v24 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v1 := by
      rcases c2442 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v8 := by
      rcases c1562 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a u8
    have u14 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a n5
    have u20 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
    have u21 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n9
    have u22 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a n6
    have u24 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u25 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u26 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u27 : v15 := by
      rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u13 a
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u24
      · exact absurd a n9
    rcases c60 with a|a
    · exact absurd u26 a
    · exact absurd u27 a
  have c2444 : v22 ∨ v10 ∨ v23 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v24 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n6
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v27 := by
      rcases c2441 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v28 := by
      rcases c2443 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd u1 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c111 with a|a|a
      · exact absurd u1 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd a u5
      · exact absurd a u6
    rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd u1 a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd u15 a
    · exact absurd a u7
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a u6
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c2445 : v23 ∨ v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v22 := by
      rcases c2444 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v24 := by
      rcases c2437 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u6 a
    have u8 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u9 : v15 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u4
    have u10 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1984 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a n2
  have c2446 : v3 ∨ v10 ∨ ¬v22 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v23 := by
      rcases c2445 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u3 a
    have u10 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u19 : v39 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n3
    have u20 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a n3
      · exact a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u8
      · exact absurd a u1
    have u26 : v6 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u25
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a n5
    have u27 : v7 := by
      rcases c2375 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u28 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    have u29 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u26 a
    rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u29
    · exact absurd a u1
    · exact absurd a u9
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n5
  have c2447 : ¬v22 ∨ v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v23 := by
      rcases c2445 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u10 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u4 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v39 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n2
    have u20 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : v3 := by
      rcases c2446 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
    have u23 : v4 := by
      rcases c2434 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd u4 a
      · exact absurd a n4
    have u24 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd u21 a
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u26 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u23 a
    have u27 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u23 a
      · exact absurd u21 a
      · exact a
    have u28 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a n4
      · exact absurd a n3
    have u30 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u29 a
    rcases c809 with a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u27
    · exact absurd a u31
    · exact absurd u29 a
    · exact absurd a u30
    · exact absurd a u28
  have c2448 : ¬v3 ∨ v10 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v15 := by
      rcases c2433 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u7 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n11
    have u8 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u9 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n5
      · exact a
      · exact absurd a u6
    have u10 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd n0 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1365 with a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
  have c2449 : v15 ∨ v1 ∨ v3 ∨ v10 ∨ v22 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v8 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u6 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n1
    have u13 : ¬v21 := by
      rcases c2252 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : v7 := by
      rcases c1662 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u12
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u13
    have u15 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
    have u16 : v5 := by
      rcases c283 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n13
    rcases c33 with a|a|a
    · exact absurd u16 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c2450 : ¬v8 ∨ v1 ∨ ¬v6 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v3 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u10 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n2 a
    have u11 : v39 := by
      rcases c484 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n11
    have u12 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v32 := by
      rcases c256 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact absurd a u7
      · exact a
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n12
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : v23 := by
      rcases c2445 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n11
      · exact absurd a n12
    have u19 : v24 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
    have u20 : ¬v25 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u8
    have u21 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u18 a
    rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u21
    · exact absurd a n9
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n11
  have c2451 : v1 ∨ v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v23 := by
      rcases c2445 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v22 := by
      rcases c2447 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v27 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
    have u14 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
    have u15 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n5
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v3 := by
      rcases c2448 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v25 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u12
    have u21 : ¬v26 := by
      rcases c1267 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n3
    have u22 : v15 := by
      rcases c2449 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u23 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : ¬v13 := by
      rcases c2028 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u3
      · exact absurd a u14
    have u30 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a n3
    have u31 : v39 := by
      rcases c254 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u28
    have u32 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v8 := by
      rcases c2450 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u30 a
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u32
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n4
      · exact absurd a n5
    have u34 : v9 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd u22 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u25
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a n0
      · exact absurd a u29
      · exact absurd a u23
      · exact a
      · exact absurd a u33
    have u35 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u34 a
      · exact a
    have u36 : v2 := by
      rcases c377 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u33
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd u34 a
    have u37 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u35
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n5
    rcases c23 with a|a|a
    · exact absurd u36 a
    · exact absurd u37 a
    · exact absurd u30 a
  have c2452 : ¬v6 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c4 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2453 : v8 ∨ ¬v1 ∨ v3 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v31 ∨ ¬v32 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u8 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u9 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u11 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd u2 a
      · exact absurd a n10
    have u12 : v40 := by
      rcases c264 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u9
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n10
    have u13 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    rcases c202 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u5
  have c2454 : v10 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
    have u8 : v23 := by
      rcases c2445 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v22 := by
      rcases c2447 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v1 := by
      rcases c2451 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
    have u12 : v32 := by
      rcases c2428 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v24 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v25 := by
      rcases c2307 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u9
      · exact a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v27 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u8 a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
    have u20 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u14
    have u21 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u8 a
    have u22 : ¬v41 := by
      rcases c1075 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v8 := by
      rcases c2453 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n1
      · exact absurd u12 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v19 := by
      rcases c1491 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
    have u28 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u19
      · exact absurd a u20
    have u29 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u20
    have u30 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a n4
    rcases c2376 with a|a|a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd u10 a
    · exact absurd u30 a
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a u22
    · exact absurd a n3
  have c2455 : v22 ∨ ¬v10 ∨ v20 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
    have u2 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v35 := by
      rcases c921 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v26 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n2
      · exact a
    have u5 : ¬v30 := by
      rcases c714 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u2
    rcases c1026 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u4 a
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n15
  have c2456 : ¬v22 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n7
    have u12 : v40 := by
      rcases c264 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u11
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n7
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n6
    have u15 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v24 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd n0 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v19 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u10
    have u19 : ¬v32 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n5
    rcases c1455 with a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u15
    · exact absurd a u9
  have c2457 : ¬v1 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u12 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u13 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u14 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u16 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd u1 a
      · exact a
    have u17 : ¬v41 := by
      rcases c2287 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a n3
    have u18 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u6
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n2
    have u19 : v40 := by
      rcases c264 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u17
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n3
    have u20 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v42 := by
      rcases c165 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v22 := by
      rcases c2456 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u25 : v28 := by
      rcases c2455 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
    have u26 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u18 a
    have u27 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u25 a
      · exact absurd u18 a
      · exact a
    have u28 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u25 a
      · exact absurd u18 a
      · exact a
    have u29 : ¬v19 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u10
    have u30 : ¬v32 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u3
      · exact absurd a n1
    rcases c1455 with a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u29
    · exact absurd a u26
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u23
    · exact absurd a u9
  have c2458 : v48 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ ¬v27 ∨ ¬v28 ∨ v31 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd n7 a
    have u2 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n8 a
      · exact absurd n7 a
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n10
    have u4 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u1
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n10
    have u12 : v15 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u13 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u12 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a u13
    · exact absurd u12 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a n4
  have c2459 : ¬v27 ∨ v7 ∨ v22 ∨ v28 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v15 := by
      rcases c1765 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v30 := by
      rcases c2383 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v23 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
    have u14 : ¬v35 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n7
    rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a n7
  have c2460 : v31 ∨ v22 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n2
    have u18 : v2 := by
      rcases c2458 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n4 a
      · exact absurd a n0
      · exact absurd a n7
    have u19 : v3 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u18 a
      · exact a
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u10
    have u20 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u18 a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v32 := by
      rcases c2430 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u19 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n7
    have u22 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u15
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u20
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u22
  have c2461 : v49 ∨ v22 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u3 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v28 := by
      rcases c2460 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u13 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n5
    have u14 : v7 := by
      rcases c2459 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u15 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd u14 a
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
    have u16 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u17 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
    have u18 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n0
    rcases c2155 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd u2 a
    · exact absurd a u8
  have c2462 : v22 ∨ ¬v27 ∨ v31 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : v26 := by
      rcases c2461 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u13 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
    have u15 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v35 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n6
    have u17 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u14
    have u18 : ¬v15 := by
      rcases c1561 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
    have u19 : v7 := by
      rcases c1605 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n6
    have u20 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u21 : v6 := by
      rcases c372 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd u19 a
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
    have u22 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u23 : v29 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
    have u24 : v30 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    rcases c124 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c2463 : v35 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n3
    have u10 : ¬v17 := by
      rcases c2412 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n7
    have u11 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n5
    have u17 : ¬v3 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
    have u18 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u15 a
    rcases c2218 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a u12
  have c2464 : ¬v22 ∨ ¬v27 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v24 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u18 : ¬v30 := by
      rcases c2339 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u20 : v35 := by
      rcases c2463 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u15
    have u24 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a u23
    have u25 : v3 := by
      rcases c2271 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u6
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
    have u26 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
    have u27 : ¬v21 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u13
    have u28 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u19
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u26
      · exact absurd a u18
    have u29 : v15 := by
      rcases c876 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u27
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a u21
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n3
    rcases c60 with a|a
    · exact absurd u28 a
    · exact absurd u29 a
  have c2465 : ¬v27 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v22 := by
      rcases c2464 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v41 := by
      rcases c2462 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v36 := by
      rcases c150 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : v35 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v23 := by
      rcases c2414 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n2
    have u18 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u5
      · exact a
    have u19 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u18 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd u18 a
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u6
  have c2466 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v22 ∨ v30 ∨ v31 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v36 := by
      rcases c2017 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    have u3 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v23 := by
      rcases c362 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
    have u6 : v28 := by
      rcases c307 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u2 a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n4
    have u7 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c100 with a|a|a
    · exact absurd u5 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2467 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n0 a
      · exact a
    rcases c235 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
  have c2468 : v28 ∨ ¬v10 ∨ v22 ∨ v27 ∨ ¬v29 ∨ v30 ∨ v37 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v21 := by
      rcases c859 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    have u3 : ¬v31 := by
      rcases c125 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u13 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u14 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u16 : v7 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n10
    have u17 : ¬v3 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a n10
    have u18 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    have u20 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u18 a
    have u21 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u9
    have u22 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u22
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n5
    have u26 : v25 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u20
      · exact absurd a u13
      · exact a
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a n7
    have u27 : ¬v26 := by
      rcases c2110 with a|a|a|a|a|a
      · exact absurd u25 a
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u5
    have u28 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u25 a
      · exact absurd u26 a
      · exact a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u28
    · exact absurd u26 a
    · exact absurd a u27
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
  have c2469 : v22 ∨ v30 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c2465 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u14 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u15 : v29 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u16 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u11
    have u19 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v28 := by
      rcases c2468 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v26 := by
      rcases c1816 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u17
    have u23 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd u21 a
      · exact absurd a n3
      · exact absurd a u17
    have u24 : ¬v25 := by
      rcases c679 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u1
      · exact absurd u21 a
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u17
    have u25 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u24
      · exact absurd a u22
    have u26 : v20 := by
      rcases c2338 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u23
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v24 := by
      rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u25
      · exact a
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
    have u28 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u26 a
    rcases c2170 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u28
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u22
    · exact absurd a u1
    · exact absurd u21 a
  have c2470 : v3 ∨ v1 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
    have u3 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u3 a
      · exact a
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd u3 a
    · exact absurd a n11
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n12
  have c2471 : ¬v28 ∨ v30 ∨ v31 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v27 := by
      rcases c2465 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u5 a
      · exact a
    have u16 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
    have u18 : v22 := by
      rcases c2469 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact a
    have u21 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact a
    have u22 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd u18 a
      · exact absurd n0 a
      · exact a
    have u23 : v3 := by
      rcases c2470 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u24 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
    have u25 : ¬v6 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u24
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u22
    have u27 : v41 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u28 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v32 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a n2
    have u31 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd a u28
    have u32 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u31 a
    have u33 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u31 a
    rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u32
    · exact absurd a u28
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u33
    · exact absurd a u25
    · exact absurd a u12
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a n4
  have c2472 : ¬v32 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v1 := by
      rcases c2457 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v28 := by
      rcases c2471 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v27 := by
      rcases c2465 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
    have u17 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
    have u18 : ¬v41 := by
      rcases c2467 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
    have u19 : v10 := by
      rcases c2454 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
    have u20 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u19 a
      · exact a
    have u24 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u19 a
      · exact a
    have u26 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u9
    have u27 : v22 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
    have u28 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u6
    have u29 : ¬v25 := by
      rcases c2318 with a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
    have u30 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a n2
    have u31 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u30
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u22
    have u32 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a u9
    have u33 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u32
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u9
    have u34 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u28 a
    have u35 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u28 a
    have u36 : v17 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u30
      · exact absurd a u35
      · exact absurd a u22
      · exact absurd u19 a
      · exact absurd a u23
    have u37 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u36 a
    have u38 : ¬v26 := by
      rcases c1371 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u36 a
      · exact absurd a u29
      · exact a
      · exact absurd a u10
      · exact absurd a u6
    have u39 : v23 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u37
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u31
      · exact absurd a u4
    have u40 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd u39 a
      · exact a
      · exact absurd u27 a
    have u41 : v39 := by
      rcases c253 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u17
      · exact absurd a u29
      · exact absurd a u38
      · exact absurd a u40
      · exact absurd a u5
      · exact absurd a u2
    have u42 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u41 a
      · exact a
    rcases c560 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a u30
    · exact absurd a u35
    · exact absurd a u29
    · exact absurd a u10
    · exact absurd a u42
    · exact absurd a u34
    · exact absurd a u17
    · exact absurd a u38
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n1
  have c2473 : v1 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c2298 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v10 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u16 : ¬v39 := by
      rcases c2341 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
    have u18 : v18 := by
      rcases c2338 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u17
      · exact absurd a n8
      · exact absurd a n6
    have u20 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
    have u25 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u23
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
    have u26 : v23 := by
      rcases c2271 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n0
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u8
    have u27 : v24 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd u18 a
      · exact absurd a u22
      · exact a
      · exact absurd a n1
      · exact absurd a u24
    have u28 : v4 := by
      rcases c2155 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a u23
      · exact a
      · exact absurd a u11
      · exact absurd u4 a
      · exact absurd a u12
    have u29 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u26 a
      · exact absurd u27 a
      · exact a
    have u30 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u19 a
    have u31 : v29 := by
      rcases c2466 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u29
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n9
    have u32 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u31 a
      · exact a
    have u33 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u14
    · exact absurd a u21
    · exact absurd a n9
    · exact absurd a u33
    · exact absurd a n3
  have c2474 : ¬v22 ∨ v1 ∨ v2 ∨ v3 ∨ v4 ∨ v8 ∨ ¬v24 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd n0 a
    have u2 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
    have u3 : v15 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u2
      · exact a
      · exact absurd a n9
    have u4 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u4
      · exact a
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n9
    have u8 : ¬v10 := by
      rcases c1921 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd u7 a
  have c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    rcases c216 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a u2
  have c2476 : v27 ∨ v1 ∨ v8 ∨ v13 ∨ v14 ∨ v25 ∨ v28 ∨ v30 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
    have u2 : ¬v33 := by
      rcases c2272 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v31 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n11
    have u14 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a u12
      · exact absurd a n6
    have u16 : ¬v3 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
    have u18 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u19 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u20 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u14 a
    have u21 : v40 := by
      rcases c511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n8
      · exact a
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n10
    have u22 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v24 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u22
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n0
    have u25 : ¬v22 := by
      rcases c2474 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd u24 a
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u6
    have u26 : v15 := by
      rcases c1356 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n11
    have u27 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u26 a
    have u28 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u26 a
      · exact a
    have u30 : v9 := by
      rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u25
      · exact absurd u26 a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u29
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u27
      · exact a
      · exact absurd a n2
    have u31 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u28
      · exact absurd a u5
      · exact absurd a u23
    rcases c45 with a|a
    · exact absurd u30 a
    · exact absurd u31 a
  have c2477 : v12 ∨ v1 ∨ v10 ∨ v11 ∨ v14 ∨ v21 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c2272 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u4 : v31 := by
      rcases c2407 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v42 := by
      rcases c2221 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u11 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u12 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a n8
    have u13 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u14 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u15 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u16 : v40 := by
      rcases c511 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a n11
      · exact absurd a u14
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n13
    have u17 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v24 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a u8
      · exact absurd a n7
    have u20 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a n6
      · exact a
      · exact absurd a u3
      · exact absurd a u18
    have u21 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v26 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u20 a
      · exact a
      · exact absurd a n6
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u22
    rcases c1127 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd u19 a
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n9
  have c2478 : v28 ∨ v1 ∨ v8 ∨ v14 ∨ v25 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v31 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v13 := by
      rcases c2476 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v21 := by
      rcases c2477 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v22 := by
      rcases c1365 with a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
    have u14 : ¬v24 := by
      rcases c2039 with a|a|a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact a
    rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u8 a
    · exact absurd a n0
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a u3
  have c2479 : v8 ∨ v1 ∨ ¬v21 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v33 := by
      rcases c2272 with a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v31 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v47 := by
      rcases c2158 with a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v26 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n4
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u16 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n10
    have u18 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u1
    have u19 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
    have u20 : ¬v24 := by
      rcases c2039 with a|a|a
      · exact absurd n2 a
      · exact absurd u18 a
      · exact a
    have u21 : v14 := by
      rcases c2478 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u19
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : v38 := by
      rcases c273 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a n4
    have u23 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u22 a
      · exact a
    have u28 : v4 := by
      rcases c2340 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u25
      · exact absurd a u3
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u29 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u30 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u29 a
    have u31 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u29 a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd a u30
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u31
  have c2480 : ¬v4 ∨ v3 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c470 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
  have c2481 : ¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd n0 a
      · exact a
    rcases c522 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n11
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n12
  have c2482 : ¬v39 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n0 a
    rcases c2481 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
  have c2483 : v4 ∨ ¬v14 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v39 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u4
    have u6 : v24 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n9
    have u7 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v26 := by
      rcases c1127 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u5 a
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u8
  have c2484 : v1 ∨ v8 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v21 := by
      rcases c2479 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
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
    have u9 : v31 := by
      rcases c2473 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n9
    have u14 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u15 : ¬v3 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v14 := by
      rcases c2478 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v4 := by
      rcases c2483 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n8
    have u22 : ¬v6 := by
      rcases c2480 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u15
      · exact a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u6
    have u23 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n6
    have u24 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v26 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd u23 a
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a n2
    · exact absurd u25 a
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n6
  have c2485 : v34 ∨ v1 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : v8 := by
      rcases c2484 with a|a|a|a|a|a|a|a|a|a
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
    have u9 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
    have u17 : ¬v3 := by
      rcases c2224 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v4 := by
      rcases c2480 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u6
    have u19 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a n1
    have u20 : ¬v39 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n7
    have u21 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a n2
      · exact a
      · exact absurd a u2
      · exact absurd a u20
    have u22 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u21 a
    rcases c452 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a n1
  have c2486 : v12 ∨ v4 ∨ v10 ∨ v11 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v39 := by
      rcases c2482 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a u1
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v26 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd u5 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2487 : v41 ∨ ¬v1 ∨ v4 ∨ v10 ∨ v12 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v33 := by
      rcases c2311 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v32 := by
      rcases c2472 with a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v11 := by
      rcases c2486 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n9
    have u9 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u13 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a n7
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a n8
  have c2488 : v41 ∨ ¬v1 ∨ v4 ∨ v10 ∨ v25 ∨ v27 ∨ v28 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v12 := by
      rcases c2487 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u8 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n9
    have u9 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n7
    have u10 : v19 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd u4 a
      · exact a
    rcases c78 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c2489 : v25 ∨ ¬v1 ∨ v10 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c2488 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
  have c2490 : v41 ∨ v25 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c2485 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v4 := by
      rcases c2397 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u1 a
    have u8 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n7
    have u9 : v10 := by
      rcases c2489 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v20 := by
      rcases c2288 with a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u9 a
      · exact a
    have u13 : ¬v6 := by
      rcases c2452 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a n6
    · exact absurd a n5
  have c2491 : ¬v35 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v25 ∨ v28 ∨ v43 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v22 := by
      rcases c2314 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u7 : v23 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c97 with a|a|a
      · exact absurd u7 a
      · exact absurd n5 a
      · exact a
    have u9 : v18 := by
      rcases c1102 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c67 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  exact ⟨c2452, c2457, c2465, c2466, c2467, c2470, c2471, c2472, c2474, c2475, c2480, c2482, c2490, c2491⟩
