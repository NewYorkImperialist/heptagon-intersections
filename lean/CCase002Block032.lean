import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1600-1649 of the 2934-step refutation of ccase002: 126 core clauses and 83 earlier-derived ones give 11 more. -/
theorem CCase002_block032
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v1 ∨ ¬v2 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c11 : ¬v1 ∨ ¬v4 ∨ ¬v7)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c15 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c19 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c21 : ¬v2 ∨ ¬v5 ∨ ¬v6)
    (c24 : ¬v5 ∨ ¬v4 ∨ ¬v3)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c28 : ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c31 : ¬v5 ∨ ¬v4 ∨ ¬v7)
    (c33 : ¬v5 ∨ ¬v6 ∨ ¬v7)
    (c36 : ¬v8 ∨ ¬v9)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c41 : ¬v8 ∨ ¬v14)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c46 : ¬v9 ∨ ¬v14)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c55 : ¬v12 ∨ ¬v14)
    (c58 : ¬v16 ∨ ¬v15 ∨ ¬v17)
    (c62 : ¬v16 ∨ ¬v21 ∨ ¬v15)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c69 : ¬v15 ∨ ¬v21 ∨ ¬v18)
    (c73 : ¬v16 ∨ ¬v17 ∨ ¬v18)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c101 : ¬v22 ∨ ¬v24)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c116 : ¬v25 ∨ ¬v27)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c121 : v22 ∨ v23 ∨ v25 ∨ v24 ∨ v28 ∨ v26 ∨ v27)
    (c122 : ¬v30 ∨ ¬v29)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c127 : ¬v29 ∨ ¬v35)
    (c128 : ¬v30 ∨ ¬v31)
    (c129 : ¬v32 ∨ ¬v30)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c132 : ¬v35 ∨ ¬v30)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c136 : ¬v31 ∨ ¬v35)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c139 : ¬v32 ∨ ¬v35)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c144 : ¬v38 ∨ ¬v36)
    (c145 : ¬v39 ∨ ¬v36)
    (c146 : ¬v40 ∨ ¬v36)
    (c148 : ¬v42 ∨ ¬v36)
    (c149 : ¬v38 ∨ ¬v37)
    (c151 : ¬v40 ∨ ¬v37)
    (c154 : ¬v38 ∨ ¬v39)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c163 : ¬v41 ∨ ¬v42)
    (c166 : ¬v43 ∨ ¬v46)
    (c171 : ¬v44 ∨ ¬v46)
    (c175 : ¬v45 ∨ ¬v46)
    (c186 : v36 ∨ v29 ∨ v8 ∨ v1 ∨ v15 ∨ v43 ∨ v22)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c201 : ¬v21 ∨ v28 ∨ v14 ∨ v20 ∨ v8 ∨ v15 ∨ v22 ∨ v13)
    (c203 : ¬v10 ∨ v9 ∨ v4 ∨ v17 ∨ v18 ∨ v3 ∨ v11 ∨ v2)
    (c212 : ¬v46 ∨ v3 ∨ v40 ∨ v25 ∨ v26 ∨ v24 ∨ v32 ∨ v2 ∨ v37 ∨ v4 ∨ v39 ∨ v44 ∨ v45 ∨ v47)
    (c225 : ¬v46 ∨ v39 ∨ v38 ∨ v45 ∨ v4 ∨ v40 ∨ v3 ∨ v47)
    (c232 : ¬v40 ∨ v33 ∨ v41 ∨ v18 ∨ v26 ∨ v42 ∨ v47 ∨ v19 ∨ v35 ∨ v39 ∨ v32 ∨ v20 ∨ v48 ∨ v49)
    (c235 : ¬v46 ∨ v39 ∨ v3 ∨ v47 ∨ v40 ∨ v5 ∨ v4 ∨ v45)
    (c246 : ¬v32 ∨ v39 ∨ v26 ∨ v25 ∨ v24 ∨ v31 ∨ v33 ∨ v38)
    (c263 : ¬v42 ∨ v36 ∨ v43 ∨ v29 ∨ v48 ∨ v35 ∨ v41 ∨ v49)
    (c284 : v13 ∨ v47 ∨ v4 ∨ v48 ∨ v6 ∨ ¬v5 ∨ v12 ∨ v11)
    (c309 : v36 ∨ ¬v21 ∨ v35 ∨ v28 ∨ v19 ∨ v26 ∨ v15 ∨ v22 ∨ v20 ∨ v12 ∨ v14 ∨ v13 ∨ v41 ∨ v42)
    (c353 : ¬v46 ∨ v11 ∨ v40 ∨ v4 ∨ v39 ∨ v12 ∨ v7 ∨ v10 ∨ v3 ∨ v42 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c359 : v13 ∨ v49 ∨ v6 ∨ ¬v7 ∨ v14 ∨ v1 ∨ v8 ∨ v43)
    (c367 : ¬v46 ∨ v4 ∨ v40 ∨ v38 ∨ v39 ∨ v5 ∨ v45 ∨ v47)
    (c376 : v43 ∨ ¬v2 ∨ v44 ∨ v45 ∨ v3 ∨ v1 ∨ v9 ∨ v8)
    (c384 : v36 ∨ v22 ∨ v37 ∨ v23 ∨ v42 ∨ v35 ∨ v30 ∨ ¬v29)
    (c386 : ¬v10 ∨ v11 ∨ v18 ∨ v2 ∨ v17 ∨ v16 ∨ v9 ∨ v3)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c414 : ¬v33 ∨ v40 ∨ v31 ∨ v4 ∨ v38 ∨ v24 ∨ v34 ∨ v26 ∨ v32 ∨ v25 ∨ v5 ∨ v6 ∨ v41 ∨ v47)
    (c419 : ¬v10 ∨ v11 ∨ v4 ∨ v16 ∨ v2 ∨ v3 ∨ v17 ∨ v9)
    (c432 : v36 ∨ v22 ∨ v37 ∨ ¬v29 ∨ v35 ∨ v30 ∨ v28 ∨ v42)
    (c461 : ¬v38 ∨ v31 ∨ v44 ∨ v45 ∨ v3 ∨ v32 ∨ v37 ∨ v4 ∨ v39 ∨ v40 ∨ v41 ∨ v2 ∨ v34 ∨ v48)
    (c497 : ¬v46 ∨ v39 ∨ v47 ∨ v38 ∨ v4 ∨ v3 ∨ v45 ∨ v5)
    (c533 : v36 ∨ ¬v35 ∨ v42 ∨ v27 ∨ v34 ∨ v29 ∨ v28 ∨ v22)
    (c539 : v21 ∨ v23 ∨ v17 ∨ v18 ∨ v24 ∨ v7 ∨ v2 ∨ ¬v10 ∨ v11 ∨ v9 ∨ v14 ∨ v8 ∨ v3 ∨ v25)
    (c566 : v21 ∨ ¬v3 ∨ ¬v4 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c586 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v10 ∨ v15 ∨ v16)
    (c591 : v17 ∨ v11 ∨ ¬v15 ∨ ¬v18 ∨ v24 ∨ v25 ∨ v26)
    (c593 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v28)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c637 : ¬v14 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c649 : v9 ∨ v15 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c718 : ¬v9 ∨ v1 ∨ v2 ∨ v3 ∨ v16 ∨ v17)
    (c742 : ¬v12 ∨ v4 ∨ v5 ∨ v13 ∨ v18 ∨ v19 ∨ v20)
    (c773 : v16 ∨ v14 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c775 : v44 ∨ ¬v14 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v45 ∨ v48)
    (c776 : v9 ∨ v13 ∨ v16 ∨ v20 ∨ v23 ∨ v27 ∨ v30 ∨ v34 ∨ v37 ∨ v41 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c805 : ¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c856 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c860 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c871 : ¬v35 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v41 ∨ v42)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c875 : v19 ∨ v7 ∨ v15 ∨ v20 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v47 ∨ v49)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c892 : ¬v34 ∨ ¬v37 ∨ v38 ∨ v44 ∨ v45)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c941 : ¬v13 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1054 : v10 ∨ v3 ∨ v6 ∨ v13 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1151 : v18 ∨ v3 ∨ v16 ∨ v17 ∨ v24 ∨ v31 ∨ v38 ∨ v44 ∨ v45)
    (c1203 : v17 ∨ ¬v12 ∨ v15 ∨ ¬v16 ∨ v23 ∨ v24)
    (c1383 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1387 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ ¬v18 ∨ v22 ∨ v28)
    (c1469 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1470 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v39 ∨ v45)
    (c1474 : ¬v27 ∨ v19 ∨ v20 ∨ v33 ∨ v34 ∨ v35)
    (c1494 : v38 ∨ v3 ∨ v10 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v45)
    (c1554 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v35 ∨ v41 ∨ v42)
    (c1558 : v34 ∨ ¬v41 ∨ v47 ∨ v48 ∨ v49)
    (c1570 : v39 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v33 ∨ v40)
    (c1584 : ¬v10 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c1644 : ¬v36 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v49)
    (c1646 : ¬v34 ∨ v1 ∨ v8 ∨ v15 ∨ v22 ∨ v43 ∨ v49)
    (c1686 : ¬v27 ∨ v1 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v43 ∨ v48 ∨ v49)
    (c1723 : ¬v30 ∨ v22 ∨ v23 ∨ v24 ∨ v36 ∨ v37)
    (c1757 : v20 ∨ v13 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35)
    (c1770 : ¬v6 ∨ ¬v1 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1773 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1774 : ¬v3 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1776 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1796 : ¬v19 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c1798 : ¬v17 ∨ ¬v16 ∨ ¬v27 ∨ v34)
    (c1802 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ v34)
    (c1804 : ¬v18 ∨ ¬v16 ∨ ¬v27)
    (c1824 : v28 ∨ v8 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23)
    (c1832 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1839 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1864 : ¬v12 ∨ ¬v15 ∨ v16 ∨ v21 ∨ v22)
    (c1870 : ¬v34 ∨ v2 ∨ v9 ∨ v16 ∨ v23 ∨ v43 ∨ v44)
    (c1872 : v13 ∨ v11 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v26)
    (c1930 : v6 ∨ v1 ∨ ¬v7 ∨ v14 ∨ v43 ∨ v48 ∨ v49)
    (c1941 : ¬v27 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1942 : v19 ∨ v6 ∨ v13 ∨ v17 ∨ v18 ∨ v20 ∨ v26 ∨ ¬v33 ∨ v47 ∨ v48 ∨ v49)
    (c2017 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2035 : v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c2039 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c2052 : v32 ∨ v30 ∨ v31 ∨ ¬v38 ∨ v44 ∨ v45)
    (c2066 : ¬v34 ∨ v27 ∨ v40 ∨ v41 ∨ v42)
    (c2099 : ¬v5 ∨ ¬v3 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v44 ∨ v49)
    (c2111 : ¬v16 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c2114 : ¬v6 ∨ ¬v3 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2117 : ¬v19 ∨ v1 ∨ v16 ∨ ¬v21 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2120 : v17 ∨ ¬v6 ∨ ¬v10 ∨ v13 ∨ v16 ∨ v47 ∨ v48 ∨ v49)
    (c2123 : ¬v6 ∨ ¬v2 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2127 : v16 ∨ v2 ∨ v8 ∨ v13 ∨ v17 ∨ v22 ∨ ¬v34 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    (c2135 : v47 ∨ v13 ∨ v17 ∨ v20 ∨ v27 ∨ v38 ∨ v48 ∨ v49)
    (c2136 : v26 ∨ v5 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v33 ∨ v40 ∨ v47)
    (c2141 : v9 ∨ v2 ∨ v16 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c2146 : v11 ∨ ¬v2 ∨ v6 ∨ v12 ∨ v13 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48)
    (c2162 : v28 ∨ v1 ∨ v16 ∨ ¬v17 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2163 : v21 ∨ v1 ∨ v15 ∨ v16 ∨ v22 ∨ v29 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c2165 : v27 ∨ v13 ∨ v20 ∨ v24 ∨ v38 ∨ v47 ∨ v48 ∨ v49)
    (c2166 : ¬v6 ∨ ¬v4 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c2167 : ¬v37 ∨ v3 ∨ v4 ∨ ¬v46 ∨ v47)
    (c2168 : v31 ∨ v22 ∨ v23 ∨ v27 ∨ v29 ∨ ¬v30 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45)
    : (¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45) ∧ (v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49) ∧ (v26 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49) ∧ (v27 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42) ∧ (¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26) ∧ (¬v16 ∨ v1 ∨ v8 ∨ ¬v17 ∨ ¬v27 ∨ v43 ∨ v49) ∧ (¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49) ∧ (v3 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v16 ∨ v13 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49) := by
  have c2169 : ¬v30 ∨ v22 ∨ v23 ∨ v27 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v29 := by
      rcases c122 with a|a
      · exact absurd n0 a
      · exact a
    rcases c2168 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2170 : v38 ∨ v13 ∨ v20 ∨ v27 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v24 := by
      rcases c2165 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n4
    have u7 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v4 := by
      rcases c2166 with a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd u5 a
      · exact absurd a n5
    have u18 : ¬v30 := by
      rcases c2169 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u19 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact a
      · exact absurd a u3
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd a u14
    have u20 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : v15 := by
      rcases c586 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u20
      · exact a
      · exact absurd a u3
    have u23 : ¬v21 := by
      rcases c66 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u4 a
    rcases c1824 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u21
    · exact absurd u22 a
    · exact absurd a u3
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u9
  have c2171 : v41 ∨ v26 ∨ v27 ∨ v28 ∨ ¬v34 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v36 := by
      rcases c1644 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n7
    have u5 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
    rcases c1554 with a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u5
  have c2172 : v49 ∨ v3 ∨ v13 ∨ v20 ∨ v27 ∨ v38 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u2 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n0
    have u3 : v24 := by
      rcases c2165 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u4 : v34 := by
      rcases c2170 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
    have u6 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u4 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u16 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
    have u19 : v41 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a n7
      · exact absurd a n0
    have u20 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v4 := by
      rcases c225 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u22
      · exact absurd a n5
      · exact absurd a u16
      · exact a
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n6
    have u24 : ¬v1 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n0
    have u25 : ¬v21 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd u2 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n0
    have u26 : v15 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact absurd a u24
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n0
    have u27 : ¬v19 := by
      rcases c64 with a|a|a
      · exact absurd u26 a
      · exact absurd u2 a
      · exact a
    have u28 : ¬v12 := by
      rcases c1864 with a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u6
    have u29 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u26 a
      · exact absurd a u1
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd a u8
    have u30 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u27
      · exact absurd a n6
      · exact absurd a u21
    have u31 : ¬v14 := by
      rcases c41 with a|a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u30 a
      · exact absurd u23 a
      · exact a
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u25
    · exact absurd a u32
    · exact absurd a u31
    · exact absurd a u13
    · exact absurd a u7
    · exact absurd a n0
    · exact absurd a u20
  have c2173 : v38 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v17 := by
      rcases c2135 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v3 := by
      rcases c2172 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u8 : v24 := by
      rcases c2165 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v34 := by
      rcases c2170 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v41 := by
      rcases c2171 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v37 := by
      rcases c892 with a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
    have u18 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
    have u19 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v21 := by
      rcases c2162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd u6 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v4 := by
      rcases c566 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u7 a
      · exact a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n6
    have u24 : ¬v5 := by
      rcases c2099 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u22
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n6
    rcases c367 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u23
    · exact absurd a u20
    · exact absurd a n0
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a u4
    · exact absurd a n4
  have c2174 : ¬v30 ∨ v2 ∨ v3 ∨ v4 ∨ ¬v38 ∨ v44 ∨ v45 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v34 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd n4 a
    rcases c461 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a n7
  have c2175 : ¬v23 ∨ v2 ∨ v3 ∨ v4 ∨ v33 ∨ v37 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c108 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v24 := by
      rcases c106 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n8 a
    have u6 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    rcases c212 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n9
  have c2176 : v26 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v38 := by
      rcases c2173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u4
    have u12 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
    have u13 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u12
    have u14 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v4 := by
      rcases c2166 with a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a u9
    have u18 : ¬v7 := by
      rcases c33 with a|a|a
      · exact absurd u17 a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v30 := by
      rcases c2174 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd u2 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n5
    have u20 : ¬v23 := by
      rcases c2175 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n4
    have u21 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v10 := by
      rcases c42 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u21 a
      · exact a
    rcases c353 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u24
    · exact absurd a u8
    · exact absurd a u16
    · exact absurd a u7
    · exact absurd a u22
    · exact absurd a u18
    · exact absurd a u23
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c2177 : v27 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v26 := by
      rcases c2176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v16 := by
      rcases c2111 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v38 := by
      rcases c2173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v28 := by
      rcases c119 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v42 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v40 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u3 a
      · exact a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u11
    have u18 : ¬v29 := by
      rcases c856 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u10
    have u19 : ¬v34 := by
      rcases c2066 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u10
    have u20 : ¬v14 := by
      rcases c775 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd a n4
    have u21 : ¬v35 := by
      rcases c533 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u7
    have u22 : v6 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u19
    have u23 : v9 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : v21 := by
      rcases c773 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n5
    have u25 : ¬v3 := by
      rcases c2114 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v2 := by
      rcases c2123 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u28 : v17 := by
      rcases c718 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u2
      · exact a
    rcases c2162 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u27
    · exact absurd a u2
    · exact absurd u28 a
    · exact absurd a n2
    · exact absurd u24 a
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n4
    · exact absurd a n5
  have c2178 : ¬v35 ∨ v22 ∨ v28 ∨ v36 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd n0 a
    rcases c871 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c2179 : v41 ∨ v3 ∨ v4 ∨ v13 ∨ v20 ∨ ¬v27 ∨ v34 ∨ v39 ∨ v40 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd n9 a
    have u2 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n9 a
    have u3 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u7 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a n8
    have u8 : v35 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd n5 a
      · exact absurd a u6
      · exact absurd a n6
      · exact a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact a
      · exact absurd a u2
      · exact absurd a u1
    rcases c225 with a|a|a|a|a|a|a|a
    · exact absurd n9 a
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n1
    · exact absurd a n10
  have c2180 : v4 ∨ v3 ∨ v6 ∨ v13 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ ¬v33 ∨ v34 ∨ v35 ∨ v38 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n10 a
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v5 := by
      rcases c414 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n10 a
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n11
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n15
    have u6 : v10 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u6 a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd a n16
    · exact absurd a n2
    · exact absurd u5 a
    · exact absurd a u7
    · exact absurd a u8
  have c2181 : ¬v19 ∨ v16 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c599 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
    have u2 : ¬v20 := by
      rcases c86 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v10 := by
      rcases c1584 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n4
  have c2182 : ¬v17 ∨ v20 ∨ ¬v27 ∨ v32 ∨ v34 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v16 := by
      rcases c1798 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u7 : v18 := by
      rcases c1941 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n4
    rcases c85 with a|a|a
    · exact absurd u8 a
    · exact absurd n0 a
    · exact absurd u7 a
  have c2183 : v13 ∨ v3 ∨ v4 ∨ v20 ∨ v34 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n6
    have u14 : v39 := by
      rcases c2179 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd u3 a
      · exact absurd a n6
    have u15 : ¬v42 := by
      rcases c160 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v36 := by
      rcases c145 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v38 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u13
    have u19 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u15
    have u20 : ¬v29 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u13
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u7
      · exact absurd a u15
    have u21 : v33 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
    have u22 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v17 := by
      rcases c2182 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u23
    have u26 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : v6 := by
      rcases c2180 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u23
      · exact absurd u21 a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u30 : ¬v1 := by
      rcases c1770 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u31 : v16 := by
      rcases c2120 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u29 a
      · exact absurd u25 a
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u32 : ¬v2 := by
      rcases c376 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u30
      · exact absurd a u26
      · exact absurd a u28
    have u33 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
    rcases c203 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u24
    · exact absurd a u33
    · exact absurd a n1
    · exact absurd a u27
    · exact absurd a u32
  have c2184 : v13 ∨ v3 ∨ v4 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n5
    have u13 : v40 := by
      rcases c2183 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u12
    have u19 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u15
    have u20 : v5 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u10
      · exact a
    have u21 : ¬v29 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u12
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u15
    have u22 : v33 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u19
    have u23 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c2182 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u10
    have u26 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : v6 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n6
      · exact a
      · exact absurd u20 a
      · exact absurd a u26
      · exact absurd a u27
    have u31 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u29
      · exact absurd a n0
      · exact absurd a u28
      · exact absurd a n6
      · exact absurd a n7
    have u32 : ¬v1 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u29
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a n7
    have u33 : v15 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u29
      · exact absurd a u32
      · exact a
      · exact absurd a u9
      · exact absurd a u5
    have u34 : v16 := by
      rcases c2120 with a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u30 a
      · exact absurd u25 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u35 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u28
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a u15
    rcases c62 with a|a|a
    · exact absurd u34 a
    · exact absurd u35 a
    · exact absurd u33 a
  have c2185 : v13 ∨ v3 ∨ v4 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v35 ∨ v38 ∨ v39 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v5 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact a
    have u4 : v10 := by
      rcases c1470 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u2
    have u5 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v6 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n2
      · exact absurd a n13
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u7
    have u11 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v2 := by
      rcases c21 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u10 a
    have u13 : v16 := by
      rcases c2120 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd u4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n11
    have u15 : v18 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u12
    rcases c79 with a|a|a
    · exact absurd u13 a
    · exact absurd u14 a
    · exact absurd u15 a
  have c2186 : ¬v40 ∨ ¬v16 ∨ ¬v17 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    rcases c232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n12
  have c2187 : v20 ∨ v3 ∨ v4 ∨ v13 ∨ ¬v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v34 := by
      rcases c2184 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u15 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u16 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u6 a
      · exact a
    have u17 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u18 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u7 a
    have u19 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u20 : v17 := by
      rcases c2185 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v5 := by
      rcases c497 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u18
      · exact a
    have u22 : ¬v16 := by
      rcases c2186 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
    have u24 : v18 := by
      rcases c232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u14
      · exact absurd a n5
      · exact a
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u23
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u24 a
    have u26 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u24 a
    have u27 : v1 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v2 := by
      rcases c3 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u21 a
    have u29 : v8 := by
      rcases c1839 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd u27 a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n8
    have u30 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u28
    rcases c36 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c2188 : v16 ∨ ¬v17 ∨ ¬v18 ∨ v19 ∨ v20 ∨ v22 ∨ v23 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : v46 := by
      rcases c2035 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u4 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
    have u5 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v1 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v2 := by
      rcases c5 with a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v5 := by
      rcases c13 with a|a|a
      · exact absurd u7 a
      · exact absurd u4 a
      · exact a
    have u10 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a u8
    have u11 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n14
    rcases c44 with a|a
    · exact absurd u10 a
    · exact absurd u11 a
  have c2189 : v20 ∨ v16 ∨ ¬v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v33 ∨ v35 ∨ v37 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c2035 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u3 : ¬v18 := by
      rcases c2188 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
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
    have u4 : v27 := by
      rcases c121 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n7
      · exact a
    have u5 : v34 := by
      rcases c1474 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n11
      · exact a
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : v5 := by
      rcases c2136 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
    have u14 : v2 := by
      rcases c1870 with a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
    have u15 : v6 := by
      rcases c2146 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    rcases c21 with a|a|a
    · exact absurd u14 a
    · exact absurd u13 a
    · exact absurd u15 a
  have c2190 : v5 ∨ v4 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n8
  have c2191 : v13 ∨ v3 ∨ v4 ∨ ¬v17 ∨ v20 ∨ v40 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v34 := by
      rcases c2184 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n7
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n9
    have u18 : v16 := by
      rcases c2189 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : ¬v18 := by
      rcases c1804 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u2 a
    have u20 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n3 a
    have u21 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd n3 a
    have u22 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u18 a
      · exact absurd n3 a
      · exact a
    have u23 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u21
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u24 : v5 := by
      rcases c2190 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n7
    have u25 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u24 a
    have u26 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd u23 a
    have u27 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u4
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u10
    have u28 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd u23 a
      · exact a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
    rcases c41 with a|a
    · exact absurd u27 a
    · exact absurd u28 a
  have c2192 : v12 ∨ v3 ∨ v4 ∨ v11 ∨ v13 ∨ v17 ∨ v18 ∨ v20 ∨ v38 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v34 := by
      rcases c2184 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u5
    have u12 : ¬v19 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a u6
    have u13 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v2 := by
      rcases c203 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n3
      · exact a
    have u16 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n10
      · exact absurd a n9
    have u17 : ¬v1 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u16 a
    rcases c376 with a|a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd u15 a
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a n1
    · exact absurd a u17
    · exact absurd a u13
    · exact absurd a u14
  have c2193 : v3 ∨ v4 ∨ v13 ∨ v20 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v34 := by
      rcases c2184 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u17 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n7
    have u18 : ¬v42 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n7
    have u19 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact a
      · exact absurd a u16
      · exact absurd a u15
    have u20 : ¬v40 := by
      rcases c2187 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v17 := by
      rcases c2191 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u8
    have u23 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u27 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u22 a
    have u28 : v18 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u21
      · exact a
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u29 : ¬v16 := by
      rcases c1804 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u2 a
    have u30 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a n2
      · exact absurd a u26
      · exact absurd u28 a
      · exact absurd a u10
      · exact absurd a u11
    have u31 : ¬v15 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u25
      · exact a
      · exact absurd u28 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u9
    have u32 : v2 := by
      rcases c419 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u29
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u24
    have u33 : v1 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u31
      · exact absurd a u29
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a n7
    have u34 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u18
    rcases c5 with a|a|a
    · exact absurd u33 a
    · exact absurd u32 a
    · exact absurd u34 a
  have c2194 : v4 ∨ v3 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v37 := by
      rcases c2167 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : v34 := by
      rcases c2184 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n6
    have u21 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u19
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    have u22 : v41 := by
      rcases c2193 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v42 := by
      rcases c163 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : v5 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u24
      · exact a
      · exact absurd a n0
      · exact absurd a u4
    have u27 : v17 := by
      rcases c2185 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u28 : v16 := by
      rcases c2189 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u27 a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u29 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    have u30 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u27 a
    have u31 : ¬v19 := by
      rcases c74 with a|a|a
      · exact absurd u28 a
      · exact absurd u27 a
      · exact a
    have u32 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a u30
      · exact absurd a n3
      · exact absurd a u29
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n6
    have u33 : ¬v6 := by
      rcases c33 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u32 a
    have u34 : ¬v1 := by
      rcases c13 with a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u26 a
    have u35 : v8 := by
      rcases c186 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u14
      · exact a
      · exact absurd a u34
      · exact absurd a u30
      · exact absurd a u3
      · exact absurd a u9
    have u36 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd a u34
      · exact absurd u32 a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
    rcases c41 with a|a
    · exact absurd u35 a
    · exact absurd u36 a
  have c2195 : v44 ∨ ¬v4 ∨ ¬v10 ∨ v13 ∨ v17 ∨ ¬v18 ∨ v20 ∨ ¬v27 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v16 := by
      rcases c1804 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n7 a
    have u7 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n7 a
      · exact a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n7 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n7 a
      · exact a
    have u10 : ¬v21 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a u6
      · exact absurd a u7
    have u11 : ¬v15 := by
      rcases c591 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u2
      · exact a
      · exact absurd n5 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
    have u12 : v1 := by
      rcases c1686 with a|a|a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd n1 a
    have u14 : ¬v7 := by
      rcases c11 with a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
    rcases c1832 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u12 a
    · exact absurd a u13
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n10
  have c2196 : v45 ∨ v3 ∨ v10 ∨ v13 ∨ v17 ∨ v20 ∨ ¬v27 ∨ v40 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n6 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n6 a
      · exact a
    have u7 : v38 := by
      rcases c1494 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n0
    have u8 : ¬v42 := by
      rcases c1469 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v41 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v37 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v39 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c144 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u10
    have u14 : ¬v33 := by
      rcases c860 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a u9
    have u15 : ¬v32 := by
      rcases c1570 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact a
      · exact absurd a u14
      · exact absurd a n7
    have u16 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u8
    have u17 : v31 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a n0
    have u18 : v34 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a u14
      · exact a
      · exact absurd a u16
    rcases c135 with a|a
    · exact absurd u17 a
    · exact absurd u18 a
  have c2197 : v3 ∨ v13 ∨ v17 ∨ v20 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v4 := by
      rcases c2194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v6 := by
      rcases c2166 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : v10 := by
      rcases c2196 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v18 := by
      rcases c2195 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v19 := by
      rcases c1584 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u20
      · exact a
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u6
    have u22 : ¬v33 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u22
      · exact a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a n5
      · exact absurd a n4
    have u24 : ¬v7 := by
      rcases c31 with a|a|a
      · exact absurd u23 a
      · exact absurd u1 a
      · exact a
    have u25 : ¬v2 := by
      rcases c19 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u1 a
    have u26 : v21 := by
      rcases c539 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n0
      · exact absurd a u9
    have u27 : v16 := by
      rcases c386 with a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u25
      · exact absurd a n2
      · exact a
      · exact absurd a u16
      · exact absurd a n0
    have u28 : v15 := by
      rcases c201 with a|a|a|a|a|a|a|a
      · exact absurd u26 a
      · exact absurd a u8
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a u19
      · exact a
      · exact absurd a u7
      · exact absurd a n1
    rcases c62 with a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u28 a
  have c2198 : ¬v16 ∨ v1 ∨ v8 ∨ ¬v17 ∨ ¬v27 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    rcases c1646 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n6
  have c2199 : ¬v33 ∨ ¬v17 ∨ v20 ∨ ¬v27 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v16 := by
      rcases c1798 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
      · exact absurd a u1
    have u8 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a u1
    have u11 : v18 := by
      rcases c1941 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    rcases c85 with a|a|a
    · exact absurd u10 a
    · exact absurd n1 a
    · exact absurd u11 a
  have c2200 : ¬v17 ∨ v13 ∨ v20 ∨ v34 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v16 := by
      rcases c1798 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
    have u9 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
    have u10 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n2
      · exact a
      · exact absurd a n3
    have u11 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n0 a
    have u12 : ¬v18 := by
      rcases c85 with a|a|a
      · exact absurd u10 a
      · exact absurd n0 a
      · exact a
    have u13 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u5
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a u8
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a u6
  have c2201 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v41 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd n0 a
      · exact a
    rcases c263 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n5
  have c2202 : v40 ∨ v3 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v4 := by
      rcases c2194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v6 := by
      rcases c2166 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : v17 := by
      rcases c2197 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v33 := by
      rcases c2199 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v34 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u12
    have u22 : v16 := by
      rcases c2189 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
    have u24 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u13 a
    have u25 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u13 a
    have u26 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a n6
    have u27 : ¬v5 := by
      rcases c31 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u26 a
    have u28 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u26 a
    have u29 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u5
      · exact absurd a u23
      · exact absurd a n4
      · exact absurd a n0
    have u30 : v14 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u28
      · exact absurd u26 a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    rcases c55 with a|a
    · exact absurd u29 a
    · exact absurd u30 a
  have c2203 : ¬v17 ∨ ¬v4 ∨ v20 ∨ ¬v27 ∨ ¬v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n3 a
    have u9 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n3 a
    have u10 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n3 a
    have u12 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u13 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u15 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a u6
    have u17 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v29 := by
      rcases c384 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a u16
      · exact a
    have u20 : ¬v33 := by
      rcases c2199 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u5
    have u22 : ¬v16 := by
      rcases c2186 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v19 := by
      rcases c2181 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd n0 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u8
    have u24 : ¬v1 := by
      rcases c1776 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u22
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n7
    have u25 : v18 := by
      rcases c232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u20
      · exact absurd a u1
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u25 a
    have u27 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u25 a
    rcases c2163 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a u9
    · exact absurd a u19
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a n6
    · exact absurd a n7
  have c2204 : v3 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : v4 := by
      rcases c2194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : ¬v6 := by
      rcases c2166 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : v40 := by
      rcases c2202 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u13 a
      · exact a
    have u19 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
    have u20 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u18
      · exact absurd a u17
    have u21 : ¬v17 := by
      rcases c2203 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd u13 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : v10 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u20
    have u23 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v18 := by
      rcases c2195 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u11 a
      · exact absurd u22 a
      · exact absurd a n1
      · exact absurd a u21
      · exact a
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v16 := by
      rcases c1151 with a|a|a|a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u9
    have u28 : v15 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd u27 a
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u7
    have u29 : ¬v21 := by
      rcases c62 with a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u28 a
    have u30 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u16
    have u31 : ¬v1 := by
      rcases c11 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u30 a
    rcases c359 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd u30 a
    · exact absurd a u24
    · exact absurd a u31
    · exact absurd a u25
    · exact absurd a u8
  have c2205 : ¬v16 ∨ v20 ∨ ¬v27 ∨ v33 ∨ ¬v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v18 := by
      rcases c1804 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n2 a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n2 a
      · exact a
    have u8 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n4 a
    have u9 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u10 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n4 a
    have u11 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n4 a
    have u12 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n4 a
      · exact a
    have u13 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
    have u14 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
    have u15 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
    have u16 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
    rcases c246 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a u15
    · exact absurd a n3
    · exact absurd a u12
  have c2206 : v13 ∨ v17 ∨ v19 ∨ v20 ∨ v33 ∨ ¬v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd n5 a
      · exact a
    have u7 : v46 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u8 a
      · exact a
    have u18 : ¬v16 := by
      rcases c2205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u2
      · exact absurd a u6
    have u21 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u22 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
    have u23 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u24 : ¬v32 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u22
      · exact absurd a n4
      · exact absurd a u5
    have u25 : v18 := by
      rcases c232 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
    have u26 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u25 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
    have u27 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u25 a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
    have u28 : ¬v7 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u23
      · exact a
      · exact absurd a u26
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u29 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u27 a
    have u30 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a n8
      · exact absurd a u3
    rcases c1387 with a|a|a|a|a|a|a
    · exact absurd u30 a
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u26
    · exact absurd u25 a
    · exact absurd a u14
    · exact absurd a u15
  have c2207 : v20 ∨ v13 ∨ v17 ∨ v33 ∨ ¬v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v41 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v42 := by
      rcases c162 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : v46 := by
      rcases c1383 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v16 := by
      rcases c2205 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v30 := by
      rcases c1723 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u4
    have u17 : ¬v35 := by
      rcases c2178 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
    have u18 : ¬v29 := by
      rcases c432 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u4
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u3
    have u19 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
    have u20 : v19 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v21 := by
      rcases c2117 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a u15
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v15 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u19
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v12 := by
      rcases c593 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u13
    have u24 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u22 a
      · exact absurd a u15
      · exact absurd a u21
      · exact absurd a u12
      · exact absurd a u10
    have u25 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u22 a
      · exact absurd u20 a
      · exact a
    have u26 : v11 := by
      rcases c1872 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u23
      · exact absurd a u25
      · exact absurd u20 a
      · exact absurd a n0
      · exact absurd a u11
    rcases c38 with a|a
    · exact absurd u24 a
    · exact absurd u26 a
  have c2208 : ¬v19 ∨ v1 ∨ v16 ∨ v20 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v21 := by
      rcases c2117 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v15 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u1
    have u9 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u7 a
      · exact absurd n0 a
      · exact a
    rcases c654 with a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u9
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u2
  have c2209 : v19 ∨ v6 ∨ ¬v8 ∨ v13 ∨ v16 ∨ v23 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v9 := by
      rcases c36 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v11 := by
      rcases c38 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v12 := by
      rcases c39 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n10
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n11
    have u6 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v4 := by
      rcases c284 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n12
      · exact a
      · exact absurd a n13
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v2 := by
      rcases c2141 with a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a u7
    rcases c19 with a|a|a
    · exact absurd u9 a
    · exact absurd u5 a
    · exact absurd u8 a
  have c2210 : v33 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v34 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
    have u3 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u15 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u4 a
    have u16 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u17 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u16
    have u18 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a u16
      · exact absurd a u15
    have u19 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n8
    have u20 : ¬v19 := by
      rcases c2208 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a n7
      · exact absurd a n8
    have u21 : ¬v40 := by
      rcases c2207 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v8 := by
      rcases c2209 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v15 := by
      rcases c1646 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u19
      · exact absurd a u22
      · exact a
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a n8
    have u24 : v21 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd u23 a
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u5
    have u25 : ¬v18 := by
      rcases c69 with a|a|a
      · exact absurd u23 a
      · exact absurd u24 a
      · exact a
    have u26 : v2 := by
      rcases c2127 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u22
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v4 := by
      rcases c15 with a|a|a
      · exact absurd u26 a
      · exact absurd u3 a
      · exact a
    have u28 : ¬v5 := by
      rcases c16 with a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u3 a
    have u29 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd a n4
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd a u6
    · exact absurd a u20
    · exact absurd a n6
    · exact absurd a u21
  have c2211 : ¬v21 ∨ v13 ∨ ¬v16 ∨ ¬v27 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v17 := by
      rcases c76 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v20 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n3 a
    have u6 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n3 a
      · exact a
    have u7 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u9 : ¬v8 := by
      rcases c36 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u8 a
      · exact a
    rcases c201 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u6
    · exact absurd a u10
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u5
    · exact absurd a n1
  have c2212 : v33 ∨ v13 ∨ v17 ∨ v20 ∨ v35 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u11 : v34 := by
      rcases c1757 with a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
    have u12 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v16 := by
      rcases c2210 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
    have u18 : ¬v21 := by
      rcases c2211 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd u1 a
    have u19 : ¬v40 := by
      rcases c2205 with a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : ¬v18 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
    have u21 : ¬v5 := by
      rcases c2099 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n7
    have u22 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u19
    have u23 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u22 a
    rcases c406 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u21
    · exact absurd a u3
    · exact absurd a u20
    · exact absurd u22 a
  have c2213 : ¬v4 ∨ ¬v3 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v2 := by
      rcases c15 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c24 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a u1
    have u4 : v12 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n9
    rcases c44 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c2214 : v17 ∨ v13 ∨ v19 ∨ v20 ∨ v33 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v35 := by
      rcases c2212 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v6 := by
      rcases c2114 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u11 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u4 a
    have u13 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u4 a
    have u14 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u4 a
      · exact a
    have u15 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u8
    have u16 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u5 a
    have u17 : ¬v45 := by
      rcases c175 with a|a
      · exact a
      · exact absurd u5 a
    have u18 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u5 a
    have u19 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u18
    have u20 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a n7
    have u21 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : ¬v38 := by
      rcases c2052 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u9
      · exact a
      · exact absurd a u18
      · exact absurd a u17
    have u23 : v42 := by
      rcases c2178 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a u21
      · exact a
    have u24 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v16 := by
      rcases c2211 with a|a|a|a
      · exact absurd u15 a
      · exact absurd a n1
      · exact a
      · exact absurd u4 a
    have u27 : ¬v4 := by
      rcases c2213 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a n5
    have u28 : v5 := by
      rcases c367 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a u25
      · exact a
      · exact absurd a u17
      · exact absurd a n5
    have u29 : ¬v2 := by
      rcases c16 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u2 a
    have u30 : v9 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u6
      · exact a
      · exact absurd a u26
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u29
    have u31 : ¬v12 := by
      rcases c44 with a|a
      · exact absurd u30 a
      · exact a
    have u32 : ¬v11 := by
      rcases c43 with a|a
      · exact absurd u30 a
      · exact a
    rcases c284 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u27
    · exact absurd a n6
    · exact absurd a u3
    · exact absurd u28 a
    · exact absurd a u31
    · exact absurd a u32
  have c2215 : v33 ∨ v13 ∨ v17 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : v35 := by
      rcases c2212 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v31 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
    have u17 : v19 := by
      rcases c2214 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u17 a
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u7
    have u19 : ¬v16 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
    have u20 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
    have u21 : v15 := by
      rcases c2163 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a u20
      · exact a
      · exact absurd a u19
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v8 := by
      rcases c1824 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd u21 a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u6
      · exact absurd a u4
    have u23 : ¬v18 := by
      rcases c67 with a|a|a
      · exact absurd u21 a
      · exact absurd u17 a
      · exact a
    rcases c654 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd u17 a
    · exact absurd a n3
    · exact absurd a u8
    · exact absurd a u5
  have c2216 : v16 ∨ ¬v3 ∨ v17 ∨ v20 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v1 := by
      rcases c1774 with a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n13
    have u12 : ¬v19 := by
      rcases c2208 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a u12
      · exact absurd a n3
      · exact a
      · exact absurd a n8
    have u14 : v18 := by
      rcases c1941 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u15 : ¬v13 := by
      rcases c941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
    have u16 : ¬v14 := by
      rcases c637 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
    have u17 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u14 a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
    have u18 : v8 := by
      rcases c1387 with a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u3
      · exact absurd a u4
    rcases c38 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2217 : v17 ∨ v13 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u4 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v25 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v44 := by
      rcases c171 with a|a
      · exact a
      · exact absurd u3 a
    have u12 : v33 := by
      rcases c2215 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v41 := by
      rcases c1558 with a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u20 : ¬v37 := by
      rcases c1773 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u10
      · exact absurd a u11
    have u21 : ¬v36 := by
      rcases c2017 with a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n5
    have u22 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v16 := by
      rcases c2216 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u24 : ¬v19 := by
      rcases c1796 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
    have u25 : v21 := by
      rcases c1802 with a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u24
      · exact absurd a n2
      · exact a
      · exact absurd a u13
    have u26 : ¬v15 := by
      rcases c62 with a|a|a
      · exact absurd u23 a
      · exact absurd u25 a
      · exact a
    have u27 : v9 := by
      rcases c649 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u23 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u9
    have u28 : ¬v12 := by
      rcases c1203 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u26
      · exact absurd u23 a
      · exact absurd a u4
      · exact absurd a u9
    have u29 : ¬v14 := by
      rcases c46 with a|a
      · exact absurd u27 a
      · exact a
    rcases c309 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u25 a
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a u24
    · exact absurd a u5
    · exact absurd a u26
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a u28
    · exact absurd a u29
    · exact absurd a n1
    · exact absurd a u19
    · exact absurd a u22
  have c2218 : ¬v16 ∨ v13 ∨ v19 ∨ v20 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v3 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v17 := by
      rcases c2217 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v27 := by
      rcases c2177 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : v46 := by
      rcases c2039 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v15 := by
      rcases c58 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u6 : v34 := by
      rcases c1798 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v21 := by
      rcases c76 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v18 := by
      rcases c73 with a|a|a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v43 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u6 a
    have u14 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u6 a
      · exact a
    have u15 : ¬v42 := by
      rcases c2201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v40 := by
      rcases c2205 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a u13
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v7 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
      · exact absurd a n6
    have u18 : ¬v5 := by
      rcases c28 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u17 a
    have u19 : ¬v4 := by
      rcases c26 with a|a|a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact a
    have u20 : ¬v12 := by
      rcases c742 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
    rcases c190 with a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u16
  exact ⟨c2169, c2171, c2176, c2177, c2178, c2181, c2198, c2201, c2204, c2217, c2218⟩
