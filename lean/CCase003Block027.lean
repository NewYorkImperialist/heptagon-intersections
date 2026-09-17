import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1350-1399 of the 2559-step refutation of ccase003: 118 core clauses and 64 earlier-derived ones give 18 more. -/
theorem CCase003_block027
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c2 : ¬v1 ∨ ¬v2 ∨ ¬v4)
    (c3 : ¬v2 ∨ ¬v1 ∨ ¬v5)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c10 : ¬v1 ∨ ¬v7 ∨ ¬v4)
    (c12 : ¬v1 ∨ ¬v7 ∨ ¬v5)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c41 : ¬v8 ∨ ¬v12)
    (c42 : ¬v8 ∨ ¬v13)
    (c43 : ¬v8 ∨ ¬v14)
    (c44 : ¬v9 ∨ ¬v10)
    (c46 : ¬v9 ∨ ¬v12)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c51 : ¬v10 ∨ ¬v13)
    (c52 : ¬v10 ∨ ¬v14)
    (c57 : ¬v12 ∨ ¬v14)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
    (c62 : ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v19)
    (c64 : ¬v15 ∨ ¬v20)
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
    (c78 : ¬v19 ∨ ¬v20)
    (c79 : ¬v21 ∨ ¬v19)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c105 : ¬v28 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c124 : ¬v29 ∨ ¬v30)
    (c125 : ¬v29 ∨ ¬v31)
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
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c162 : ¬v41 ∨ ¬v39)
    (c163 : ¬v42 ∨ ¬v39)
    (c169 : ¬v46 ∨ ¬v43)
    (c174 : ¬v46 ∨ ¬v44)
    (c178 : ¬v46 ∨ ¬v45)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c230 : ¬v46 ∨ v4 ∨ v40 ∨ v45 ∨ v38 ∨ v3 ∨ v39 ∨ v47)
    (c233 : v43 ∨ ¬v36 ∨ v44 ∨ v42 ∨ v30 ∨ v37 ∨ v49 ∨ v29)
    (c237 : ¬v40 ∨ v47 ∨ v35 ∨ v26 ∨ v33 ∨ v32 ∨ v48 ∨ v41 ∨ v20 ∨ v39 ∨ v42 ∨ v19 ∨ v18 ∨ v49)
    (c240 : ¬v46 ∨ v39 ∨ v40 ∨ v5 ∨ v3 ∨ v4 ∨ v45 ∨ v47)
    (c241 : v29 ∨ v23 ∨ ¬v22 ∨ v35 ∨ v28 ∨ v21 ∨ v15 ∨ v30)
    (c272 : v43 ∨ ¬v37 ∨ v45 ∨ v44 ∨ v31 ∨ v30 ∨ v36 ∨ v38)
    (c293 : v4 ∨ v6 ∨ v11 ∨ ¬v5 ∨ v13 ∨ v12 ∨ v47 ∨ v48)
    (c294 : v7 ∨ v6 ∨ v21 ∨ v13 ∨ v20 ∨ v15 ∨ v8 ∨ ¬v14)
    (c305 : v27 ∨ ¬v19 ∨ v11 ∨ v26 ∨ v13 ∨ v12 ∨ v18 ∨ v20)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c394 : v36 ∨ v23 ∨ v35 ∨ v37 ∨ v42 ∨ ¬v29 ∨ v22 ∨ v30)
    (c404 : v36 ∨ v29 ∨ v37 ∨ v24 ∨ v31 ∨ ¬v30 ∨ v38 ∨ v23)
    (c406 : v43 ∨ ¬v30 ∨ v24 ∨ v37 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v29 ∨ v23 ∨ v36 ∨ v26 ∨ v44 ∨ v45)
    (c424 : v19 ∨ ¬v18 ∨ v24 ∨ v5 ∨ v17 ∨ v4 ∨ v12 ∨ v22 ∨ v11 ∨ v3 ∨ v16 ∨ v25 ∨ v15 ∨ v8)
    (c427 : ¬v33 ∨ v40 ∨ v6 ∨ v41 ∨ v26 ∨ v24 ∨ v34 ∨ v25 ∨ v32 ∨ v38 ∨ v31 ∨ v5 ∨ v4 ∨ v47)
    (c431 : v36 ∨ ¬v30 ∨ v37 ∨ v31 ∨ v24 ∨ v23 ∨ v22 ∨ v29)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c475 : v29 ∨ v15 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v16 ∨ v30 ∨ v22)
    (c517 : ¬v46 ∨ v39 ∨ v5 ∨ v4 ∨ v38 ∨ v3 ∨ v45 ∨ v47)
    (c518 : ¬v3 ∨ v2 ∨ v9 ∨ v11 ∨ v45 ∨ v44 ∨ v10 ∨ v4)
    (c557 : ¬v31 ∨ v38 ∨ v24 ∨ v30 ∨ v32 ∨ v37 ∨ v25 ∨ v23)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c618 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c729 : v5 ∨ v4 ∨ v11 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c811 : ¬v13 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24)
    (c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c943 : ¬v34 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1080 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v18 ∨ v24 ∨ v25)
    (c1118 : ¬v22 ∨ v19 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34)
    (c1131 : ¬v13 ∨ v6 ∨ v7 ∨ v19 ∨ v20 ∨ v21)
    (c1133 : ¬v1 ∨ ¬v7 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c1139 : ¬v1 ∨ ¬v7 ∨ v16 ∨ v19 ∨ v23 ∨ v26 ∨ v30 ∨ v33 ∨ v37 ∨ v40 ∨ v44 ∨ v47)
    (c1226 : ¬v20 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c1304 : v43 ∨ ¬v1 ∨ ¬v6 ∨ v47 ∨ v48 ∨ v49)
    (c1346 : ¬v42 ∨ v34 ∨ v35 ∨ v41 ∨ v43 ∨ v48 ∨ v49)
    (c1418 : ¬v34 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ ¬v26 ∨ v27)
    (c1466 : v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ ¬v26 ∨ v34)
    (c1483 : ¬v22 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ ¬v27 ∨ v34)
    (c1493 : ¬v10 ∨ ¬v19 ∨ v25 ∨ v26)
    (c1518 : ¬v11 ∨ ¬v1 ∨ v18 ∨ v19 ∨ v43 ∨ v49)
    (c1578 : v5 ∨ v4 ∨ v6 ∨ ¬v12 ∨ v19)
    (c1624 : v23 ∨ v10 ∨ ¬v17 ∨ v24 ∨ v25)
    (c1630 : v31 ∨ v16 ∨ v17 ∨ v18 ∨ v23 ∨ ¬v24 ∨ v25)
    (c1642 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1658 : ¬v21 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35)
    (c1663 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49)
    (c1674 : ¬v4 ∨ ¬v1 ∨ v8 ∨ v9 ∨ v43 ∨ v44 ∨ v49)
    (c1679 : v7 ∨ ¬v1 ∨ v2 ∨ v8 ∨ v43 ∨ v44 ∨ v49)
    (c1680 : ¬v3 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1696 : ¬v37 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v35 ∨ v43 ∨ v44 ∨ v49)
    (c1700 : ¬v33 ∨ v18 ∨ v19 ∨ v20 ∨ v22 ∨ v25 ∨ v26 ∨ v29 ∨ v35 ∨ v36 ∨ v40 ∨ v41)
    (c1713 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 ∨ v41)
    (c1750 : v24 ∨ v26 ∨ v35 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1790 : v23 ∨ v17 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v31 ∨ v32)
    (c1793 : ¬v1 ∨ ¬v4 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49)
    (c1816 : ¬v28 ∨ ¬v26 ∨ v32 ∨ v33 ∨ v34 ∨ v35)
    (c1854 : ¬v19 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30)
    (c1857 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44)
    (c1877 : ¬v1 ∨ v23 ∨ v24 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1886 : ¬v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1887 : v46 ∨ v47 ∨ v48 ∨ v49)
    (c1888 : v47 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v29 ∨ v34 ∨ ¬v35 ∨ v41 ∨ v48 ∨ v49)
    (c1889 : ¬v12 ∨ v3 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v38 ∨ v45)
    (c1902 : ¬v40 ∨ v32 ∨ v33 ∨ v34 ∨ v41 ∨ v47 ∨ v48)
    (c1903 : ¬v31 ∨ v5 ∨ v12 ∨ v19 ∨ v26 ∨ v41 ∨ v47 ∨ v48)
    (c1907 : ¬v9 ∨ ¬v1 ∨ v3 ∨ v6 ∨ v15 ∨ v16 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c1916 : ¬v41 ∨ v34 ∨ v47 ∨ v48 ∨ v49)
    (c1920 : ¬v25 ∨ ¬v1 ∨ v24 ∨ v47 ∨ v48 ∨ v49)
    (c1921 : ¬v10 ∨ v3 ∨ v4 ∨ v16 ∨ v17 ∨ v18)
    (c1923 : ¬v38 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49)
    (c1926 : ¬v34 ∨ ¬v1 ∨ v24 ∨ v27 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1927 : ¬v38 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44 ∨ v45)
    : (¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45) ∧ (v17 ∨ v3 ∨ v4 ∨ v16 ∨ v18 ∨ v24 ∨ v31 ∨ v38 ∨ v45) ∧ (¬v17 ∨ ¬v1 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v34 ∨ ¬v1 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45) ∧ (¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v38 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47) ∧ (¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38) ∧ (v3 ∨ ¬v1 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v31 ∨ ¬v1 ∨ v6 ∨ v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31) ∧ (¬v8 ∨ ¬v1 ∨ v4 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49) ∧ (v26 ∨ v4 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v47) ∧ (v19 ∨ ¬v1 ∨ v4 ∨ v24 ∨ v47 ∨ v48 ∨ v49) := by
  have c1928 : v7 ∨ v6 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v35 ∨ v42 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n6
    have u2 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    rcases c294 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd u1 a
  have c1929 : v24 ∨ ¬v1 ∨ ¬v23 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v26 := by
      rcases c104 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c106 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v20 := by
      rcases c1226 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u6 : v46 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : v7 := by
      rcases c1928 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a u12
      · exact absurd a n13
    have u15 : v40 := by
      rcases c1133 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n8
      · exact a
      · exact absurd a n11
    have u16 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u15 a
    rcases c237 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n11
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u12
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd a n13
  have c1930 : ¬v40 ∨ v18 ∨ v19 ∨ v20 ∨ v26 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd n0 a
    rcases c237 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n11
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n12
  have c1931 : v33 ∨ ¬v1 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n10
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v23 := by
      rcases c1929 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u4 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a n2
    have u8 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
    have u9 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a n13
      · exact absurd a n14
    have u11 : ¬v19 := by
      rcases c1854 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : v15 := by
      rcases c241 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd u7 a
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a u1
      · exact a
      · exact absurd a n7
    have u13 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a n14
    have u17 : ¬v40 := by
      rcases c1930 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v7 := by
      rcases c1139 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n12
    have u19 : ¬v13 := by
      rcases c1131 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u1
    have u20 : v14 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd a n10
      · exact a
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a u10
      · exact absurd a n5
    have u21 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v12 := by
      rcases c57 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n14
    have u25 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u17
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd u25 a
    · exact absurd a u19
    · exact absurd a u22
    · exact absurd a n12
    · exact absurd a n13
  have c1932 : ¬v5 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c12 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1933 : v31 ∨ ¬v1 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v32 ∨ v33 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v46 := by
      rcases c1750 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v23 := by
      rcases c1929 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
    have u8 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v36 := by
      rcases c233 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a n5
    have u10 : ¬v38 := by
      rcases c1923 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n13
    have u11 : v28 := by
      rcases c1931 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n4 a
    have u13 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u14 : ¬v4 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u15 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n13
    have u16 : ¬v12 := by
      rcases c1889 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u4
    have u17 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u4
      · exact absurd a n11
    have u18 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v19 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a u18
    have u20 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v10 := by
      rcases c1493 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u3
      · exact absurd a n3
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u15
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u20
  have c1934 : ¬v19 ∨ v3 ∨ v4 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v10 := by
      rcases c1921 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u2
  have c1935 : v17 ∨ v3 ∨ v4 ∨ v16 ∨ v18 ∨ v24 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v10 := by
      rcases c1921 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a n0
  have c1936 : ¬v17 ∨ ¬v1 ∨ v6 ∨ v22 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u8 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n14
    have u9 : ¬v9 := by
      rcases c1907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u10 : v10 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a n12
      · exact a
      · exact absurd a n7
    have u12 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v7 := by
      rcases c5 with a|a|a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
    rcases c195 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a n8
    · exact absurd a u12
    · exact absurd a u4
    · exact absurd a n14
    · exact absurd a n10
    · exact absurd a n6
  have c1937 : ¬v34 ∨ ¬v1 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
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
    have u7 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c1857 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a u10
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v38 := by
      rcases c1927 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u9
    have u15 : v27 := by
      rcases c1926 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v23 := by
      rcases c1929 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v26 := by
      rcases c1933 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u17 a
    have u19 : ¬v10 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u20 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n6
    have u21 : ¬v17 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u19
      · exact a
      · exact absurd a n2
      · exact absurd a u7
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a u14
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u21
  have c1938 : v5 ∨ v3 ∨ v4 ∨ v12 ∨ v16 ∨ v17 ∨ v19 ∨ v22 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n5
    have u2 : v18 := by
      rcases c1935 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u2 a
    rcases c424 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd u2 a
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u3
  have c1939 : v3 ∨ ¬v1 ∨ v6 ∨ v16 ∨ v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v37 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n13 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n13 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n13 a
      · exact a
    have u4 : ¬v4 := by
      rcases c1793 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
    have u5 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n15
    have u6 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
    have u7 : v38 := by
      rcases c1938 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact a
      · exact absurd a u1
    have u8 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u7 a
    rcases c240 with a|a|a|a|a|a|a|a
    · exact absurd n13 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a u1
    · exact absurd a n14
  have c1940 : ¬v37 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd n0 a
    rcases c272 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a u1
  have c1941 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1940 with a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1942 : v31 ∨ ¬v1 ∨ v3 ∨ v6 ∨ v16 ∨ v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ ¬v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n12 a
      · exact a
    have u2 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n12 a
      · exact a
    have u3 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n12 a
      · exact a
    have u4 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
    rcases c1939 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd n12 a
    · exact absurd a n13
    · exact absurd a n14
  have c1943 : ¬v1 ∨ v3 ∨ v16 ∨ v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n0 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : v30 := by
      rcases c1942 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact a
      · exact absurd u2 a
      · exact absurd a n10
      · exact absurd a n12
    have u9 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v42 := by
      rcases c1642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n12
    have u16 : v37 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u8 a
      · exact a
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u10
    have u17 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v4 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u17
      · exact absurd a n10
    have u20 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n3
    have u21 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u20 a
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd n0 a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n12
  have c1944 : ¬v1 ∨ v3 ∨ v17 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v24 ∨ ¬v30 ∨ v31 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n7 a
    have u2 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd n7 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n7 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n7 a
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u7 : ¬v26 := by
      rcases c1118 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1346 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v36 := by
      rcases c1663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n12
    have u14 : v37 := by
      rcases c406 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n7 a
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u9
    have u15 : ¬v39 := by
      rcases c153 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v38 := by
      rcases c152 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v4 := by
      rcases c230 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a n10
    have u18 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n2
    have u19 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u18 a
    rcases c1679 with a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd n0 a
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n12
  have c1945 : ¬v4 ∨ ¬v1 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v7 := by
      rcases c10 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v2 := by
      rcases c2 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n2
      · exact a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n4
    have u4 : v8 := by
      rcases c1679 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c38 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1946 : v4 ∨ v3 ∨ v6 ∨ ¬v8 ∨ v17 ∨ v24 ∨ v31 ∨ ¬v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n7 a
      · exact a
    have u6 : ¬v5 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v38 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n4
    have u8 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u7 a
    rcases c240 with a|a|a|a|a|a|a|a
    · exact absurd n7 a
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n8
  have c1947 : ¬v5 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c3 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v7 := by
      rcases c12 with a|a|a
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
  have c1948 : ¬v38 ∨ v3 ∨ v4 ∨ v5 ∨ ¬v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v39 := by
      rcases c157 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v40 := by
      rcases c158 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd n4 a
      · exact a
    rcases c240 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a n5
  have c1949 : v3 ∨ ¬v1 ∨ v16 ∨ v17 ∨ v19 ∨ v23 ∨ v24 ∨ v31 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : v22 := by
      rcases c1943 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v30 := by
      rcases c1944 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v37 := by
      rcases c1941 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u10 : ¬v4 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u11 : ¬v8 := by
      rcases c1946 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u13 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n9
    have u14 : v18 := by
      rcases c1935 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u3
    have u15 : v10 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n3
    have u16 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v27 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u17
      · exact a
      · exact absurd a u2
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n8
    · exact absurd a u18
    · exact absurd a n10
    · exact absurd a u2
  have c1950 : v40 ∨ ¬v1 ∨ v6 ∨ ¬v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ v43 ∨ v44 ∨ v45 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v29 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact a
      · exact absurd a n5
      · exact absurd a n10
    have u2 : v28 := by
      rcases c1936 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u3 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n3 a
    have u5 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n20
    have u7 : ¬v26 := by
      rcases c116 with a|a|a
      · exact absurd u2 a
      · exact absurd n9 a
      · exact a
    have u8 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v33 := by
      rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
    rcases c193 with a|a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n19
    · exact absurd a n4
    · exact absurd a u9
    · exact absurd a n0
  have c1951 : v40 ∨ ¬v1 ∨ ¬v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v13 := by
      rcases c811 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v46 := by
      rcases c1877 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd n1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u12 : ¬v11 := by
      rcases c1518 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n15
    have u13 : ¬v4 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n15
    have u14 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n15
    have u15 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u4
      · exact a
      · exact absurd a n11
      · exact absurd a u3
      · exact absurd a n14
      · exact absurd a u7
    have u16 : v35 := by
      rcases c1950 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a u11
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd u15 a
      · exact absurd a n7
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n15
    have u17 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : v28 := by
      rcases c1888 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n13
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd u16 a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u20 : v26 := by
      rcases c729 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a n13
    rcases c116 with a|a|a
    · exact absurd u19 a
    · exact absurd u15 a
    · exact absurd u20 a
  have c1952 : ¬v30 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n0 a
    rcases c404 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n6
    · exact absurd a n1
  have c1953 : v42 ∨ ¬v1 ∨ ¬v17 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v30 := by
      rcases c1952 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    rcases c1951 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n0
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1954 : v47 ∨ ¬v1 ∨ v3 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v31 ∨ v41 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
    have u8 : v17 := by
      rcases c1949 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
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
    have u9 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a u1
    have u13 : v10 := by
      rcases c1624 with a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd u8 a
      · exact absurd a n6
      · exact absurd a u1
    have u14 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u12
      · exact a
      · exact absurd a n8
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a u2
    have u15 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u14 a
      · exact absurd a u2
    have u18 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u19 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n10
    have u20 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd u3 a
      · exact absurd a n0
    have u21 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n0
    have u22 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u21 a
      · exact a
    rcases c1953 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u24
    · exact absurd n1 a
    · exact absurd u8 a
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u23
    · exact absurd a u25
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n9
    · exact absurd a n10
  have c1955 : ¬v46 ∨ ¬v1 ∨ v3 ∨ v16 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ ¬v31 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u7 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u8 : ¬v4 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n10
    have u9 : v38 := by
      rcases c557 with a|a|a|a|a|a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n5
    rcases c1948 with a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd n0 a
    · exact absurd a n9
  have c1956 : v5 ∨ ¬v1 ∨ v19 ∨ v26 ∨ ¬v31 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v12 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v4 := by
      rcases c1674 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n8
    have u8 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c1578 with a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd u1 a
    · exact absurd a n2
  have c1957 : v3 ∨ ¬v1 ∨ v16 ∨ v19 ∨ v23 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v31 := by
      rcases c1954 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : v22 := by
      rcases c1955 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd u7 a
      · exact absurd a n7
      · exact absurd a n9
    have u11 : ¬v26 := by
      rcases c1118 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
    have u12 : v5 := by
      rcases c1956 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v8 := by
      rcases c1947 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
    have u14 : ¬v4 := by
      rcases c8 with a|a|a
      · exact absurd n1 a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd u13 a
      · exact a
    rcases c293 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd u12 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n7
    · exact absurd a n8
  have c1958 : v24 ∨ ¬v1 ∨ ¬v19 ∨ v22 ∨ ¬v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u7 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u9 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v23 := by
      rcases c475 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a n3
    have u11 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u14 : v38 := by
      rcases c557 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u10
    have u15 : ¬v5 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u16 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    have u17 : ¬v4 := by
      rcases c1945 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n7
    rcases c1948 with a|a|a|a|a|a
    · exact absurd u14 a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u15
    · exact absurd u9 a
    · exact absurd a n5
  have c1959 : ¬v31 ∨ ¬v1 ∨ v6 ∨ v13 ∨ ¬v19 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
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
    have u4 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n4 a
    have u8 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u3
    have u10 : ¬v22 := by
      rcases c1483 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u3
    have u11 : v24 := by
      rcases c1958 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u12 : ¬v26 := by
      rcases c110 with a|a|a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u11 a
      · exact a
      · exact absurd u9 a
    rcases c209 with a|a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a u3
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u12
  have c1960 : v25 ∨ v12 ∨ ¬v19 ∨ ¬v24 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v23 := by
      rcases c1630 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
    have u5 : ¬v27 := by
      rcases c99 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    have u6 : ¬v26 := by
      rcases c98 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u4 a
    rcases c669 with a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u5
  have c1961 : ¬v24 ∨ v11 ∨ v12 ∨ v13 ∨ ¬v19 ∨ v31 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : v25 := by
      rcases c1960 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n4 a
      · exact absurd n0 a
      · exact absurd a n5
    have u4 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
    rcases c305 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a u2
  have c1962 : ¬v3 ∨ ¬v1 ∨ v4 ∨ v9 ∨ v10 ∨ v11 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c518 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n2
  have c1963 : ¬v19 ∨ ¬v1 ∨ v3 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v38 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd n1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v31 := by
      rcases c1959 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v24 := by
      rcases c1961 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a u6
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a u7
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u1
  have c1965 : ¬v26 ∨ v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ ¬v24 ∨ v25 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n6 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c1418 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n0 a
      · exact absurd a u1
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a u2
  have c1966 : v25 ∨ v4 ∨ v5 ∨ v6 ∨ v11 ∨ v13 ∨ ¬v17 ∨ v19 ∨ ¬v24 ∨ v31 ∨ v36 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n7
    have u5 : ¬v26 := by
      rcases c1965 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
    have u6 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n7
      · exact a
      · exact absurd a n11
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v22 := by
      rcases c1700 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c873 with a|a|a|a|a|a|a|a
    · exact absurd n8 a
    · exact absurd a u2
    · exact absurd u11 a
    · exact absurd a n0
    · exact absurd a u7
    · exact absurd a u9
    · exact absurd a n9
    · exact absurd a u10
  have c1967 : v26 ∨ v5 ∨ v12 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n5
      · exact a
      · exact absurd a n9
    have u2 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v27 := by
      rcases c1713 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd a n0
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v23 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n3
    rcases c99 with a|a|a
    · exact absurd u4 a
    · exact absurd n6 a
    · exact absurd u5 a
  have c1968 : v18 ∨ v5 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ v17 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v40 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v26 := by
      rcases c1967 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u1 a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n8 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n8 a
    have u6 : v32 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n10
      · exact a
    have u7 : ¬v20 := by
      rcases c618 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
    have u8 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a u7
      · exact absurd a n14
      · exact a
    rcases c140 with a|a
    · exact absurd u8 a
    · exact absurd u6 a
  have c1969 : v40 ∨ v4 ∨ v5 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v31 ∨ v36 ∨ v41 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c1966 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v18 := by
      rcases c1968 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd n10 a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n0
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v26 := by
      rcases c381 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u2 a
      · exact a
      · exact absurd a n11
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
    have u5 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd u4 a
      · exact absurd n10 a
      · exact a
    have u6 : ¬v27 := by
      rcases c110 with a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v28 := by
      rcases c111 with a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n10 a
    have u9 : v32 := by
      rcases c1790 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a n11
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n12
      · exact a
    have u10 : v34 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n14
      · exact absurd a u3
      · exact absurd a n16
      · exact a
    rcases c140 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1970 : v31 ∨ v4 ∨ v5 ∨ v6 ∨ v10 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ ¬v24 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v25 := by
      rcases c1969 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n10 a
      · exact a
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n10 a
    have u3 : ¬v26 := by
      rcases c107 with a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c108 with a|a|a
      · exact absurd n10 a
      · exact a
      · exact absurd u1 a
    have u6 : v34 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a n13
      · exact absurd a n16
    have u7 : ¬v35 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a u2
      · exact absurd u1 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    rcases c943 with a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u7
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1971 : v31 ∨ ¬v1 ∨ v4 ∨ v6 ∨ ¬v8 ∨ v19 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v14 := by
      rcases c43 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n4 a
      · exact a
    have u6 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v5 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v3 := by
      rcases c1962 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u9
    have u12 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd u7 a
      · exact absurd a n10
    have u13 : ¬v24 := by
      rcases c1970 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : v17 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a n0
      · exact a
    have u16 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u14
    rcases c1080 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u1
    · exact absurd a u16
    · exact absurd a u13
    · exact absurd a u14
  have c1972 : ¬v8 ∨ ¬v1 ∨ v4 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v11 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c38 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c42 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v5 := by
      rcases c293 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u1
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
    have u12 : ¬v3 := by
      rcases c1962 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u7
    have u13 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u6 a
      · exact absurd a n3
    have u14 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a n3
    have u15 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v42 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u14 a
      · exact a
    have u20 : ¬v19 := by
      rcases c1963 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u21 : v31 := by
      rcases c1971 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a u20
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u21 a
      · exact a
    have u26 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : v26 := by
      rcases c1903 with a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u20
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u28 : ¬v28 := by
      rcases c1816 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u24
    have u29 : ¬v22 := by
      rcases c1118 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u27 a
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u26
    have u30 : v27 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u29
      · exact a
      · exact absurd a u28
      · exact absurd a u26
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u31 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u27 a
    have u32 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u30 a
      · exact absurd u27 a
      · exact a
    have u33 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u30 a
      · exact absurd u27 a
      · exact a
    rcases c557 with a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u13
    · exact absurd a u31
    · exact absurd a u22
    · exact absurd a u25
    · exact absurd a u19
    · exact absurd a u32
    · exact absurd a u33
  have c1973 : v4 ∨ ¬v1 ∨ v19 ∨ v24 ∨ ¬v31 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v8 := by
      rcases c1972 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c1916 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1902 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a n6
    have u13 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u14 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a n2
    have u16 : v26 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u12
    have u17 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd u16 a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
    have u18 : ¬v22 := by
      rcases c1118 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
    have u19 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u17 a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v37 := by
      rcases c1696 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    have u21 : v38 := by
      rcases c557 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u19
    have u22 : ¬v3 := by
      rcases c1680 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u20
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
    rcases c1948 with a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd u8 a
    · exact absurd a n5
  have c1974 : ¬v3 ∨ ¬v1 ∨ v8 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v2 := by
      rcases c1 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v7 := by
      rcases c7 with a|a|a
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
  have c1975 : ¬v33 ∨ v4 ∨ v5 ∨ v6 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    rcases c427 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a n11
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n9
    · exact absurd a n7
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n12
  have c1976 : v26 ∨ v4 ∨ v5 ∨ v6 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v34 ∨ v38 ∨ v40 ∨ v41 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a n4
    have u2 : v33 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n4
      · exact a
      · exact absurd a n10
    rcases c1975 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1977 : ¬v26 ∨ ¬v1 ∨ v3 ∨ v4 ∨ v19 ∨ v23 ∨ v24 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v16 := by
      rcases c1957 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v46 := by
      rcases c1886 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v8 := by
      rcases c1972 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v31 := by
      rcases c1973 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v21 := by
      rcases c70 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v15 := by
      rcases c60 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v22 := by
      rcases c1466 with a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u6
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
    have u13 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n10
    have u14 : v9 := by
      rcases c629 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u3
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd u2 a
      · exact absurd a n8
    have u16 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u14 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a n2
    · exact absurd a u15
    · exact absurd a n6
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a u7
  have c1978 : v19 ∨ ¬v1 ∨ v4 ∨ v24 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c1972 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v25 := by
      rcases c1920 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v46 := by
      rcases c1887 with a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v45 := by
      rcases c178 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v44 := by
      rcases c174 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v43 := by
      rcases c169 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v3 := by
      rcases c1974 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u8 : ¬v6 := by
      rcases c1304 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v5 := by
      rcases c1947 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u10 : ¬v12 := by
      rcases c1578 with a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u8
      · exact a
      · exact absurd a n0
    have u11 : ¬v38 := by
      rcases c1948 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a n4
    have u12 : v39 := by
      rcases c517 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n4
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v41 := by
      rcases c162 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v34 := by
      rcases c1937 with a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v31 := by
      rcases c1973 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : v26 := by
      rcases c1976 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
    have u18 : v23 := by
      rcases c1977 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v27 := by
      rcases c104 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u20 : ¬v22 := by
      rcases c84 with a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v28 := by
      rcases c105 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u22 : v13 := by
      rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u8
      · exact a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u23 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u7
    · exact absurd a u11
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u16
    · exact absurd a u24
  exact ⟨c1930, c1932, c1934, c1935, c1936, c1937, c1941, c1945, c1947, c1948, c1952, c1957, c1959, c1961, c1972, c1974, c1976, c1978⟩
