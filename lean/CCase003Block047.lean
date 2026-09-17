import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 2350-2399 of the 2559-step refutation of ccase003: 119 core clauses and 74 earlier-derived ones give 9 more. -/
theorem CCase003_block047
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c39 : ¬v8 ∨ ¬v10)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c46 : ¬v9 ∨ ¬v12)
    (c47 : ¬v9 ∨ ¬v13)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c56 : ¬v12 ∨ ¬v13)
    (c57 : ¬v12 ∨ ¬v14)
    (c58 : ¬v14 ∨ ¬v13)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
    (c65 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v18)
    (c68 : ¬v16 ∨ ¬v19)
    (c69 : ¬v16 ∨ ¬v20)
    (c70 : ¬v16 ∨ ¬v21)
    (c71 : ¬v18 ∨ ¬v17)
    (c72 : ¬v19 ∨ ¬v17)
    (c73 : ¬v20 ∨ ¬v17)
    (c74 : ¬v21 ∨ ¬v17)
    (c75 : ¬v18 ∨ ¬v19)
    (c76 : ¬v20 ∨ ¬v18)
    (c77 : ¬v21 ∨ ¬v18)
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c80 : ¬v20 ∨ ¬v21)
    (c82 : ¬v23 ∨ ¬v24 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c89 : ¬v22 ∨ ¬v27 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c134 : ¬v35 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c146 : ¬v37 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c150 : ¬v41 ∨ ¬v36)
    (c151 : ¬v42 ∨ ¬v36)
    (c155 : ¬v41 ∨ ¬v37)
    (c156 : ¬v42 ∨ ¬v37)
    (c160 : ¬v42 ∨ ¬v38)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c164 : ¬v41 ∨ ¬v40)
    (c165 : ¬v42 ∨ ¬v40)
    (c166 : ¬v41 ∨ ¬v42)
    (c172 : ¬v43 ∨ ¬v49)
    (c177 : ¬v44 ∨ ¬v49)
    (c181 : ¬v45 ∨ ¬v49)
    (c184 : ¬v49 ∨ ¬v46)
    (c186 : ¬v49 ∨ ¬v47)
    (c187 : ¬v49 ∨ ¬v48)
    (c189 : v43 ∨ v36 ∨ v1 ∨ v22 ∨ v29 ∨ v8 ∨ v15)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c218 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v35 ∨ v37 ∨ v30 ∨ v29)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c325 : ¬v33 ∨ v40 ∨ v34 ∨ v32 ∨ v41 ∨ v25 ∨ v39 ∨ v26)
    (c362 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v14 ∨ v8 ∨ v16 ∨ v9)
    (c369 : v43 ∨ ¬v36 ∨ v44 ∨ v34 ∨ v35 ∨ v8 ∨ v1 ∨ v29 ∨ v41 ∨ v42 ∨ v9 ∨ v14 ∨ v37 ∨ v48)
    (c392 : ¬v49 ∨ v42 ∨ v41 ∨ v6 ∨ v1 ∨ v7 ∨ v43 ∨ v48)
    (c393 : v14 ∨ v20 ∨ v5 ∨ v19 ∨ v21 ∨ v6 ∨ v12 ∨ ¬v13)
    (c395 : ¬v49 ∨ v42 ∨ v6 ∨ v1 ∨ v7 ∨ v36 ∨ v43 ∨ v48)
    (c450 : ¬v31 ∨ v38 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v39 ∨ v32)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c539 : ¬v49 ∨ v43 ∨ v7 ∨ v42 ∨ v41 ∨ v6 ∨ v36 ∨ v48)
    (c552 : v36 ∨ ¬v35 ∨ v28 ∨ v22 ∨ v34 ∨ v27 ∨ v42 ∨ v29)
    (c553 : v43 ∨ ¬v1 ∨ v44 ∨ v8 ∨ v7 ∨ v2 ∨ v9 ∨ v14)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c656 : v4 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c667 : ¬v11 ∨ ¬v19 ∨ v22 ∨ v25 ∨ v26 ∨ v32 ∨ v33 ∨ v34)
    (c668 : v31 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c691 : ¬v25 ∨ ¬v26 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c714 : ¬v26 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c719 : ¬v28 ∨ ¬v27 ∨ ¬v30 ∨ v31 ∨ v37 ∨ v38)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c809 : v7 ∨ v5 ∨ v6 ∨ v12 ∨ ¬v13 ∨ v14 ∨ v20)
    (c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40)
    (c909 : v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1093 : ¬v26 ∨ ¬v2 ∨ ¬v10 ∨ v24 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v45 ∨ v46 ∨ v47)
    (c1146 : v2 ∨ v4 ∨ v15 ∨ v16 ∨ v17 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v45 ∨ v46)
    (c1155 : ¬v33 ∨ v26 ∨ v27 ∨ v39 ∨ v40 ∨ v41)
    (c1257 : v47 ∨ v32 ∨ ¬v39 ∨ v45 ∨ v46)
    (c1272 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1279 : ¬v30 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1281 : ¬v29 ∨ v18 ∨ v24 ∨ ¬v25 ∨ v26)
    (c1365 : ¬v21 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1465 : ¬v33 ∨ v15 ∨ ¬v22 ∨ v23 ∨ v28)
    (c1466 : v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ ¬v26 ∨ v34)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1491 : ¬v8 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1494 : ¬v9 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1515 : v11 ∨ ¬v1 ∨ v18 ∨ v25 ∨ v32 ∨ v45 ∨ v46 ∨ v47)
    (c1568 : v33 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v46 ∨ v47 ∨ v48)
    (c1593 : ¬v29 ∨ ¬v23 ∨ v24 ∨ v26 ∨ ¬v27)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1801 : ¬v8 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38)
    (c1981 : ¬v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v24 ∨ v34 ∨ v35)
    (c1984 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v24 ∨ v31)
    (c2039 : ¬v21 ∨ ¬v22 ∨ ¬v24)
    (c2110 : ¬v23 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c2164 : v30 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2180 : v38 ∨ v3 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c2306 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c2342 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v46)
    (c2356 : v5 ∨ v3 ∨ v4 ∨ v10 ∨ ¬v11 ∨ v12 ∨ v18)
    (c2414 : v30 ∨ ¬v23 ∨ ¬v27 ∨ v31 ∨ v33 ∨ v34)
    (c2475 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c2574 : ¬v37 ∨ v29 ∨ v30 ∨ v43 ∨ v44 ∨ v45)
    (c2625 : ¬v10 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2680 : ¬v19 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c2687 : v32 ∨ v4 ∨ v11 ∨ v18 ∨ v25 ∨ v45 ∨ v46 ∨ v47)
    (c2707 : v31 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v44 ∨ v45 ∨ v46)
    (c2715 : v28 ∨ ¬v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v31)
    (c2761 : ¬v27 ∨ v16 ∨ v17 ∨ v20 ∨ ¬v23 ∨ v24 ∨ v26)
    (c2770 : ¬v31 ∨ ¬v23 ∨ v26 ∨ ¬v27)
    (c2823 : ¬v15 ∨ ¬v22 ∨ ¬v24 ∨ v31)
    (c2875 : v49)
    (c2876 : v19 ∨ v4 ∨ v5 ∨ v6 ∨ v26 ∨ v33)
    (c2892 : v26 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39)
    (c2905 : v6 ∨ v5 ∨ ¬v34)
    (c2907 : ¬v42 ∨ v5 ∨ v6 ∨ v19 ∨ v26 ∨ v27)
    (c2926 : ¬v22 ∨ v5 ∨ v19 ∨ ¬v24 ∨ v26 ∨ v31 ∨ v32 ∨ v39)
    (c2928 : v26 ∨ v5 ∨ v6 ∨ v19 ∨ v31 ∨ v36)
    (c2934 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v37)
    (c2937 : ¬v41 ∨ v19 ∨ v20 ∨ v21 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v40)
    (c2939 : v19 ∨ v5 ∨ v6 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v31 ∨ v32)
    (c2942 : ¬v4 ∨ v5 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v36 ∨ v37)
    (c2943 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v40)
    (c2952 : v22 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v31 ∨ v36)
    (c2953 : ¬v7 ∨ ¬v3 ∨ v10)
    : (¬v20 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31) ∧ (v19 ∨ v5 ∨ v6) ∧ (¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37) ∧ (¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v27 ∨ v31) ∧ (v37 ∨ v5 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v36) ∧ (v41 ∨ v5 ∨ v6 ∨ ¬v27) ∧ (¬v31 ∨ ¬v41) ∧ (v23 ∨ v5 ∨ ¬v19 ∨ v22 ∨ ¬v27 ∨ v31 ∨ v36 ∨ v37 ∨ v38) ∧ (¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ ¬v27) := by
  have c2954 : ¬v22 ∨ v6 ∨ v13 ∨ v19 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v34 ∨ ¬v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v38 := by
      rcases c160 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v39 := by
      rcases c163 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v41 := by
      rcases c166 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd n8 a
      · exact a
    have u7 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd n5 a
      · exact absurd n0 a
      · exact a
    have u8 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact a
    have u9 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n5 a
    have u10 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
    have u11 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact a
      · exact absurd a u2
      · exact absurd a n7
    have u12 : v33 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u10
      · exact a
      · exact absurd a n7
    have u13 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u11 a
    rcases c1465 with a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a u9
  have c2955 : v36 ∨ v5 ∨ v6 ∨ v10 ∨ v13 ∨ v19 ∨ v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u8 : v22 := by
      rcases c2952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u11 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u8 a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u10 a
    have u14 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u4
    have u15 : ¬v7 := by
      rcases c2953 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n3
    have u16 : ¬v42 := by
      rcases c2954 with a|a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd u10 a
      · exact absurd a u13
      · exact absurd a u7
      · exact a
    have u17 : v1 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u6
    have u18 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u17 a
    have u19 : ¬v4 := by
      rcases c6 with a|a|a
      · exact absurd u17 a
      · exact absurd u14 a
      · exact a
    rcases c663 with a|a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2956 : v13 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v31 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u7 : v22 := by
      rcases c2952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u9 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u7 a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v28 := by
      rcases c95 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u9 a
    have u13 : v10 := by
      rcases c2955 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v21 := by
      rcases c2475 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
    have u18 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v15 := by
      rcases c1466 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd u9 a
      · exact absurd a u6
    have u20 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u12
      · exact a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
    have u21 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v33 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u18
      · exact a
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a u12
    have u25 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd a u23
    have u26 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u24 a
    rcases c2937 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a n3
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u23
  have c2957 : v24 ∨ v5 ∨ v6 ∨ v19 ∨ v31 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u8 : v22 := by
      rcases c2952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v23 := by
      rcases c84 with a|a|a
      · exact absurd u5 a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact a
    have u11 : v13 := by
      rcases c2956 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u3
    have u16 : ¬v7 := by
      rcases c2953 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u14
    have u17 : v20 := by
      rcases c809 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a u12
      · exact a
    have u18 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u17 a
      · exact a
    rcases c1466 with a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a n3
    · exact absurd a u19
    · exact absurd u8 a
    · exact absurd u5 a
    · exact absurd a u7
  have c2958 : ¬v13 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v27 ∨ v28 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v21 := by
      rcases c1365 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v20 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd n0 a
    have u9 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u8 a
      · exact a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n10
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n5
    · exact absurd n6 a
    · exact absurd a n7
  have c2959 : ¬v20 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
  have c2960 : v36 ∨ v5 ∨ v6 ∨ v19 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v24 := by
      rcases c2957 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u4 : v26 := by
      rcases c2928 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
    have u5 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u6 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u4 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v25 := by
      rcases c107 with a|a|a
      · exact absurd u3 a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u3 a
    have u11 : ¬v20 := by
      rcases c2959 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a n4
    have u12 : ¬v13 := by
      rcases c2958 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
    have u13 : v41 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u9
      · exact a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u5
    have u14 : ¬v42 := by
      rcases c166 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v39 := by
      rcases c162 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v37 := by
      rcases c155 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v29 := by
      rcases c2934 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u16
    have u19 : ¬v35 := by
      rcases c552 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u18
    have u20 : v33 := by
      rcases c2943 with a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u17
    have u21 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : v21 := by
      rcases c2937 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u15
      · exact absurd a u17
    have u23 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u22 a
      · exact a
    rcases c1630 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd u3 a
    · exact absurd a u8
  have c2961 : v22 ∨ v5 ∨ v6 ∨ v19 ∨ v20 ∨ v27 ∨ v28 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u4 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
    have u5 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v21 := by
      rcases c393 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd u4 a
    rcases c1365 with a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c2962 : v28 ∨ v5 ∨ v6 ∨ v19 ∨ v20 ∨ v22 ∨ ¬v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v36 := by
      rcases c2960 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v27 := by
      rcases c2961 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a u12
    have u16 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n6 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd n6 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
    have u19 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u17
    have u20 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u19
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u21 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u7
  have c2963 : v19 ∨ v5 ∨ v6 ∨ v20 ∨ v22 ∨ v23 ∨ ¬v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v36 := by
      rcases c2960 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n7
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v28 := by
      rcases c2962 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n6 a
      · exact absurd a n7
    have u16 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd n6 a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v26 := by
      rcases c111 with a|a|a
      · exact absurd n6 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u16
      · exact absurd a u17
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
    have u19 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u17
    have u20 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u19
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u21 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u14
    · exact absurd a u12
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u7
  have c2964 : v22 ∨ v5 ∨ v6 ∨ v19 ∨ v23 ∨ ¬v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v36 := by
      rcases c2960 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
    have u6 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v20 := by
      rcases c2963 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
    have u10 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v25 := by
      rcases c2959 with a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
    have u12 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u11 a
    have u15 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u15 a
    rcases c1568 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
  have c2965 : ¬v24 ∨ v5 ∨ v6 ∨ v19 ∨ v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v22 := by
      rcases c2964 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n5
    have u6 : ¬v21 := by
      rcases c2039 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    have u7 : ¬v25 := by
      rcases c87 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v15 := by
      rcases c2823 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
      · exact absurd a n5
    have u9 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v26 := by
      rcases c1466 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd u5 a
      · exact a
      · exact absurd a u9
    have u12 : v36 := by
      rcases c2928 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u13 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u11
      · exact a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
    rcases c2926 with a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u11
    · exact absurd a n5
    · exact absurd a u15
    · exact absurd a u13
  have c2966 : v24 ∨ v5 ∨ v6 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : v7 := by
      rcases c809 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a n5
    have u9 : ¬v3 := by
      rcases c2953 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
    have u10 : v17 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u6
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u10 a
    rcases c393 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a u11
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd n3 a
  have c2967 : ¬v22 ∨ v5 ∨ v6 ∨ v19 ∨ ¬v27 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v24 := by
      rcases c89 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u9 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v25 := by
      rcases c92 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u11 : ¬v26 := by
      rcases c94 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u12 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u13 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
    have u14 : ¬v31 := by
      rcases c2715 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact a
    have u15 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u16 : v36 := by
      rcases c2928 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u14
      · exact a
    have u17 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u11
    have u20 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u21 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u19
    have u22 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u21 a
    rcases c392 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u18
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u26
    · exact absurd a u25
    · exact absurd a u2
    · exact absurd a u7
  have c2968 : ¬v28 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v30 := by
      rcases c719 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2969 : v26 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v27 ∨ v31 ∨ v34 ∨ v37 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u6 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n0
    have u8 : v28 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
    rcases c2968 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd n5 a
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n9
    · exact absurd a n10
  have c2970 : ¬v10 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u8 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v16 := by
      rcases c2625 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u11 : ¬v30 := by
      rcases c714 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd n5 a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u9
    have u12 : v2 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    rcases c1093 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd u12 a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd n5 a
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c2971 : v10 ∨ v5 ∨ v6 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v3 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
    have u8 : ¬v7 := by
      rcases c2953 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a n0
    have u9 : v1 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u6
    have u10 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u9 a
    have u11 : v4 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    rcases c6 with a|a|a
    · exact absurd u9 a
    · exact absurd u7 a
    · exact absurd u11 a
  have c2972 : v25 ∨ v5 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v27 ∨ v31 ∨ ¬v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd n8 a
    have u9 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd n8 a
    have u10 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd n8 a
    have u11 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd n8 a
    have u12 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n8 a
    have u13 : v10 := by
      rcases c2971 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
    have u14 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
    have u15 : v26 := by
      rcases c2969 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v33 := by
      rcases c2970 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u15 a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a u14
      · exact a
      · exact absurd a u11
      · exact absurd a u8
    have u17 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u16 a
      · exact a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n8 a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u17
  have c2973 : v20 ∨ v5 ∨ v6 ∨ v19 ∨ v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u6 : ¬v24 := by
      rcases c2965 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u8 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v13 := by
      rcases c2966 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
    have u14 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u13
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u5
    have u15 : ¬v22 := by
      rcases c2967 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u9
    have u16 : v25 := by
      rcases c2972 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd u14 a
      · exact absurd a n5
      · exact absurd u7 a
    have u17 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u16 a
    have u18 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd u16 a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
    have u20 : v21 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u14 a
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u18
      · exact a
      · exact absurd a u17
    have u21 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd a u18
    have u23 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd a u18
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u7 a
    · exact absurd a u3
    · exact absurd a u12
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u22
    · exact absurd a u23
  have c2975 : ¬v27 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v24 := by
      rcases c2964 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u5 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
    have u6 : v20 := by
      rcases c2973 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v25 := by
      rcases c2972 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd u5 a
    have u10 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd u9 a
      · exact absurd a u11
    have u13 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd u9 a
      · exact absurd a u11
    have u14 : v35 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u8
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u12
    have u15 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u14 a
      · exact a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd a u4
    · exact absurd u9 a
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a u16
    · exact absurd a u15
  have c2976 : v25 ∨ v5 ∨ v6 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v10 := by
      rcases c2971 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u10 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v1 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u16 : v26 := by
      rcases c117 with a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a n7
      · exact absurd a n0
    have u17 : v33 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a n8
      · exact absurd a u14
      · exact a
      · exact absurd a u9
    have u18 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u18
      · exact a
    rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u21 a
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u15
    · exact absurd a u19
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a u11
    · exact absurd a u13
    · exact absurd a n9
    · exact absurd a u7
  have c2977 : v27 ∨ v5 ∨ v6 ∨ ¬v10 ∨ v19 ∨ v23 ∨ v28 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v20 := by
      rcases c2973 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    rcases c618 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a n6
  have c2978 : ¬v26 ∨ v5 ∨ v6 ∨ v19 ∨ v22 ∨ v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v27 := by
      rcases c2975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v20 := by
      rcases c2973 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v24 := by
      rcases c2964 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
    have u14 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact a
    have u15 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v25 := by
      rcases c2976 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u21 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u20 a
    have u22 : ¬v30 := by
      rcases c691 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a u18
      · exact absurd a u9
    have u23 : ¬v10 := by
      rcases c2977 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u21
      · exact absurd a n6
    have u24 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u25 : ¬v7 := by
      rcases c2953 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u23
    have u26 : v1 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n2
      · exact a
      · exact absurd a u25
      · exact absurd a u2
      · exact absurd a u6
    have u27 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u26 a
    have u28 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u18
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u22
    have u29 : ¬v13 := by
      rcases c47 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v12 := by
      rcases c46 with a|a
      · exact absurd u28 a
      · exact a
    have u31 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u28 a
      · exact a
    rcases c618 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u30
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a u7
    · exact absurd a u21
  have c2979 : v22 ∨ v5 ∨ v6 ∨ v19 ∨ v23 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v26 := by
      rcases c2978 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v36 := by
      rcases c2928 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u10 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v27 := by
      rcases c2975 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u16 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u15
    have u17 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u18 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u24 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u25 : v1 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n2
      · exact a
      · exact absurd a u24
      · exact absurd a u2
      · exact absurd a u7
    have u26 : v2 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u25 a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u24
      · exact a
      · exact absurd a u20
      · exact absurd a u21
    rcases c1 with a|a|a
    · exact absurd u26 a
    · exact absurd u23 a
    · exact absurd u25 a
  have c2980 : v23 ∨ v5 ∨ v6 ∨ v19 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v22 := by
      rcases c2979 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u10 : v20 := by
      rcases c2973 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u11 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v24 := by
      rcases c1984 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u14
      · exact a
      · exact absurd a n4
    have u17 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u18 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : ¬v27 := by
      rcases c2967 with a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
    have u23 : ¬v26 := by
      rcases c1466 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd u9 a
      · exact a
      · exact absurd a u8
    have u24 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u20
      · exact absurd a u19
    have u25 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u26 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : v25 := by
      rcases c2971 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u16
      · exact a
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u21
    have u29 : v28 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u23
      · exact absurd a u22
      · exact a
    rcases c93 with a|a|a
    · exact absurd u9 a
    · exact absurd u29 a
    · exact absurd u28 a
  have c2981 : v26 ∨ v5 ∨ v6 ∨ v19 ∨ v27 ∨ v39 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
    have u10 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u17 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u18 : v1 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u7
    have u19 : v2 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u17
      · exact a
      · exact absurd a u13
      · exact absurd a u14
    rcases c1 with a|a|a
    · exact absurd u19 a
    · exact absurd u16 a
    · exact absurd u18 a
  have c2982 : v27 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
    have u5 : v23 := by
      rcases c2980 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
    have u6 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v26 := by
      rcases c2981 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u12 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v25 := by
      rcases c101 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u5 a
    have u14 : v32 := by
      rcases c2939 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a n0
      · exact absurd a n5
      · exact a
    have u15 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u14 a
      · exact a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u17
    · exact absurd a u15
  have c2983 : v24 ∨ v5 ∨ v6 ∨ v19 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v23 := by
      rcases c2980 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u11 : v36 := by
      rcases c2957 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
    have u12 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v37 := by
      rcases c146 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : v27 := by
      rcases c2982 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u18 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v25 := by
      rcases c102 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
    have u21 : ¬v29 := by
      rcases c1593 with a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd u17 a
    have u22 : ¬v33 := by
      rcases c325 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u18
    have u23 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u22
    have u24 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u25 : v30 := by
      rcases c2414 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a u22
      · exact absurd a u8
    have u26 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u24 a
      · exact a
    have u30 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u24 a
    have u31 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u25 a
    have u32 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n1
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u33 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u34 : v1 := by
      rcases c369 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u11 a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u31
      · exact absurd a u27
      · exact a
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd a u15
      · exact absurd a u7
    have u35 : v2 := by
      rcases c553 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u34 a
      · exact absurd a u3
      · exact absurd a u27
      · exact absurd a u33
      · exact a
      · exact absurd a u28
      · exact absurd a u29
    rcases c1 with a|a|a
    · exact absurd u35 a
    · exact absurd u32 a
    · exact absurd u34 a
  have c2984 : v31 ∨ v5 ∨ v6 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v23 := by
      rcases c2980 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u6 : v24 := by
      rcases c2983 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
    have u7 : ¬v28 := by
      rcases c100 with a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u9 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u5 a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
    have u11 : v36 := by
      rcases c2928 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
    have u12 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v41 := by
      rcases c150 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v40 := by
      rcases c149 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v20 := by
      rcases c2961 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u13
    have u16 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
    have u17 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v13 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u7
    rcases c56 with a|a
    · exact absurd u18 a
    · exact absurd u19 a
  have c2985 : v26 ∨ v5 ∨ v6 ∨ v19 ∨ v27 ∨ v39 ∨ v40 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v33 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v31 := by
      rcases c2984 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u8
    have u11 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u11 a
    have u17 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u18 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u19 : ¬v42 := by
      rcases c2907 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    have u20 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u12
    rcases c539 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u7
  have c2986 : v27 ∨ v5 ∨ v6 ∨ v19 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v31 := by
      rcases c2984 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v41 := by
      rcases c2943 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u16
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v26 := by
      rcases c2985 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
    have u20 : ¬v23 := by
      rcases c2110 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
    have u21 : v25 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u19 a
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u9
    have u22 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u23 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u24 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u21 a
    have u25 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u14
    have u26 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u10
    have u28 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u27
      · exact absurd a u15
    have u29 : v7 := by
      rcases c539 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a u7
    have u30 : v20 := by
      rcases c2961 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd a u17
    have u31 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u30 a
    have u32 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u30 a
      · exact a
    have u33 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u30 a
    have u34 : v2 := by
      rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u31
      · exact absurd a u33
      · exact absurd a u32
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u35 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u29 a
    have u36 : v8 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u27
      · exact absurd a u35
      · exact absurd a u22
      · exact absurd a u10
      · exact a
      · exact absurd a u31
    have u37 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u36 a
      · exact a
    have u38 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd u36 a
      · exact a
    have u39 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u36 a
      · exact a
    rcases c618 with a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u37
    · exact absurd a u39
    · exact absurd a u38
    · exact absurd a n0
    · exact absurd a u23
  have c2987 : ¬v26 ∨ v5 ∨ v6 ∨ v19 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v31 := by
      rcases c2984 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u9 : v27 := by
      rcases c2986 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
    have u15 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u16 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
    have u17 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u9 a
      · exact absurd n0 a
      · exact a
    have u18 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd n0 a
    have u19 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u21 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u13
    have u22 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u10
    have u24 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u23
      · exact absurd a u19
    have u25 : v7 := by
      rcases c539 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u7
    have u26 : ¬v8 := by
      rcases c1801 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u5
    have u27 : v18 := by
      rcases c656 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u25 a
      · exact a
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u20
      · exact absurd a u5
    have u28 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u27 a
    have u29 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u23
      · exact a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u26
      · exact absurd a u29
    have u32 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u25 a
    rcases c1146 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u32
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a u28
    · exact absurd a u30
    · exact absurd a u17
    · exact absurd a u11
    · exact absurd a u19
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u5
  have c2988 : v19 ∨ v5 ∨ v6 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u9 : v31 := by
      rcases c2984 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u10 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v40 := by
      rcases c1272 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u17 : ¬v41 := by
      rcases c2943 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u16
    have u18 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u14
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v27 := by
      rcases c2986 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    have u20 : ¬v26 := by
      rcases c2987 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u17
    have u21 : ¬v23 := by
      rcases c2770 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u20
      · exact absurd u19 a
    have u22 : v12 := by
      rcases c1568 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u23 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : ¬v22 := by
      rcases c2967 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
    have u29 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u21
    have u30 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u29
      · exact absurd a u25
      · exact absurd a u3
      · exact a
      · exact absurd a u11
    have u31 : v4 := by
      rcases c2876 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u12
    have u32 : ¬v7 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u33 : v3 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u34 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u30 a
      · exact absurd u33 a
      · exact a
    have u35 : v42 := by
      rcases c392 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a u34
      · exact absurd a u32
      · exact absurd a u2
      · exact absurd a u7
    have u36 : ¬v36 := by
      rcases c151 with a|a
      · exact absurd u35 a
      · exact a
    have u37 : v15 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u36
      · exact absurd a u34
      · exact absurd a u28
      · exact absurd a u10
      · exact absurd a u24
      · exact a
    have u38 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u37 a
      · exact a
    rcases c362 with a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u28
    · exact absurd a u38
    · exact absurd u37 a
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u29
    · exact absurd a u25
  have c2989 : ¬v31 ∨ ¬v19 ∨ v23 ∨ v26 ∨ ¬v27 ∨ v39 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n0 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u13 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u16 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u17 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u19 : v28 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u12
      · exact absurd a u17
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a n3
    have u20 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd n4 a
      · exact absurd a u12
    have u21 : ¬v24 := by
      rcases c1981 with a|a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a u10
    have u22 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u19 a
      · exact absurd n4 a
      · exact a
    have u23 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a u11
    have u24 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u22
      · exact absurd a n3
    have u25 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v36 := by
      rcases c218 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
      · exact absurd a u25
      · exact absurd a u10
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u7
    have u27 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u26
      · exact a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u14
    have u28 : v11 := by
      rcases c1515 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    rcases c667 with a|a|a|a|a|a|a|a
    · exact absurd u28 a
    · exact absurd n1 a
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a n3
    · exact absurd a u11
    · exact absurd a u9
    · exact absurd a u12
  have c2990 : v23 ∨ v5 ∨ v6 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u7 : ¬v31 := by
      rcases c2989 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u14 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd n6 a
      · exact absurd a u6
    have u15 : v42 := by
      rcases c2971 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n8
      · exact a
    have u16 : ¬v36 := by
      rcases c2972 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a u7
      · exact a
    have u17 : ¬v37 := by
      rcases c156 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v40 := by
      rcases c165 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u13
    have u20 : ¬v32 := by
      rcases c909 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a u18
    rcases c2892 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd u5 a
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u19
    · exact absurd a u7
    · exact absurd a u20
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a n7
  have c2991 : v36 ∨ v5 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v30 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u7 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u9 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u10 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u7
    have u11 : v3 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u4
    have u12 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u6 a
    have u13 : v10 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u12
      · exact absurd a u10
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u14 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u8
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a n8
    rcases c44 with a|a
    · exact absurd u14 a
    · exact absurd u13 a
  have c2992 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v42 := by
      rcases c151 with a|a
      · exact a
      · exact absurd n0 a
    rcases c218 with a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n1
  have c2993 : v5 ∨ v6 ∨ v23 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v32 ∨ v39 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v25 := by
      rcases c2990 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u7 : ¬v31 := by
      rcases c2989 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n7
    have u8 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u5 a
    have u9 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u5 a
    have u10 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v29 := by
      rcases c1281 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
    have u13 : v33 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
    have u14 : ¬v30 := by
      rcases c1279 with a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd a n4
    have u15 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v36 := by
      rcases c2991 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u7
    rcases c2992 with a|a|a|a|a
    · exact absurd u17 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a u15
  have c2994 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v27 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v25 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
    rcases c108 with a|a|a
    · exact absurd n0 a
    · exact absurd n5 a
    · exact absurd u1 a
  have c2995 : v39 ∨ v5 ∨ v6 ∨ v23 ∨ v26 ∨ ¬v27 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u3 : ¬v31 := by
      rcases c2989 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c2994 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a u3
    have u10 : v25 := by
      rcases c2990 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n6
    have u11 : v32 := by
      rcases c2993 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
    have u12 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd u10 a
    have u13 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u11 a
      · exact a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n4
  have c2996 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v24 ∨ v26 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    rcases c2761 with a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n6
  have c2997 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ v26 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v24 := by
      rcases c99 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    rcases c2996 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd n6 a
  have c2998 : v26 ∨ v5 ∨ v6 ∨ ¬v27 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u7 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u8 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v23 := by
      rcases c2997 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd n3 a
    have u14 : v39 := by
      rcases c2995 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
    have u15 : v32 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u14 a
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u21 : ¬v24 := by
      rcases c2994 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd n3 a
      · exact absurd a u17
    have u22 : v28 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u7
      · exact absurd a u12
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n0
    have u23 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u22 a
      · exact absurd n3 a
      · exact a
    have u24 : v10 := by
      rcases c2971 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u16
    rcases c1493 with a|a|a|a
    · exact absurd u24 a
    · exact absurd u6 a
    · exact absurd a u23
    · exact absurd a n0
  have c2999 : v37 ∨ v5 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v31 ∨ v36 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a u6
    have u9 : ¬v29 := by
      rcases c2934 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
    have u10 : v1 := by
      rcases c2680 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u11 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n0
    have u12 : v3 := by
      rcases c1934 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u4
    have u13 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u10 a
    have u14 : v10 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u15 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u7
      · exact a
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u8
    rcases c44 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c3000 : v31 ∨ v5 ∨ v6 ∨ ¬v27 ∨ v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c2342 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u8 : v26 := by
      rcases c2998 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u9 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u10 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u12 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u13 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n3 a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u15 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u17 : ¬v36 := by
      rcases c2972 with a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
    have u18 : v37 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u17
    have u19 : v30 := by
      rcases c1941 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v42 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : v10 := by
      rcases c2971 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u20
    have u24 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : v1 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u17
      · exact a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u15
    rcases c1515 with a|a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd u26 a
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u22
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u6
  have c3001 : v41 ∨ v5 ∨ v6 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v47 := by
      rcases c186 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v19 := by
      rcases c2988 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u9 : ¬v34 := by
      rcases c2905 with a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    have u10 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd n3 a
      · exact absurd a u9
    have u16 : v26 := by
      rcases c2998 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
    have u17 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u16 a
    have u18 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n3 a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u16 a
    have u20 : v31 := by
      rcases c3000 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n0
    have u21 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v37 := by
      rcases c2574 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u26 : ¬v39 := by
      rcases c1257 with a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u24
      · exact a
      · exact absurd a u4
      · exact absurd a u5
    have u27 : ¬v36 := by
      rcases c2992 with a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u25
    have u28 : v38 := by
      rcases c450 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u24
    have u29 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u28 a
    have u30 : v7 := by
      rcases c539 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u27
      · exact absurd a u7
    have u31 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd n3 a
      · exact absurd u16 a
      · exact a
    have u32 : ¬v4 := by
      rcases c2942 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a u25
    have u33 : v11 := by
      rcases c2687 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u32
      · exact a
      · exact absurd a u12
      · exact absurd a u31
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u34 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u33 a
      · exact a
    have u35 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u33 a
    have u36 : v3 := by
      rcases c2356 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u32
      · exact absurd a u35
      · exact absurd u33 a
      · exact absurd a u34
      · exact absurd a u12
    rcases c2953 with a|a|a
    · exact absurd u30 a
    · exact absurd u36 a
    · exact absurd a u35
  have c3002 : ¬v31 ∨ ¬v41 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v40 := by
      rcases c164 with a|a
      · exact absurd n1 a
      · exact a
    rcases c2943 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
  have c3003 : v23 ∨ v5 ∨ ¬v19 ∨ v22 ∨ ¬v27 ∨ v31 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v49 := c2875
    have u2 : ¬v43 := by
      rcases c172 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v44 := by
      rcases c177 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c181 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c184 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v48 := by
      rcases c187 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u8 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u9 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u10 : ¬v24 := by
      rcases c2994 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd a n5
    have u11 : v28 := by
      rcases c2999 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u12 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u11 a
      · exact absurd n4 a
      · exact a
    have u14 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u11 a
      · exact absurd n4 a
      · exact a
    have u15 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u14
    have u16 : ¬v9 := by
      rcases c1494 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u14
    have u17 : ¬v8 := by
      rcases c1491 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd a u14
    have u18 : v3 := by
      rcases c2707 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
    have u19 : v2 := by
      rcases c2306 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
    have u20 : ¬v7 := by
      rcases c2953 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u15
    have u21 : ¬v6 := by
      rcases c16 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u23 : v41 := by
      rcases c3001 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd n4 a
    have u24 : v42 := by
      rcases c395 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u6
    rcases c166 with a|a
    · exact absurd u23 a
    · exact absurd u24 a
  have c3004 : ¬v23 ∨ v16 ∨ v17 ∨ v18 ∨ v20 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n0 a
    rcases c2997 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd n5 a
  exact ⟨c2959, c2988, c2992, c2994, c2999, c3001, c3002, c3003, c3004⟩
