import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 850-899 of the 2559-step refutation of ccase003: 116 core clauses and 74 earlier-derived ones give 24 more. -/
theorem CCase003_block017
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c19 : ¬v2 ∨ ¬v4 ∨ ¬v6)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c25 : ¬v4 ∨ ¬v3 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c29 : ¬v3 ∨ ¬v7 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c33 : ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c45 : ¬v9 ∨ ¬v11)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
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
    (c68 : ¬v16 ∨ ¬v19)
    (c72 : ¬v19 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c128 : ¬v29 ∨ ¬v34)
    (c129 : ¬v29 ∨ ¬v35)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c133 : ¬v34 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c166 : ¬v41 ∨ ¬v42)
    (c167 : ¬v44 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c175 : ¬v47 ∨ ¬v44)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c197 : v29 ∨ v21 ∨ v1 ∨ v34 ∨ v7 ∨ v2 ∨ v13 ∨ ¬v14 ∨ v20 ∨ v28 ∨ v8 ∨ v16 ∨ v9 ∨ v35)
    (c199 : v43 ∨ v49 ∨ ¬v7 ∨ v48 ∨ v1 ∨ v13 ∨ v6 ∨ v14)
    (c213 : ¬v34 ∨ v41 ∨ v42 ∨ v27 ∨ v5 ∨ v26 ∨ v33 ∨ v25 ∨ v7 ∨ v35 ∨ v39 ∨ v32 ∨ v6 ∨ v48)
    (c247 : v7 ∨ v20 ∨ v12 ∨ v14 ∨ v5 ∨ v6 ∨ v21 ∨ ¬v13)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c299 : v29 ∨ v23 ∨ v35 ∨ ¬v22 ∨ v21 ∨ v15 ∨ v16 ∨ v28)
    (c303 : ¬v34 ∨ v41 ∨ v27 ∨ v26 ∨ v35 ∨ v33 ∨ v40 ∨ v28)
    (c348 : ¬v44 ∨ v43 ∨ v38 ∨ v37 ∨ v3 ∨ v2 ∨ v1 ∨ v45)
    (c353 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v28 ∨ v41 ∨ v34 ∨ v29)
    (c363 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v46 ∨ v10 ∨ v4)
    (c401 : v10 ∨ ¬v11 ∨ v17 ∨ v47 ∨ v18 ∨ v45 ∨ v8 ∨ v4 ∨ v1 ∨ v9 ∨ v12 ∨ v5 ∨ v46 ∨ v15)
    (c411 : v2 ∨ v6 ∨ v21 ∨ v48 ∨ v49 ∨ v47 ∨ v5 ∨ v14 ∨ v16 ∨ v20 ∨ v9 ∨ ¬v13 ∨ v8 ∨ v12)
    (c413 : v29 ∨ v30 ∨ ¬v22 ∨ v28 ∨ v23 ∨ v15 ∨ v16 ∨ v21)
    (c418 : ¬v12 ∨ v11 ∨ v6 ∨ v19 ∨ v20 ∨ v13 ∨ v18 ∨ v5)
    (c438 : ¬v34 ∨ v41 ∨ v26 ∨ v27 ∨ v40 ∨ v42 ∨ v33 ∨ v35)
    (c444 : v43 ∨ v15 ∨ v28 ∨ v20 ∨ v7 ∨ v8 ∨ v19 ∨ v14 ∨ v26 ∨ v27 ∨ v12 ∨ ¬v21 ∨ v48 ∨ v49)
    (c446 : ¬v33 ∨ v40 ∨ v26 ∨ v34 ∨ v25 ∨ v41 ∨ v27 ∨ v32)
    (c459 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v39 ∨ v32)
    (c462 : v43 ∨ v36 ∨ v38 ∨ v1 ∨ v37 ∨ v2 ∨ ¬v44 ∨ v45)
    (c467 : v9 ∨ v10 ∨ v31 ∨ v25 ∨ v18 ∨ v2 ∨ v3 ∨ v4 ∨ v12 ∨ v16 ∨ v19 ∨ ¬v11 ∨ v32 ∨ v33)
    (c504 : ¬v44 ∨ v29 ∨ v30 ∨ v2 ∨ v1 ∨ v6 ∨ v37 ∨ v38 ∨ v41 ∨ v31 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c554 : ¬v44 ∨ v37 ∨ v41 ∨ v2 ∨ v3 ∨ v36 ∨ v6 ∨ v8 ∨ v9 ∨ v10 ∨ v43 ∨ v45 ∨ v48 ∨ v49)
    (c582 : ¬v20 ∨ v13 ∨ v19 ∨ v26 ∨ v27 ∨ v28)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c598 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v20 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c639 : ¬v18 ∨ v1 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c682 : ¬v20 ∨ v6 ∨ v11 ∨ v13 ∨ v14 ∨ v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c700 : v31 ∨ ¬v5 ∨ ¬v6 ∨ ¬v18 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v49)
    (c716 : ¬v14 ∨ v1 ∨ v6 ∨ v7 ∨ v13 ∨ v15 ∨ v21)
    (c743 : v28 ∨ ¬v14 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c776 : v12 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c869 : ¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c909 : v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c953 : v24 ∨ v6 ∨ v13 ∨ v19 ∨ v23 ∨ v26 ∨ v27 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c959 : v4 ∨ ¬v5 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1053 : ¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47)
    (c1068 : ¬v20 ∨ v4 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c1118 : ¬v22 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1144 : ¬v13 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28)
    (c1149 : ¬v7 ∨ ¬v5 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1156 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v48)
    (c1174 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1197 : ¬v26 ∨ v27 ∨ v28 ∨ v29 ∨ v35 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1218 : v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1220 : ¬v41 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1224 : ¬v39 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1227 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v39 ∨ v45 ∨ v46)
    (c1229 : ¬v4 ∨ v13 ∨ v19 ∨ v20 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c1235 : ¬v39 ∨ v32 ∨ v33 ∨ v45 ∨ v46 ∨ v47)
    (c1255 : v12 ∨ v4 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1261 : ¬v42 ∨ v1 ∨ v2 ∨ ¬v44 ∨ v45)
    (c1268 : v35 ∨ v11 ∨ ¬v13 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v40 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1274 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v42 ∨ v43 ∨ v49)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1286 : ¬v23 ∨ v22 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1290 : ¬v1 ∨ ¬v4 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1331 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1334 : v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1348 : v19 ∨ ¬v1 ∨ v6 ∨ v12 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c1361 : v49 ∨ v22 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c1363 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1379 : v35 ∨ v7 ∨ v14 ∨ v21 ∨ v28 ∨ v34 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1381 : ¬v7 ∨ ¬v1 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v40 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47)
    (c1391 : ¬v3 ∨ ¬v1 ∨ v9 ∨ v10 ∨ v11 ∨ v45 ∨ v46)
    (c1393 : ¬v41 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49)
    (c1398 : ¬v7 ∨ v1 ∨ v6 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1407 : ¬v38 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v44 ∨ v45)
    (c1412 : v27 ∨ v15 ∨ v22 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1417 : v1 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v38 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1418 : ¬v34 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27)
    (c1419 : ¬v28 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v26 ∨ v27)
    : (v22 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ ¬v22 ∨ v27 ∨ v28 ∨ ¬v34) ∧ (v49 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48) ∧ (v19 ∨ ¬v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v37 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v19 ∨ ¬v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49) ∧ (¬v12 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v34 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v13 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v4 ∨ ¬v5 ∨ ¬v38 ∨ ¬v44 ∨ v45) ∧ (v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48) ∧ (v14 ∨ v7 ∨ v8 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49) ∧ (v48 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v13 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46) ∧ (v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46) ∧ (¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28) ∧ (v49 ∨ v12 ∨ ¬v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v29 ∨ v19 ∨ ¬v22 ∨ ¬v26) ∧ (¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28) ∧ (v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ ¬v26 ∨ v34) ∧ (v47 ∨ v19 ∨ v21 ∨ ¬v26 ∨ v27 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v12 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v24 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1420 : v45 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v28 := by
      rcases c1419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a n2
    have u13 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u12
    have u14 : ¬v13 := by
      rcases c1144 with a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u12
    have u15 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n3
    have u18 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u17 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v2 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u17 a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v3 := by
      rcases c29 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u17 a
    have u22 : v38 := by
      rcases c1417 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1407 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd u4 a
    · exact absurd a n0
  have c1421 : v45 ∨ v22 ∨ v27 ∨ v34 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v28 := by
      rcases c1419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd u4 a
      · exact absurd a n2
    have u12 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u11
    have u13 : ¬v13 := by
      rcases c1144 with a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u11
    have u14 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : v35 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n4
    have u24 : v6 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v1 := by
      rcases c1417 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c1304 with a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u25 a
    · exact absurd u24 a
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
  have c1422 : v22 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v26 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v23 := by
      rcases c1286 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v15 := by
      rcases c1412 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v28 := by
      rcases c1419 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a n1
    have u13 : v8 := by
      rcases c1334 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u12
    have u14 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : v34 := by
      rcases c1421 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd u18 a
      · exact a
    have u23 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : ¬v24 := by
      rcases c771 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a u22
    have u25 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u26 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
    have u27 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u26
      · exact absurd a u24
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u7
    have u28 : ¬v1 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
    have u29 : ¬v42 := by
      rcases c1197 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u21
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u29
      · exact absurd a u12
    have u31 : ¬v6 := by
      rcases c29 with a|a|a
      · exact absurd u27 a
      · exact absurd u30 a
      · exact a
    rcases c1398 with a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u28
    · exact absurd a u31
    · exact absurd a u15
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c1423 : ¬v26 ∨ ¬v22 ∨ v27 ∨ v28 ∨ ¬v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
    have u7 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u6 a
      · exact a
    rcases c1418 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
  have c1424 : v49 ∨ ¬v2 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v5 := by
      rcases c21 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u3 : v12 := by
      rcases c776 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
    rcases c929 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
  have c1425 : v15 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ ¬v21 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd n6 a
    rcases c444 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd n6 a
    · exact absurd a n11
    · exact absurd a n12
  have c1426 : ¬v21 ∨ v7 ∨ v8 ∨ v12 ∨ v14 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd n0 a
    rcases c1425 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1427 : v19 ∨ ¬v13 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v35 ∨ v42 ∨ v43 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u5
    have u7 : v21 := by
      rcases c1268 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v7 := by
      rcases c1149 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c1426 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
  have c1428 : v37 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u2
    have u4 : v4 := by
      rcases c1255 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    have u6 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u4 a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd n7 a
    · exact absurd a n8
  have c1429 : ¬v19 ∨ ¬v22 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v39 ∨ v42 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v23 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n10
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
    have u7 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u9 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u10 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n4
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n7
      · exact absurd a u3
    rcases c26 with a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd u9 a
  have c1430 : v27 ∨ v28 ∨ ¬v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v26 := by
      rcases c1423 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
    have u13 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u14 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n7
    have u15 : v41 := by
      rcases c303 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n1
    have u16 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v19 := by
      rcases c1429 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u19 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v12 := by
      rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n1
    have u22 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v21 := by
      rcases c598 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a n1
    have u25 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a n1
    have u26 : ¬v1 := by
      rcases c1381 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u25 a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v6 := by
      rcases c199 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd u25 a
      · exact absurd a n6
      · exact absurd a u26
      · exact absurd a u19
      · exact a
      · exact absurd a u23
    have u28 : ¬v2 := by
      rcases c23 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u27 a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a u28
    · exact absurd u7 a
    · exact absurd a n3
  have c1431 : ¬v12 ∨ ¬v3 ∨ v17 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u5 a
    have u8 : ¬v20 := by
      rcases c682 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c418 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u7
  have c1432 : v26 ∨ ¬v12 ∨ v23 ∨ v24 ∨ v25 ∨ v27 ∨ ¬v34 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n6 a
    have u7 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n6 a
      · exact a
    have u8 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n6 a
      · exact a
    have u9 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n6 a
      · exact a
    have u10 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n11
    have u16 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u7
      · exact absurd a u11
    have u17 : ¬v1 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v19 := by
      rcases c1431 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u16 a
      · exact absurd a u11
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n8
    have u20 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u21 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u22 : ¬v6 := by
      rcases c25 with a|a|a
      · exact absurd u19 a
      · exact absurd u16 a
      · exact a
    have u23 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u19 a
    have u24 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd u10 a
      · exact absurd a n7
    have u25 : v37 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u17
      · exact a
      · exact absurd a u21
      · exact absurd u10 a
      · exact absurd a n7
    have u26 : v41 := by
      rcases c213 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a n10
    rcases c155 with a|a
    · exact absurd u26 a
    · exact absurd u25 a
  have c1433 : ¬v34 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c128 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c137 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v32 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v33 := by
      rcases c142 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a n3
    have u13 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n6
    have u14 : v28 := by
      rcases c1430 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact a
    have u18 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u7 a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v12 := by
      rcases c1432 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n1
    have u21 : v37 := by
      rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u21 a
    rcases c438 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u22
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u3
  have c1434 : ¬v13 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n4
      · exact a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n10
    have u6 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a u4
    have u8 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n12
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n9
    rcases c24 with a|a|a
    · exact absurd u5 a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1435 : v25 ∨ ¬v5 ∨ v19 ∨ v23 ∨ v24 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u5 : ¬v13 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v6 := by
      rcases c953 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u6 a
    have u9 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v18 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd u6 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n17
    have u11 : v17 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u12 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a u2
    have u13 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u12 a
    rcases c467 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a u10
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u13
    · exact absurd a n2
    · exact absurd u12 a
    · exact absurd a n8
    · exact absurd a n9
  have c1437 : v38 ∨ ¬v5 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v33 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v22 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u1 a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u1 a
      · exact absurd n6 a
      · exact a
    have u5 : v31 := by
      rcases c1435 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact a
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
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u5 a
    rcases c459 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a n7
  have c1439 : ¬v5 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v41 := by
      rcases c1363 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v28 := by
      rcases c1437 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u8 : ¬v14 := by
      rcases c743 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v6 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n13
    have u11 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u10 a
    have u13 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n14
    have u15 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u16 : v17 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c74 with a|a
    · exact absurd u15 a
    · exact absurd u16 a
  have c1440 : v38 ∨ v12 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n11
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : v32 := by
      rcases c1439 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
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
    have u6 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v39 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n0
      · exact a
      · exact absurd a u1
    have u10 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u4
      · exact absurd a n13
    have u11 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u9 a
      · exact a
    rcases c1428 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u10
    · exact absurd a n0
    · exact absurd u2 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1441 : v43 ∨ ¬v5 ∨ v19 ∨ ¬v22 ∨ ¬v25 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u5 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v13 := by
      rcases c1427 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v6 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
    have u9 : ¬v20 := by
      rcases c582 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
    have u10 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u11 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
    have u13 : ¬v18 := by
      rcases c639 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n13
    have u14 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n5
    have u15 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd n4 a
      · exact absurd a n5
    have u16 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n9
    have u17 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n9
      · exact a
      · exact absurd a u18
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a u2
    have u20 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u19 a
    rcases c197 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u18
    · exact absurd a u10
    · exact absurd a n8
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd u19 a
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a n9
  have c1442 : ¬v4 ∨ ¬v5 ∨ ¬v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1407 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd n3 a
    · exact absurd a n4
  have c1443 : v45 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u1
    have u7 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v25 := by
      rcases c1441 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd u4 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : v38 := by
      rcases c1440 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v4 := by
      rcases c1442 with a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u10 a
      · exact absurd u2 a
      · exact absurd a n0
    have u12 : v6 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u12 a
    have u14 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u12 a
    rcases c1407 with a|a|a|a|a|a
    · exact absurd u10 a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd u2 a
    · exact absurd a n0
  have c1444 : ¬v6 ∨ ¬v5 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n5 a
      · exact a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n5 a
    · exact absurd a n6
  have c1445 : ¬v5 ∨ v12 ∨ v36 ∨ v37 ∨ v38 ∨ ¬v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v6 := by
      rcases c1444 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u3 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    have u5 : ¬v1 := by
      rcases c8 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u3 a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd n5 a
    · exact absurd a n6
  have c1446 : v12 ∨ v6 ∨ ¬v11 ∨ v19 ∨ v26 ∨ v27 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v20 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n6
  have c1447 : v11 ∨ ¬v2 ∨ ¬v4 ∨ v5 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c998 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1448 : v4 ∨ v6 ∨ v13 ∨ ¬v22 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n9
      · exact a
      · exact absurd a n12
      · exact absurd a n7
    have u2 : v28 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n12
    have u3 : v25 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c93 with a|a|a
    · exact absurd n3 a
    · exact absurd u2 a
    · exact absurd u3 a
  have c1449 : v35 ∨ v1 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v33 := by
      rcases c1443 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u6 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n10
    have u7 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u12 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n11
    have u14 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v40 := by
      rcases c1155 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u14
      · exact a
      · exact absurd a u5
    have u17 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : v2 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u17
      · exact a
      · exact absurd u4 a
      · exact absurd a n7
    have u19 : ¬v5 := by
      rcases c1445 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd u4 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v4 := by
      rcases c1447 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u18 a
      · exact a
      · exact absurd a u19
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v13 := by
      rcases c1448 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u22 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v7 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n11
    have u24 : v20 := by
      rcases c809 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u21 a
      · exact absurd a u22
      · exact a
    have u25 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u24 a
      · exact a
    have u26 : v25 := by
      rcases c1068 with a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u27 : v28 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a n11
      · exact absurd a u11
      · exact a
    rcases c93 with a|a|a
    · exact absurd u2 a
    · exact absurd u27 a
    · exact absurd u26 a
  have c1450 : v14 ∨ v7 ∨ v8 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v21 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c1426 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1451 : v45 ∨ v1 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v33 := by
      rcases c1443 with a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
    have u2 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1174 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n10
    have u13 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a n7
    have u15 : v40 := by
      rcases c1155 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd a u10
    have u16 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v2 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd u4 a
      · exact absurd a n0
    have u18 : v6 := by
      rcases c1449 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : ¬v7 := by
      rcases c23 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v4 := by
      rcases c19 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u21 : v13 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u17 a
      · exact absurd u18 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v28 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n10
    have u27 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u3 a
      · exact absurd u26 a
      · exact a
    have u28 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd u3 a
      · exact absurd u26 a
      · exact a
    have u29 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd a u27
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a n7
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u8
    · exact absurd a u13
  have c1452 : v48 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u2 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u3 : v22 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u6 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n9
    have u7 : v1 := by
      rcases c1451 with a|a|a|a|a|a|a|a|a|a|a
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
    have u8 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd u7 a
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u9 : ¬v11 := by
      rcases c1446 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u8
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n0
    have u10 : v33 := by
      rcases c1443 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
    have u11 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v36 := by
      rcases c1274 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n9
    have u16 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v40 := by
      rcases c1155 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u16
      · exact a
      · exact absurd a u5
    have u19 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v4 := by
      rcases c1290 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u1 a
      · exact absurd a n6
    have u21 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u22 : v13 := by
      rcases c1448 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u8
      · exact a
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u23 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : ¬v3 := by
      rcases c1391 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u28 : v2 := by
      rcases c554 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u5
      · exact a
      · exact absurd a u27
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
    have u29 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd u7 a
      · exact absurd u28 a
      · exact a
    have u30 : v28 := by
      rcases c1450 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n9
    have u31 : v20 := by
      rcases c809 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u22 a
      · exact absurd a u24
      · exact a
    have u32 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u3 a
      · exact absurd u30 a
      · exact a
    rcases c1068 with a|a|a|a|a|a|a|a
    · exact absurd u31 a
    · exact absurd a u20
    · exact absurd a u32
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1453 : v13 ∨ v6 ∨ v12 ∨ v19 ∨ v26 ∨ v27 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n7
    have u2 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v14 := by
      rcases c671 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u2
    have u7 : ¬v1 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v7 := by
      rcases c1149 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c716 with a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u4
  have c1454 : ¬v14 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    rcases c643 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c1455 : v11 ∨ v4 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v18 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c673 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1456 : v31 ∨ v12 ∨ v19 ∨ ¬v22 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v39 := by
      rcases c1235 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v13 := by
      rcases c1434 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n4
      · exact a
      · exact absurd a n14
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u5
    have u8 : v6 := by
      rcases c1453 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v4 := by
      rcases c30 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u8 a
    have u11 : v11 := by
      rcases c1455 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n13
    have u12 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n0
      · exact a
    rcases c635 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
  have c1457 : ¬v6 ∨ ¬v5 ∨ v27 ∨ v28 ∨ v34 ∨ ¬v35 ∨ v38 ∨ v41 ∨ ¬v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
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
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u4 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n8 a
      · exact absurd a n9
    have u7 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact absurd a u4
      · exact absurd a n6
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n9
    have u8 : v36 := by
      rcases c353 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u5
    rcases c146 with a|a
    · exact absurd u7 a
    · exact absurd u8 a
  have c1458 : v27 ∨ v12 ∨ v19 ∨ v26 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v35 := by
      rcases c1452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u2 : v22 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v41 := by
      rcases c1220 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u11
    have u15 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v28 := by
      rcases c1456 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v6 := by
      rcases c1457 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a n4
    have u18 : v4 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v1 := by
      rcases c1348 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v2 := by
      rcases c18 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u18 a
    have u21 : v37 := by
      rcases c504 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u17
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v42 := by
      rcases c1261 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd u4 a
      · exact absurd a n4
    have u23 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u21 a
      · exact a
    rcases c353 with a|a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd u1 a
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u3
    · exact absurd a u7
  have c1459 : v12 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v22 := by
      rcases c1361 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v19 := by
      rcases c1458 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v25 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u8 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u1 a
    have u9 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n1
    have u12 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd u7 a
      · exact absurd a n1
    rcases c413 with a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u6
  have c1460 : v17 ∨ ¬v4 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v20 ∨ v21 ∨ v24 ∨ v28 ∨ v34 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u5 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v5 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u2
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd n4 a
    have u8 : v35 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v38 := by
      rcases c1442 with a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u7 a
      · exact a
      · exact absurd u4 a
      · exact absurd a n11
    have u10 : ¬v3 := by
      rcases c24 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n1 a
    have u11 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n7
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a n0
  have c1461 : v48 ∨ v6 ∨ v12 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v27 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v26 := by
      rcases c1459 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u2 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u3 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u4 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u5 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u6 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u2
    have u7 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v4 := by
      rcases c1460 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n13
    have u13 : ¬v5 := by
      rcases c959 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
    have u14 : v7 := by
      rcases c809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd a n6
    have u15 : v1 := by
      rcases c1398 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n13
    have u16 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    rcases c411 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n12
    · exact absurd a u13
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u11
    · exact absurd u6 a
    · exact absurd a u9
    · exact absurd a n2
  have c1462 : ¬v35 ∨ v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    rcases c413 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd n4 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
  have c1463 : v49 ∨ v12 ∨ ¬v19 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : v26 := by
      rcases c1459 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u8 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u10 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u11 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u9 a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v35 := by
      rcases c1462 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u14
    have u17 : v29 := by
      rcases c299 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u14
    have u18 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u19 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
    have u21 : ¬v39 := by
      rcases c1224 with a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v6 := by
      rcases c1461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u23 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u22 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u24 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u25 : ¬v14 := by
      rcases c1454 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n5
    have u26 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a n5
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u21
    have u27 : v7 := by
      rcases c1379 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
    have u28 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u26 a
    have u31 : v5 := by
      rcases c401 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd u26 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u29
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u2
    rcases c33 with a|a|a
    · exact absurd u31 a
    · exact absurd u27 a
    · exact absurd u22 a
  have c1464 : ¬v29 ∨ v19 ∨ ¬v22 ∨ ¬v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v32 := by
      rcases c126 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1118 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c1466 : v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ ¬v26 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v29 := by
      rcases c1464 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd n4 a
    have u3 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd n3 a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u3
    have u7 : v32 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd n4 a
      · exact absurd a u1
      · exact a
      · exact absurd a u6
      · exact absurd a n5
    have u8 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    rcases c847 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd n3 a
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u9
    · exact absurd a u8
  have c1467 : ¬v6 ∨ ¬v4 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v3 := by
      rcases c25 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1468 : v47 ∨ v19 ∨ v21 ∨ ¬v26 ∨ v27 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v15 := by
      rcases c1466 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u2 a
      · exact absurd n3 a
      · exact absurd a u1
    have u4 : ¬v24 := by
      rcases c88 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u2 a
      · exact absurd n3 a
      · exact a
    have u6 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n3 a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n4
    have u11 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u18 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v6 := by
      rcases c1467 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u20 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u1
    have u21 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : v7 := by
      rcases c1131 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u19
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a n2
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd u17 a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
  have c1469 : v12 ∨ v27 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v19 := by
      rcases c1463 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v22 := by
      rcases c1422 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v26 := by
      rcases c1459 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v21 := by
      rcases c1468 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v33 := by
      rcases c1465 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a u8
    rcases c297 with a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a n1
  have c1470 : ¬v33 ∨ v1 ∨ v2 ∨ v25 ∨ v26 ∨ v27 ∨ v41 ∨ ¬v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v47 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n7 a
    have u8 : ¬v46 := by
      rcases c174 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v36 := by
      rcases c1331 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a n9
    have u11 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u6
      · exact a
      · exact absurd a n8
      · exact absurd a u8
    have u12 : v40 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u6
    have u13 : ¬v38 := by
      rcases c1227 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a u8
    have u14 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u12 a
      · exact a
    rcases c462 with a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a n1
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd n7 a
    · exact absurd a n8
  have c1471 : v24 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v35 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v12 := by
      rcases c1452 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    have u2 : ¬v34 := by
      rcases c1433 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v44 := by
      rcases c1218 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v41 := by
      rcases c1393 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v43 := by
      rcases c167 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n12
      · exact absurd a u2
    have u11 : ¬v1 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v2 := by
      rcases c1424 with a|a|a|a|a|a
      · exact absurd a n13
      · exact a
      · exact absurd u10 a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v33 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a n13
    have u14 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v4 := by
      rcases c1229 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u16 : ¬v3 := by
      rcases c363 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u15
    have u17 : ¬v38 := by
      rcases c1407 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n9
    have u18 : v31 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n9
      · exact a
      · exact absurd a n1
    have u19 : v37 := by
      rcases c348 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u9
      · exact absurd a u17
      · exact a
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n9
    have u20 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u19 a
    rcases c1455 with a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a n10
  exact ⟨c1422, c1423, c1424, c1427, c1428, c1429, c1431, c1433, c1434, c1442, c1446, c1450, c1452, c1453, c1454, c1455, c1462, c1463, c1464, c1465, c1466, c1468, c1469, c1471⟩
