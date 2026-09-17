import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1650-1699 of the 2559-step refutation of ccase003: 112 core clauses and 77 earlier-derived ones give 18 more. -/
theorem CCase003_block033
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c4 : ¬v2 ∨ ¬v1 ∨ ¬v6)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
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
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c66 : ¬v16 ∨ ¬v17)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c121 : v23 ∨ v22 ∨ v27 ∨ v28 ∨ v26 ∨ v25)
    (c123 : v23 ∨ v27 ∨ v24 ∨ v28 ∨ v25 ∨ v26)
    (c127 : ¬v29 ∨ ¬v33)
    (c132 : ¬v33 ∨ ¬v30)
    (c136 : ¬v33 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c145 : v29 ∨ v30 ∨ v32 ∨ v35 ∨ v34 ∨ v31 ∨ v33)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
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
    (c204 : v43 ∨ ¬v8 ∨ v4 ∨ v16 ∨ v7 ∨ v15 ∨ v1 ∨ v14 ∨ v11 ∨ v18 ∨ v9 ∨ v10 ∨ v44 ∨ v49)
    (c226 : v29 ∨ v22 ∨ v28 ∨ v25 ∨ ¬v21 ∨ v14 ∨ v20 ∨ v18 ∨ v13 ∨ v15 ∨ v19 ∨ v11 ∨ v34 ∨ v35)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c264 : ¬v47 ∨ v41 ∨ v5 ∨ v40 ∨ v46 ∨ v6 ∨ v4 ∨ v48)
    (c280 : v14 ∨ v49 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v48 ∨ v13)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c311 : v43 ∨ ¬v16 ∨ v44 ∨ v23 ∨ v9 ∨ v24 ∨ v2 ∨ v15 ∨ v11 ∨ v18 ∨ v17 ∨ v8 ∨ v25 ∨ v45)
    (c352 : ¬v11 ∨ v19 ∨ v3 ∨ v4 ∨ v5 ∨ v12 ∨ v18 ∨ v10)
    (c360 : ¬v47 ∨ v40 ∨ v4 ∨ v6 ∨ v5 ∨ v39 ∨ v46 ∨ v48)
    (c361 : v43 ∨ ¬v2 ∨ v3 ∨ v44 ∨ v45 ∨ v10 ∨ v9 ∨ v1)
    (c377 : v16 ∨ v8 ∨ v17 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ ¬v9)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c382 : v29 ∨ ¬v21 ∨ v28 ∨ v24 ∨ v15 ∨ v8 ∨ v27 ∨ v14 ∨ v34 ∨ v16 ∨ v20 ∨ v17 ∨ v10 ∨ v35)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c452 : ¬v8 ∨ v14 ∨ v9 ∨ v15 ∨ v16 ∨ v2 ∨ v21 ∨ v1)
    (c492 : v29 ∨ ¬v28 ∨ v27 ∨ v35 ∨ v15 ∨ v22 ∨ v21 ∨ v20)
    (c506 : ¬v8 ∨ v9 ∨ v15 ∨ v22 ∨ v30 ∨ v1 ∨ v29 ∨ v21 ∨ v14 ∨ v2 ∨ v10 ∨ v3 ∨ v35 ∨ v17)
    (c512 : v30 ∨ v19 ∨ v17 ∨ v32 ∨ v24 ∨ v3 ∨ ¬v10 ∨ v4 ∨ v31 ∨ v12 ∨ v16 ∨ v11 ∨ v9 ∨ v5)
    (c525 : v43 ∨ v44 ∨ v22 ∨ ¬v15 ∨ v49 ∨ v27 ∨ v21 ∨ v28 ∨ v20 ∨ v1 ∨ v13 ∨ v16 ∨ v9 ∨ v8)
    (c553 : v43 ∨ ¬v1 ∨ v44 ∨ v8 ∨ v7 ∨ v2 ∨ v9 ∨ v14)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c795 : v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c972 : v4 ∨ v6 ∨ v10 ∨ v11 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v45 ∨ v46)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1201 : ¬v24 ∨ v16 ∨ v17 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v32)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1242 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1382 : v14 ∨ v7 ∨ v22 ∨ v27 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1503 : v28 ∨ v1 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1513 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v27 ∨ v29 ∨ v35)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1644 : v6 ∨ v1 ∨ v14 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1676 : ¬v11 ∨ v4 ∨ v5 ∨ v7 ∨ v10 ∨ v17 ∨ v18 ∨ v21 ∨ v24 ∨ v25 ∨ v26)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1680 : ¬v3 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1686 : ¬v37 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v31 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1713 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41)
    (c1765 : v21 ∨ v8 ∨ v9 ∨ v14 ∨ ¬v15 ∨ v22 ∨ v28)
    (c1780 : ¬v33 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28)
    (c1789 : v30 ∨ v17 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v32)
    (c1790 : v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1858 : ¬v21 ∨ v1 ∨ v2 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1945 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31)
    (c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2074 : ¬v12 ∨ v4 ∨ v5 ∨ v18 ∨ v19 ∨ v20)
    (c2091 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2127 : v21 ∨ v1 ∨ ¬v3 ∨ ¬v14 ∨ v44 ∨ v45)
    (c2160 : ¬v33 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c2162 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v34 ∨ v41 ∨ v48)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : v29 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2202 : v30 ∨ v3 ∨ v10 ∨ v23 ∨ v47 ∨ v48 ∨ v49)
    (c2222 : v47 ∨ v48 ∨ v49)
    (c2223 : ¬v41 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v33)
    (c2224 : ¬v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c2227 : v23 ∨ ¬v3 ∨ ¬v10 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2230 : v28 ∨ v19 ∨ v23 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35)
    (c2232 : v23 ∨ ¬v3 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v27 ∨ ¬v33 ∨ v48 ∨ v49)
    (c2233 : ¬v15 ∨ ¬v3 ∨ v10 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c2235 : v21 ∨ ¬v3 ∨ v10 ∨ v15 ∨ v17 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    : (v4 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v10 ∨ v14 ∨ v15 ∨ v16 ∨ v18 ∨ v43 ∨ v44 ∨ v49) ∧ (v15 ∨ ¬v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v18 ∨ v22 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (v23 ∨ ¬v3 ∨ v15 ∨ v25 ∨ ¬v26 ∨ v27 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v28 ∨ v1 ∨ ¬v3 ∨ v21 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v14 ∨ v11 ∨ v13 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v28 ∨ v29 ∨ v34 ∨ v35) ∧ (¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35) ∧ (¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49) ∧ (v23 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v43 ∨ v44 ∨ v45) ∧ (v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v14 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35) ∧ (¬v10 ∨ v1 ∨ v3 ∨ v23 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45) ∧ (v1 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49) ∧ (¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48) ∧ (¬v24 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v48) ∧ (v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v4 ∨ ¬v1 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49) ∧ (¬v17 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49) ∧ (¬v6 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49) ∧ (v25 ∨ ¬v33 ∨ v48 ∨ v49) := by
  have c2236 : v23 ∨ ¬v3 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v28 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u12 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
    have u13 : ¬v27 := by
      rcases c2232 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd n6 a
    have u15 : v40 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u5
    have u16 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v22 := by
      rcases c1780 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd n5 a
    have u18 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u17 a
      · exact absurd n5 a
      · exact a
    have u19 : ¬v10 := by
      rcases c2227 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd a u18
      · exact absurd a n3
    have u21 : ¬v15 := by
      rcases c2233 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u22 : v21 := by
      rcases c2235 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n7
    have u23 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u27 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u25
      · exact absurd a n7
      · exact absurd a u1
    have u28 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u27 a
    have u29 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u27 a
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u9
  have c2237 : v23 ∨ ¬v3 ∨ v19 ∨ v25 ∨ v26 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v28 := by
      rcases c2236 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v27 := by
      rcases c2230 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
    have u9 : v24 := by
      rcases c123 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v22 := by
      rcases c121 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n3
    have u11 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u6
    have u12 : v15 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
    rcases c61 with a|a
    · exact absurd u12 a
    · exact absurd u11 a
  have c2238 : v26 ∨ ¬v3 ∨ v23 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v19 := by
      rcases c2237 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n0
    have u14 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n0
    have u15 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n0
    have u16 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u17 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u18 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u19 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u20 : ¬v24 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u21 : ¬v37 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u22 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u23 : ¬v1 := by
      rcases c1974 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a n6
    have u24 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u19
    have u25 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u19
    have u26 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u22 a
      · exact absurd n1 a
      · exact a
    have u27 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u22 a
      · exact absurd n1 a
      · exact a
    have u28 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd n1 a
      · exact absurd u22 a
      · exact a
    have u29 : v22 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u9
      · exact a
      · exact absurd a u17
      · exact absurd a n6
    have u30 : ¬v11 := by
      rcases c1676 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n0
    have u31 : ¬v27 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u12
      · exact a
      · exact absurd a u2
      · exact absurd a u3
    have u32 : v39 := by
      rcases c972 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a u13
      · exact absurd a u30
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u24
      · exact a
      · exact absurd a u19
      · exact absurd a u18
    have u33 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u31
      · exact absurd n4 a
    have u34 : v40 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u31
      · exact a
      · exact absurd a u33
    rcases c161 with a|a
    · exact absurd u32 a
    · exact absurd u34 a
  have c2239 : v4 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v14 ∨ v15 ∨ v16 ∨ v18 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    rcases c204 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a n12
  have c2240 : v4 ∨ v1 ∨ v7 ∨ ¬v8 ∨ v10 ∨ v14 ∨ v15 ∨ v16 ∨ v18 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n3 a
      · exact a
    rcases c2239 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c2241 : v15 ∨ ¬v3 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v28 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v24 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : v21 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n13
      · exact absurd a n8
      · exact a
    have u5 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v2 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n15
      · exact absurd a n18
    have u9 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n9
      · exact a
      · exact absurd a n0
    have u10 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u9 a
      · exact a
    rcases c2240 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a u12
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c2242 : v15 ∨ ¬v2 ∨ ¬v3 ∨ v10 ∨ v16 ∨ v18 ∨ v22 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v4 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n0
    have u6 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u5 a
      · exact a
    rcases c2240 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c2243 : v22 ∨ ¬v3 ∨ v10 ∨ v15 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n19
    have u2 : ¬v37 := by
      rcases c2091 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v33 := by
      rcases c145 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n10
      · exact a
    have u4 : v17 := by
      rcases c2241 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u5 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v2 := by
      rcases c2242 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n19
    have u8 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact a
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a n9
    have u9 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u10 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u9 a
    rcases c2160 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n15
    · exact absurd a n19
  have c2244 : v15 ∨ ¬v3 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v27 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : v10 := by
      rcases c2243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : v1 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n13
    rcases c1974 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u9 a
    · exact absurd a u8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n13
  have c2245 : v23 ∨ ¬v3 ∨ v15 ∨ v25 ∨ ¬v26 ∨ v27 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : v22 := by
      rcases c2244 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n4 a
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u4 a
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c2247 : ¬v14 ∨ ¬v3 ∨ v21 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v1 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a n5
    rcases c1974 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n6
  have c2248 : ¬v1 ∨ ¬v3 ∨ v14 ∨ v21 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v7 := by
      rcases c7 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : v22 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n10
      · exact a
    rcases c95 with a|a|a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd n6 a
  have c2249 : v28 ∨ v1 ∨ ¬v3 ∨ v21 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
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
    have u4 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c2127 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
    have u6 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n0
    have u7 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    rcases c29 with a|a|a
    · exact absurd n2 a
    · exact absurd u6 a
    · exact absurd u7 a
  have c2250 : v27 ∨ ¬v3 ∨ v23 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v26 := by
      rcases c2238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
    have u14 : v15 := by
      rcases c2245 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u15 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v24 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u21 : ¬v14 := by
      rcases c2247 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n6
    have u22 : ¬v1 := by
      rcases c2248 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u23 : v28 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd n1 a
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u24 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u1 a
    rcases c262 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u23 a
    · exact absurd a n0
    · exact absurd a u19
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u2
    · exact absurd a u17
  have c2251 : v14 ∨ v11 ∨ v13 ∨ v15 ∨ v18 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v28 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n5 a
    rcases c226 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd n5 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n11
  have c2252 : v14 ∨ v11 ∨ v13 ∨ v15 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v28 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n4 a
      · exact a
    rcases c2251 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2253 : v23 ∨ ¬v3 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u9
    have u11 : v27 := by
      rcases c2250 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v26 := by
      rcases c2238 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v10 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n5
    have u14 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u15 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u16 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
    have u17 : ¬v1 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u18 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v2 := by
      rcases c1858 with a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u17
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u7
    rcases c2242 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd u22 a
    · exact absurd n1 a
    · exact absurd a u13
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n5
  have c2254 : v22 ∨ v14 ∨ ¬v21 ∨ ¬v23 ∨ v28 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c1365 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    have u2 : v24 := by
      rcases c918 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n3 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    rcases c99 with a|a|a
    · exact absurd u1 a
    · exact absurd u2 a
    · exact absurd n3 a
  have c2255 : v8 ∨ v14 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v21 ∨ v24 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v13 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v10 := by
      rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n12
    rcases c51 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2256 : ¬v21 ∨ ¬v3 ∨ v14 ∨ v25 ∨ v28 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u11 : v23 := by
      rcases c2253 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v22 := by
      rcases c2254 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd u11 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u7
    have u13 : ¬v24 := by
      rcases c2039 with a|a|a
      · exact absurd n0 a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u15 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u11 a
    have u16 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd n5 a
    have u17 : v8 := by
      rcases c2255 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u9
    have u18 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a n6
    rcases c2224 with a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd n1 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n7
  have c2257 : ¬v28 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c106 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c86 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u4 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u6 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v15 := by
      rcases c492 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    rcases c60 with a|a
    · exact absurd u5 a
    · exact absurd u7 a
  have c2258 : v1 ∨ ¬v3 ∨ v14 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v23 := by
      rcases c2253 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u8 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
    rcases c2256 with a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u7
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n6
  have c2259 : ¬v1 ∨ ¬v3 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v7 := by
      rcases c7 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u4 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u5 : v10 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c39 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2260 : ¬v3 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n4
    have u13 : ¬v1 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
    have u14 : v23 := by
      rcases c2253 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u15 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
    have u16 : v21 := by
      rcases c2249 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : v14 := by
      rcases c2258 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : v22 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u17
    have u24 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u14 a
    have u25 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u14 a
    have u26 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd n2 a
    have u27 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a n3
    have u28 : ¬v4 := by
      rcases c25 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u27 a
    have u29 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u8
      · exact absurd a u11
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u11
    · exact absurd a u10
  have c2261 : ¬v21 ∨ v1 ∨ v3 ∨ v8 ∨ v10 ∨ ¬v33 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v22 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n9
    have u10 : ¬v24 := by
      rcases c1984 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact a
      · exact absurd a u5
    have u11 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a u3
  have c2262 : ¬v23 ∨ v3 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v22 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u3 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n6
      · exact a
    have u4 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u3 a
    rcases c1080 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u4
    · exact absurd a u2
    · exact absurd a u1
  have c2263 : v23 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v24 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n12
    have u2 : v16 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c827 with a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2264 : ¬v14 ∨ v1 ∨ v3 ∨ v25 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v2 := by
      rcases c361 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n1
    have u12 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v23 := by
      rcases c2263 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u8
    have u16 : ¬v21 := by
      rcases c2261 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v22 := by
      rcases c2262 with a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n8
    have u18 : v15 := by
      rcases c2160 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n1
      · exact absurd a u2
      · exact a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n9
    have u19 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u6
    have u23 : ¬v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u10
    rcases c525 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u17
    · exact absurd u18 a
    · exact absurd a n9
    · exact absurd a u23
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u21
    · exact absurd a n1
    · exact absurd a u5
    · exact absurd a u19
    · exact absurd a u4
    · exact absurd a u2
  have c2265 : v3 ∨ v1 ∨ v2 ∨ v8 ∨ v10 ∨ v14 ∨ v21 ∨ v22 ∨ v28 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v15 := by
      rcases c2165 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v9 := by
      rcases c1765 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n8
    rcases c377 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd u4 a
  have c2266 : v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v8 ∨ v9 ∨ v10 ∨ v14 ∨ v21 ∨ v22 ∨ v29 ∨ v30 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v16 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n1
    have u2 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u1 a
      · exact a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n11
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a n3
    · exact absurd a n12
    · exact absurd a u2
  have c2267 : v1 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v3 := by
      rcases c2260 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u11 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v14 := by
      rcases c2264 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n7
    have u16 : ¬v21 := by
      rcases c2254 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u2
    have u17 : v6 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u10
    have u19 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
    have u20 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
    have u21 : v8 := by
      rcases c2265 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u22 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : v15 := by
      rcases c2266 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
    have u25 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u24 a
      · exact a
    have u27 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u24 a
      · exact a
    have u28 : ¬v26 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u25
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
    have u29 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u25
      · exact absurd a n2
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
    have u30 : ¬v27 := by
      rcases c1201 with a|a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
    have u31 : v39 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u27
      · exact absurd a u6
      · exact a
    have u32 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a u30
      · exact absurd n5 a
    have u33 : v40 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u28
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u32
      · exact absurd a u30
      · exact absurd a u6
    rcases c161 with a|a
    · exact absurd u31 a
    · exact absurd u33 a
  have c2268 : v10 ∨ v1 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v3 := by
      rcases c2260 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u10 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u15 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u13
    have u16 : v22 := by
      rcases c2267 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    have u18 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd n2 a
    have u19 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd n4 a
    have u21 : v40 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u6
    have u22 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u2
      · exact a
    have u23 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u19
      · exact absurd a n3
    have u24 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a n5
    have u25 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u22 a
    have u29 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u22 a
    have u30 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u22 a
    have u31 : v7 := by
      rcases c1503 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact a
      · exact absurd a u27
      · exact absurd a u29
      · exact absurd a u28
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u32 : ¬v5 := by
      rcases c33 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u24 a
    have u33 : ¬v4 := by
      rcases c32 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u24 a
    have u34 : ¬v12 := by
      rcases c2074 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a u26
      · exact absurd a u30
      · exact absurd a u29
    have u35 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u25
    rcases c352 with a|a|a|a|a|a|a|a
    · exact absurd u35 a
    · exact absurd a u30
    · exact absurd a u8
    · exact absurd a u33
    · exact absurd a u32
    · exact absurd a u34
    · exact absurd a u26
    · exact absurd a n0
  have c2269 : ¬v22 ∨ ¬v10 ∨ v14 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u3 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
    have u4 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n1 a
    have u9 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u10 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u11 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u13 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v19 := by
      rcases c1493 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    have u15 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd n5 a
    have u16 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
    have u17 : v40 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u7
    have u18 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u5
    have u19 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u13 a
      · exact a
    have u20 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd a u1
    have u21 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u1
    have u23 : v4 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u19
    rcases c32 with a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd u18 a
  have c2270 : ¬v23 ∨ v1 ∨ v14 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u3
    have u7 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a n6
    have u9 : v10 := by
      rcases c2268 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v22 := by
      rcases c2269 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u6
    have u15 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u10
      · exact a
    rcases c1765 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd u15 a
    · exact absurd a u13
    · exact absurd a u6
  have c2271 : ¬v10 ∨ v1 ∨ v3 ∨ v23 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v2 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u2
    have u6 : v16 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n5
    have u7 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v24 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c311 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd u6 a
    · exact absurd a n9
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd a u10
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n10
  have c2272 : v1 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v3 := by
      rcases c2260 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
    have u13 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a n4
    have u14 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
    have u15 : ¬v14 := by
      rcases c2264 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n4
    have u16 : ¬v23 := by
      rcases c2270 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u17 : ¬v10 := by
      rcases c2271 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
    have u18 : v24 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a u11
    have u19 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u16
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u8
    have u20 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
    have u21 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v22 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u8
    have u24 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u5
      · exact a
      · exact absurd a u21
    have u25 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v2 := by
      rcases c452 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd a u21
      · exact absurd a u20
      · exact a
      · exact absurd a u22
      · exact absurd a n0
    rcases c361 with a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u26 a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a n0
  have c2273 : ¬v2 ∨ ¬v1 ∨ v4 ∨ v40 ∨ v41 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v5 := by
      rcases c3 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n5 a
      · exact a
    rcases c264 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n6
  have c2274 : v23 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v47 := by
      rcases c2202 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
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
    have u4 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
    have u7 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u5
    have u8 : v24 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a u5
    have u9 : v17 := by
      rcases c1789 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v4 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u14 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a n13
    have u15 : v39 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n8
      · exact a
    have u16 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v2 := by
      rcases c2273 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n12
    have u19 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n6
    have u20 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u22 : v7 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n13
    have u23 : v6 := by
      rcases c264 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a n12
    rcases c13 with a|a|a
    · exact absurd n1 a
    · exact absurd u22 a
    · exact absurd u23 a
  have c2275 : ¬v24 ∨ v6 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
    have u5 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n6 a
    have u6 : ¬v19 := by
      rcases c1961 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u2
    have u7 : v41 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u1
      · exact a
      · exact absurd a n9
    rcases c2223 with a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd n8 a
  have c2276 : v24 ∨ v3 ∨ v10 ∨ v22 ∨ ¬v23 ∨ v29 ∨ v30 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact a
    have u2 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c66 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c2277 : ¬v4 ∨ ¬v1 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v6 := by
      rcases c9 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
    have u5 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u4 a
    rcases c294 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u5
    · exact absurd u4 a
  have c2278 : ¬v17 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v25 ∨ v28 ∨ v32 ∨ v35 ∨ v39 ∨ v42 ∨ v43 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n13
    have u7 : ¬v4 := by
      rcases c2277 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n13
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n8
  have c2279 : ¬v1 ∨ v2 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v6 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u7 a
    rcases c553 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u10
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u3
  have c2280 : ¬v1 ∨ v2 ∨ v3 ∨ v4 ∨ v10 ∨ v17 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v39 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n17
      · exact absurd a n18
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
    have u5 : ¬v19 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a u4
    have u6 : ¬v11 := by
      rcases c2279 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a n11
      · exact absurd a n15
    have u8 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v13 := by
      rcases c1242 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : v12 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
    have u11 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a u8
      · exact absurd a n17
      · exact absurd a n12
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u11 a
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u12
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n18
  have c2281 : ¬v24 ∨ v2 ∨ v10 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v3 := by
      rcases c2260 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v1 := by
      rcases c2272 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u11 : v23 := by
      rcases c2274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u16 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u17 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u11 a
      · exact absurd n0 a
      · exact a
    have u18 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u11 a
    have u19 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    have u20 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd n4 a
    have u21 : v40 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u16
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u6
    have u22 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v17 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n6
    have u24 : v4 := by
      rcases c2280 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
    have u25 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u24 a
    have u26 : v14 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n6
    have u27 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd u9 a
      · exact absurd a n1
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
    rcases c43 with a|a
    · exact absurd u27 a
    · exact absurd u26 a
  have c2282 : v24 ∨ ¬v1 ∨ v3 ∨ v10 ∨ ¬v23 ∨ v25 ∨ ¬v33 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u8 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u9 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u2
      · exact a
    have u11 : v22 := by
      rcases c2276 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n10
    have u12 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v39 := by
      rcases c2278 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n4 a
    have u17 : ¬v27 := by
      rcases c1513 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u15 a
    rcases c446 with a|a|a|a|a|a|a|a
    · exact absurd n6 a
    · exact absurd a u18
    · exact absurd a u16
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u6
  have c2283 : v10 ∨ v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v3 := by
      rcases c2260 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v1 := by
      rcases c2272 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u10 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u11 : v23 := by
      rcases c2274 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : v24 := by
      rcases c2282 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
    have u17 : ¬v28 := by
      rcases c2257 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u18 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u11 a
    have u19 : v2 := by
      rcases c2281 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u11 a
    have u21 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u11 a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u9 a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v6 := by
      rcases c4 with a|a|a
      · exact absurd u19 a
      · exact absurd u9 a
      · exact a
    have u24 : ¬v41 := by
      rcases c2223 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd n2 a
    have u25 : v14 := by
      rcases c1382 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n4
    have u26 : v13 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a n3
    rcases c58 with a|a
    · exact absurd u25 a
    · exact absurd u26 a
  have c2284 : ¬v6 ∨ ¬v1 ∨ v5 ∨ v12 ∨ v13 ∨ v14 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v7 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n4
    rcases c13 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c2285 : v41 ∨ v3 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd n11 a
      · exact a
    have u6 : v40 := by
      rcases c264 with a|a|a|a|a|a|a|a
      · exact absurd n11 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n12
    have u7 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n6
      · exact a
      · exact absurd a n9
      · exact absurd a u7
    have u9 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : v24 := by
      rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
    have u14 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u4
      · exact a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n10
    rcases c1201 with a|a|a|a|a|a|a|a
    · exact absurd u13 a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n6
    · exact absurd u14 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2286 : v25 ∨ ¬v33 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v1 := by
      rcases c2272 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u6 : v47 := by
      rcases c2222 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v44 := by
      rcases c175 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v43 := by
      rcases c170 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v46 := by
      rcases c182 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c179 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v3 := by
      rcases c2259 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u12 : v10 := by
      rcases c2283 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    have u18 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u19 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
    have u20 : ¬v6 := by
      rcases c2284 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n3
    have u21 : v41 := by
      rcases c2285 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n2
    have u22 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u21 a
      · exact a
    rcases c360 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a n2
  exact ⟨c2240, c2242, c2245, c2249, c2252, c2257, c2259, c2263, c2266, c2271, c2272, c2273, c2275, c2276, c2277, c2278, c2284, c2286⟩
