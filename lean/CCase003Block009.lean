import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 450-499 of the 2559-step refutation of ccase003: 151 core clauses and 64 earlier-derived ones give 17 more. -/
theorem CCase003_block009
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c1 : ¬v2 ∨ ¬v3 ∨ ¬v1)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c6 : ¬v1 ∨ ¬v3 ∨ ¬v4)
    (c7 : ¬v1 ∨ ¬v7 ∨ ¬v3)
    (c9 : ¬v1 ∨ ¬v4 ∨ ¬v6)
    (c13 : ¬v1 ∨ ¬v7 ∨ ¬v6)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c17 : ¬v2 ∨ ¬v3 ∨ ¬v7)
    (c22 : ¬v2 ∨ ¬v7 ∨ ¬v5)
    (c23 : ¬v2 ∨ ¬v7 ∨ ¬v6)
    (c26 : ¬v7 ∨ ¬v3 ∨ ¬v4)
    (c39 : ¬v8 ∨ ¬v10)
    (c40 : ¬v8 ∨ ¬v11)
    (c42 : ¬v8 ∨ ¬v13)
    (c44 : ¬v9 ∨ ¬v10)
    (c45 : ¬v9 ∨ ¬v11)
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
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c88 : ¬v22 ∨ ¬v26 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c92 : ¬v22 ∨ ¬v27 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c97 : ¬v23 ∨ ¬v25 ∨ ¬v24)
    (c98 : ¬v26 ∨ ¬v24 ∨ ¬v23)
    (c99 : ¬v27 ∨ ¬v24 ∨ ¬v23)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c101 : ¬v26 ∨ ¬v25 ∨ ¬v23)
    (c102 : ¬v27 ∨ ¬v25 ∨ ¬v23)
    (c104 : ¬v27 ∨ ¬v26 ∨ ¬v23)
    (c106 : ¬v23 ∨ ¬v28 ∨ ¬v27)
    (c107 : ¬v24 ∨ ¬v26 ∨ ¬v25)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c112 : ¬v24 ∨ ¬v28 ∨ ¬v27)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c115 : ¬v28 ∨ ¬v27 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
    (c118 : v23 ∨ v22 ∨ v28 ∨ v26 ∨ v25 ∨ v24)
    (c120 : v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v24)
    (c122 : v22 ∨ v27 ∨ v26 ∨ v24 ∨ v28 ∨ v25)
    (c125 : ¬v29 ∨ ¬v31)
    (c126 : ¬v29 ∨ ¬v32)
    (c127 : ¬v29 ∨ ¬v33)
    (c130 : ¬v30 ∨ ¬v31)
    (c131 : ¬v32 ∨ ¬v30)
    (c132 : ¬v33 ∨ ¬v30)
    (c135 : ¬v31 ∨ ¬v32)
    (c136 : ¬v33 ∨ ¬v31)
    (c137 : ¬v34 ∨ ¬v31)
    (c138 : ¬v35 ∨ ¬v31)
    (c139 : ¬v32 ∨ ¬v33)
    (c140 : ¬v34 ∨ ¬v32)
    (c141 : ¬v35 ∨ ¬v32)
    (c142 : ¬v34 ∨ ¬v33)
    (c143 : ¬v35 ∨ ¬v33)
    (c147 : ¬v38 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c149 : ¬v40 ∨ ¬v36)
    (c152 : ¬v38 ∨ ¬v37)
    (c153 : ¬v39 ∨ ¬v37)
    (c154 : ¬v40 ∨ ¬v37)
    (c155 : ¬v41 ∨ ¬v37)
    (c157 : ¬v38 ∨ ¬v39)
    (c158 : ¬v40 ∨ ¬v38)
    (c161 : ¬v39 ∨ ¬v40)
    (c169 : ¬v46 ∨ ¬v43)
    (c170 : ¬v47 ∨ ¬v43)
    (c171 : ¬v48 ∨ ¬v43)
    (c188 : v43 ∨ v44 ∨ v49 ∨ v46 ∨ v45 ∨ v47 ∨ v48)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c195 : v7 ∨ v35 ∨ v14 ∨ v21 ∨ v49 ∨ v42 ∨ v28)
    (c208 : ¬v40 ∨ v41 ∨ v39 ∨ v33 ∨ v47 ∨ v46 ∨ v48 ∨ v32)
    (c209 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v35 ∨ v20 ∨ v26)
    (c232 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v33 ∨ v47 ∨ v46 ∨ v38)
    (c235 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v40 ∨ v33 ∨ v48 ∨ v49)
    (c239 : ¬v28 ∨ v22 ∨ v27 ∨ v34 ∨ v35 ∨ v20 ∨ v21 ∨ v15)
    (c243 : v1 ∨ v6 ∨ v49 ∨ v48 ∨ v13 ∨ ¬v7 ∨ v14 ∨ v8)
    (c255 : ¬v19 ∨ v12 ∨ v18 ∨ v26 ∨ v25 ∨ v20 ∨ v13 ∨ v11)
    (c262 : v29 ∨ ¬v28 ∨ v27 ∨ v20 ∨ v22 ∨ v35 ∨ v34 ∨ v21)
    (c263 : ¬v41 ∨ v34 ∨ v35 ∨ v40 ∨ v49 ∨ v42 ∨ v47 ∨ v48)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c269 : ¬v27 ∨ v28 ∨ v33 ∨ v20 ∨ v34 ∨ v35 ∨ v19 ∨ v26)
    (c277 : v36 ∨ v37 ∨ ¬v43 ∨ v44 ∨ v7 ∨ v2 ∨ v1 ∨ v49)
    (c291 : v36 ∨ v37 ∨ ¬v43 ∨ v7 ∨ v9 ∨ v8 ∨ v14 ∨ v1 ∨ v4 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c297 : ¬v26 ∨ v34 ∨ v25 ∨ v20 ∨ v33 ∨ v18 ∨ v19 ∨ v27)
    (c357 : v3 ∨ ¬v2 ∨ v45 ∨ v47 ∨ v44 ∨ v12 ∨ v16 ∨ v8 ∨ v5 ∨ v9 ∨ v17 ∨ v4 ∨ v1 ∨ v15)
    (c368 : v15 ∨ v16 ∨ v17 ∨ v8 ∨ ¬v9 ∨ v1 ∨ v2 ∨ v10)
    (c381 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v17 ∨ v10 ∨ v11 ∨ v19)
    (c382 : v29 ∨ ¬v21 ∨ v28 ∨ v24 ∨ v15 ∨ v8 ∨ v27 ∨ v14 ∨ v34 ∨ v16 ∨ v20 ∨ v17 ∨ v10 ∨ v35)
    (c388 : v23 ∨ v30 ∨ v17 ∨ v25 ∨ v31 ∨ v18 ∨ ¬v24 ∨ v16)
    (c389 : v43 ∨ ¬v2 ∨ v3 ∨ v45 ∨ v44 ∨ v1 ∨ v8 ∨ v9)
    (c394 : v36 ∨ v23 ∨ v35 ∨ v37 ∨ v42 ∨ ¬v29 ∨ v22 ∨ v30)
    (c398 : v15 ∨ ¬v9 ∨ v17 ∨ v8 ∨ v10 ∨ v3 ∨ v2 ∨ v16)
    (c420 : v36 ∨ v29 ∨ v35 ∨ v7 ∨ ¬v43 ∨ v30 ∨ v5 ∨ v1 ∨ v37 ∨ v40 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c447 : v29 ∨ ¬v28 ∨ v35 ∨ v15 ∨ v22 ∨ v34 ∨ v27 ∨ v21)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c463 : ¬v25 ∨ v24 ∨ v26 ∨ v18 ∨ v31 ∨ v32 ∨ v19 ∨ v17)
    (c469 : ¬v39 ∨ v32 ∨ v40 ∨ v45 ∨ v31 ∨ v47 ∨ v46 ∨ v38)
    (c476 : v34 ∨ ¬v27 ∨ v35 ∨ v20 ∨ v19 ∨ v26 ∨ v21 ∨ v28)
    (c508 : v36 ∨ ¬v43 ∨ v5 ∨ v9 ∨ v2 ∨ v1 ∨ v14 ∨ v8 ∨ v40 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c530 : ¬v40 ∨ v41 ∨ v39 ∨ v33 ∨ v46 ∨ v47 ∨ v48 ∨ v34)
    (c555 : v23 ∨ v16 ∨ v24 ∨ v18 ∨ v25 ∨ ¬v17 ∨ v10 ∨ v11)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c558 : ¬v26 ∨ v34 ∨ v25 ∨ v40 ∨ v18 ∨ v46 ∨ v33 ∨ v19 ∨ v31 ∨ v27 ∨ v24 ∨ v17 ∨ v47 ∨ v48)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c593 : v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c626 : v22 ∨ v14 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v27 ∨ v28)
    (c629 : ¬v16 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v24)
    (c635 : ¬v17 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25)
    (c641 : ¬v7 ∨ ¬v4 ∨ v10 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c642 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c643 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c648 : ¬v19 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c675 : v27 ∨ ¬v18 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c676 : v27 ∨ v19 ∨ ¬v24 ∨ v25 ∨ v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c689 : ¬v19 ∨ ¬v26 ∨ v27 ∨ ¬v28 ∨ v34 ∨ v35)
    (c690 : v28 ∨ ¬v4 ∨ v15 ∨ v20 ∨ v21 ∨ v27 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c727 : ¬v19 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v29 ∨ v30)
    (c739 : ¬v13 ∨ v4 ∨ v5 ∨ v6 ∨ v14 ∨ v18 ∨ v20 ∨ v21 ∨ v27 ∨ v33 ∨ v34 ∨ v35)
    (c746 : ¬v18 ∨ v4 ∨ v10 ∨ v11 ∨ v13 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v45 ∨ v46 ∨ v47)
    (c753 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c771 : ¬v24 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v26 ∨ v30 ∨ v31)
    (c780 : v12 ∨ v6 ∨ v13 ∨ v19 ∨ v22 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c781 : ¬v16 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24)
    (c782 : ¬v8 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c785 : ¬v17 ∨ v9 ∨ v10 ∨ v11 ∨ v16 ∨ v23 ∨ v24)
    (c787 : ¬v20 ∨ ¬v24 ∨ ¬v26 ∨ v30 ∨ v31)
    (c788 : v21 ∨ ¬v13 ∨ v16 ∨ v23 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c807 : v28 ∨ ¬v2 ∨ v13 ∨ v16 ∨ v17 ∨ v20 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c817 : v35 ∨ v16 ∨ ¬v20 ∨ v24 ∨ ¬v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v34 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c837 : v16 ∨ ¬v3 ∨ ¬v4 ∨ v10 ∨ v15 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c839 : ¬v19 ∨ v22 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v35)
    (c845 : ¬v19 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c847 : v15 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32)
    (c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48)
    (c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c899 : v25 ∨ ¬v19 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c918 : ¬v21 ∨ v22 ∨ ¬v23 ∨ v24 ∨ v30 ∨ v31)
    (c923 : ¬v6 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c929 : ¬v12 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v47 ∨ v48 ∨ v49)
    (c938 : v47 ∨ ¬v6 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v48 ∨ v49)
    (c943 : ¬v34 ∨ v27 ∨ v28 ∨ v35 ∨ v40 ∨ v41 ∨ v42)
    (c946 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c958 : ¬v4 ∨ ¬v5 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c960 : v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c963 : v36 ∨ ¬v6 ∨ ¬v12 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c968 : ¬v3 ∨ ¬v4 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v49)
    (c981 : v40 ∨ ¬v25 ∨ v38 ∨ v39 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c986 : v31 ∨ v37 ∨ ¬v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c989 : ¬v19 ∨ v4 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v39 ∨ v46)
    (c998 : v3 ∨ ¬v4 ∨ v5 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c1006 : ¬v9 ∨ ¬v18 ∨ v24 ∨ v25)
    (c1008 : v42 ∨ v25 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1009 : v37 ∨ ¬v6 ∨ v12 ∨ v13 ∨ v36 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1010 : v32 ∨ ¬v25 ∨ ¬v27 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1011 : v27 ∨ v26 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1012 : v27 ∨ ¬v25 ∨ v26 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1013 : ¬v6 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c1014 : v44 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v26 ∨ v27 ∨ v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v45 ∨ v48 ∨ v49)
    (c1015 : ¬v20 ∨ v13 ∨ v22 ∨ v23 ∨ v24 ∨ v27 ∨ v29 ∨ v30 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    : (¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47) ∧ (¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49) ∧ (v49 ∨ v10 ∨ v17 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v49 ∨ ¬v26 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v27 ∨ ¬v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35) ∧ (v44 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48) ∧ (v22 ∨ ¬v13 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35) ∧ (v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35) ∧ (¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47) ∧ (v41 ∨ v26 ∨ v27 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v23 ∨ ¬v4 ∨ v24 ∨ v25 ∨ v31 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v19 ∨ v18 ∨ ¬v25 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35) ∧ (v28 ∨ ¬v2 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1016 : v42 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v25 := by
      rcases c1008 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u3 : v38 := by
      rcases c981 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : v31 := by
      rcases c986 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : ¬v29 := by
      rcases c125 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v30 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v33 := by
      rcases c136 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v35 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c135 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v27 := by
      rcases c1010 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u2 a
      · exact a
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v26 := by
      rcases c1012 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd u14 a
      · exact absurd u2 a
      · exact a
    have u16 : ¬v28 := by
      rcases c114 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u17 : ¬v24 := by
      rcases c107 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u18 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u2 a
    have u19 : ¬v13 := by
      rcases c1014 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v20 := by
      rcases c1015 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u20
      · exact absurd a n8
      · exact absurd a u12
    have u22 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u21 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u21 a
    · exact absurd a u22
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c1017 : v31 ∨ ¬v6 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n16
    have u2 : ¬v46 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n11 a
    have u3 : ¬v41 := by
      rcases c263 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
    have u4 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v12 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v13 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a u6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v2 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : v1 := by
      rcases c508 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n11 a
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u12
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v7 := by
      rcases c13 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u15 : ¬v4 := by
      rcases c9 with a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd n1 a
    have u16 : v21 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a u9
      · exact a
      · exact absurd a n16
      · exact absurd a n10
      · exact absurd a n3
    have u17 : ¬v3 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u2
    have u18 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : v24 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u17
      · exact absurd a u5
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a u19
    rcases c771 with a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n0
  have c1018 : v27 ∨ v6 ∨ ¬v24 ∨ ¬v26 ∨ v28 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v37 ∨ v41 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v20 := by
      rcases c787 with a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v23 := by
      rcases c98 with a|a|a
      · exact absurd n3 a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v22 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n2 a
    have u4 : v13 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n7
    have u5 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
    have u10 : v21 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
    have u11 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u10 a
    rcases c626 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u1
    · exact absurd u10 a
    · exact absurd a n0
    · exact absurd a n4
  have c1019 : v6 ∨ ¬v13 ∨ v24 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v11 := by
      rcases c54 with a|a
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
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u7 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
    have u9 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n14
      · exact absurd a n13
      · exact absurd a u10
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a u12
      · exact absurd a u1
    have u15 : v19 := by
      rcases c558 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n6
      · exact a
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v4 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd u7 a
      · exact absurd a n11
      · exact absurd a n16
    have u17 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u18 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u14 a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u15 a
    rcases c739 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u16
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u8
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a u13
  have c1020 : v27 ∨ v6 ∨ ¬v13 ∨ ¬v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v34 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a u9
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v24 := by
      rcases c1018 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u15 : v25 := by
      rcases c1019 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u14
      · exact a
      · exact absurd n3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u16 : ¬v22 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u15 a
    have u17 : ¬v23 := by
      rcases c101 with a|a|a
      · exact absurd n3 a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v16 := by
      rcases c781 with a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u14
    have u19 : ¬v17 := by
      rcases c785 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u14
    have u20 : ¬v20 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u18
      · exact a
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd n3 a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u21 : v21 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n15
    have u22 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u21 a
    rcases c382 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd u21 a
    · exact absurd a n4
    · exact absurd a u14
    · exact absurd a u22
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u18
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u5
    · exact absurd a n6
  have c1021 : v27 ∨ ¬v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v34 := by
      rcases c943 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a u6
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v6 := by
      rcases c1017 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd u3 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v24 := by
      rcases c1018 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u12 : ¬v13 := by
      rcases c1020 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u10
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
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
    have u13 : v20 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n12
      · exact absurd a u1
    have u14 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v19 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v25 := by
      rcases c817 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd u13 a
      · exact absurd a u11
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c558 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a u18
    · exact absurd a n5
    · exact absurd a u16
    · exact absurd a n10
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a n11
    · exact absurd a n12
  have c1022 : ¬v33 ∨ ¬v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd n1 a
    rcases c469 with a|a|a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u3
  have c1023 : ¬v26 ∨ v27 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v33 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u2
    have u5 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v28 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u9 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v19 := by
      rcases c689 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u6
    have u11 : ¬v22 := by
      rcases c95 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n0 a
    have u12 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u6
    have u13 : v20 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n1
    have u14 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u13 a
      · exact a
    rcases c447 with a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd u8 a
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u15
  have c1024 : v30 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v24 ∨ v29 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n14
      · exact absurd a n7
      · exact absurd a n4
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n18
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u3 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
    rcases c420 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1025 : v4 ∨ v10 ∨ v17 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n6
      · exact absurd a n2
    have u2 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v5 := by
      rcases c15 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    rcases c1024 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
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
  have c1026 : ¬v10 ∨ ¬v26 ∨ ¬v27 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u6 : ¬v22 := by
      rcases c94 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u7 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    have u8 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u9 : ¬v16 := by
      rcases c629 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u5
    have u10 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n7
      · exact a
      · exact absurd a n3
    have u11 : ¬v21 := by
      rcases c642 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u8
    have u12 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a u8
    have u13 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u12 a
    have u14 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v6 := by
      rcases c23 with a|a|a
      · exact absurd u10 a
      · exact absurd u12 a
      · exact a
    have u16 : v48 := by
      rcases c243 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n9
      · exact a
      · exact absurd a u3
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a u1
    have u17 : v43 := by
      rcases c389 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd a u2
    rcases c171 with a|a
    · exact absurd u16 a
    · exact absurd u17 a
  have c1027 : v49 ∨ v10 ∨ v17 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a n2
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n0
      · exact absurd a n15
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
    have u3 : ¬v4 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a n0
    rcases c1025 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n0
  have c1028 : v49 ∨ ¬v26 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u2 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u4
    have u7 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v27 := by
      rcases c1023 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
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
    have u12 : ¬v25 := by
      rcases c113 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u13 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
    have u14 : ¬v10 := by
      rcases c1026 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u15 : ¬v23 := by
      rcases c104 with a|a|a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact a
    have u16 : v17 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u14
      · exact a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : v9 := by
      rcases c635 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a u12
    have u20 : v11 := by
      rcases c555 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a u13
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd u16 a
      · exact absurd a u14
      · exact a
    rcases c45 with a|a
    · exact absurd u19 a
    · exact absurd u20 a
  have c1029 : ¬v17 ∨ v10 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v18 := by
      rcases c71 with a|a
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
    have u6 : v28 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a u3
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n3
    have u7 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n4 a
    have u8 : ¬v25 := by
      rcases c115 with a|a|a
      · exact absurd u6 a
      · exact absurd n4 a
      · exact a
    have u9 : v11 := by
      rcases c555 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
    have u10 : v9 := by
      rcases c635 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u8
    rcases c45 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c1030 : v24 ∨ v10 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v26 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v33 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a u6
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v17 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v16 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v18 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v27 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u13
    have u20 : v28 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v22 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u17
      · exact a
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u18
    have u22 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u21 a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd u21 a
      · exact absurd u20 a
      · exact a
    have u24 : v11 := by
      rcases c555 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u23
      · exact absurd u14 a
      · exact absurd a n1
      · exact a
    have u25 : v9 := by
      rcases c635 with a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a n1
      · exact absurd a u22
      · exact absurd a n0
      · exact absurd a u23
    rcases c45 with a|a
    · exact absurd u25 a
    · exact absurd u24 a
  have c1031 : v26 ∨ ¬v10 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c51 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v41 := by
      rcases c235 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a n13
      · exact absurd a n14
    have u5 : ¬v6 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v19 := by
      rcases c960 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u7 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v27 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n13
      · exact absurd a n3
    have u11 : v25 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u2
    have u12 : v28 := by
      rcases c209 with a|a|a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n0
    rcases c115 with a|a|a
    · exact absurd u12 a
    · exact absurd u10 a
    · exact absurd u11 a
  have c1032 : ¬v27 ∨ ¬v24 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v25 := by
      rcases c108 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v19 := by
      rcases c648 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v20 := by
      rcases c269 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n2
    have u6 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd u5 a
      · exact a
    rcases c388 with a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a u7
  have c1033 : v44 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c1028 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v39 := by
      rcases c1016 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c148 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v38 := by
      rcases c157 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v33 := by
      rcases c1022 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v32 := by
      rcases c232 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u6
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v10 := by
      rcases c1031 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v24 := by
      rcases c1030 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v27 := by
      rcases c1032 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
    have u17 : v28 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u1
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u15 a
    have u19 : ¬v25 := by
      rcases c109 with a|a|a
      · exact absurd u15 a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u16
      · exact absurd u17 a
      · exact absurd a u9
      · exact absurd a u11
    rcases c676 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd u15 a
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd u17 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u7
    · exact absurd a u13
    · exact absurd a u11
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
  have c1034 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v32 := by
      rcases c208 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact a
    have u2 : ¬v34 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u1 a
    rcases c530 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u2
  have c1035 : ¬v28 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v23 := by
      rcases c100 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u3 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact a
    have u5 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u4 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c1036 : v27 ∨ ¬v17 ∨ v18 ∨ ¬v24 ∨ v25 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
    have u6 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u10 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v22 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u1
      · exact a
      · exact absurd a n4
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u12
      · exact absurd a u16
    have u18 : ¬v4 := by
      rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u19 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u9
    have u20 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v6 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u20
      · exact absurd a u21
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a u4
    · exact absurd a u17
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u11
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1037 : v27 ∨ v17 ∨ v18 ∨ v19 ∨ v22 ∨ v25 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u2 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n14
    have u10 : ¬v3 := by
      rcases c968 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n14
    have u11 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u9
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u12 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v6 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c780 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1038 : v28 ∨ ¬v19 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v34 ∨ v35 ∨ v39 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v4 := by
      rcases c989 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
    rcases c690 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a n15
  have c1039 : ¬v24 ∨ v18 ∨ v19 ∨ v25 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v17 := by
      rcases c1036 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u8 : v23 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u7
    have u9 : ¬v22 := by
      rcases c82 with a|a|a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
    rcases c1037 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1040 : v42 ∨ v11 ∨ v13 ∨ ¬v18 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n3 a
      · exact a
    have u5 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u6 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n14
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
    have u7 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n13
    have u13 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : v12 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u15 : v10 := by
      rcases c746 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u13
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c50 with a|a
    · exact absurd u15 a
    · exact absurd u14 a
  have c1041 : ¬v18 ∨ v11 ∨ v19 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v13 := by
      rcases c1040 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u2 a
    rcases c381 with a|a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd n0 a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
  have c1042 : v27 ∨ ¬v24 ∨ v25 ∨ v26 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u6 a
    have u12 : ¬v28 := by
      rcases c1035 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
    have u13 : ¬v19 := by
      rcases c1038 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v18 := by
      rcases c1039 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : v11 := by
      rcases c1041 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u12
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v6 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    rcases c593 with a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n10
  have c1043 : v49 ∨ v13 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v34 ∨ v36 ∨ v37 ∨ v38 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n18
    have u2 : ¬v35 := by
      rcases c946 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n12
      · exact absurd a n13
    have u3 : v21 := by
      rcases c938 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n17
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n0
    have u4 : v12 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n0
    have u5 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u4 a
      · exact a
    rcases c626 with a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u7
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd u3 a
    · exact absurd a n5
    · exact absurd a n6
  have c1044 : v22 ∨ ¬v13 ∨ v20 ∨ v23 ∨ v27 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n3
    have u6 : v21 := by
      rcases c788 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u7 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u6 a
    rcases c626 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd u6 a
    · exact absurd a n4
    · exact absurd a n5
  have c1045 : v27 ∨ ¬v24 ∨ v26 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v25 := by
      rcases c1042 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v23 := by
      rcases c97 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u14 : ¬v28 := by
      rcases c109 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v22 := by
      rcases c87 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n1 a
    have u16 : v13 := by
      rcases c1043 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v8 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v9 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : v20 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u16 a
      · exact a
      · exact absurd a u13
      · exact absurd a n0
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u24 : ¬v16 := by
      rcases c753 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u15
      · exact absurd a u13
    have u25 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v21 := by
      rcases c80 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a n5
      · exact a
      · exact absurd a u11
    have u29 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a u14
    have u30 : ¬v4 := by
      rcases c641 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u31 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u29 a
    have u32 : ¬v5 := by
      rcases c22 with a|a|a
      · exact absurd u28 a
      · exact absurd u29 a
      · exact a
    have u33 : ¬v3 := by
      rcases c17 with a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u29 a
    rcases c357 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u33
    · exact absurd u28 a
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a u20
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u32
    · exact absurd a u21
    · exact absurd a u26
    · exact absurd a u30
    · exact absurd a u31
    · exact absurd a u25
  have c1046 : v22 ∨ v24 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v23 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n1
    have u2 : v25 := by
      rcases c122 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
      · exact a
    have u3 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
    have u5 : ¬v17 := by
      rcases c66 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v18 := by
      rcases c67 with a|a
      · exact absurd u3 a
      · exact a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u5
  have c1047 : v49 ∨ ¬v13 ∨ v25 ∨ v26 ∨ v27 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v11 := by
      rcases c54 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v12 := by
      rcases c56 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v24 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u5 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u6 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v19 := by
      rcases c669 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v18 := by
      rcases c643 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
    have u9 : ¬v17 := by
      rcases c662 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd a n2
    have u10 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u13 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u5 a
    have u14 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a u15
      · exact absurd a u9
    have u18 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u19 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u20 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    have u21 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u18 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd u6 a
    · exact absurd a n7
    · exact absurd a u20
    · exact absurd a u21
    · exact absurd a u19
    · exact absurd a n0
  have c1048 : v49 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v24 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u2 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v13 := by
      rcases c1047 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v6 := by
      rcases c593 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a n11
    have u13 : ¬v5 := by
      rcases c923 with a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n0
    have u14 : ¬v19 := by
      rcases c1038 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u15 : v12 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u12 a
      · exact a
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u16 : ¬v11 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v10 := by
      rcases c50 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v7 := by
      rcases c929 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a u13
      · exact absurd u12 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n0
    have u19 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
    have u20 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u10
      · exact absurd a u6
    rcases c641 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u20 a
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1049 : v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v24 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v22 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u9
    have u11 : v25 := by
      rcases c1048 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u10 a
    have u13 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u7
    have u14 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u13 a
      · exact a
    rcases c463 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u9
    · exact absurd a u16
    · exact absurd a u14
  have c1050 : ¬v25 ∨ v24 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v22 := by
      rcases c93 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n0 a
    have u2 : ¬v19 := by
      rcases c839 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n9
    have u3 : ¬v18 := by
      rcases c675 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v17 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact a
    have u5 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u4 a
    rcases c447 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd n4 a
    · exact absurd a n9
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n8
    · exact absurd a n3
    · exact absurd a u6
  have c1051 : v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v28 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v23 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v15 := by
      rcases c447 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n5 a
      · exact absurd a n10
      · exact a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n4
      · exact absurd a u2
    rcases c60 with a|a
    · exact absurd u3 a
    · exact absurd u4 a
  have c1052 : v23 ∨ ¬v17 ∨ v18 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u5 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n8
    have u7 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u6 a
    rcases c635 with a|a|a|a|a|a
    · exact absurd n1 a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
  have c1053 : ¬v4 ∨ v3 ∨ v5 ∨ v23 ∨ v24 ∨ v25 ∨ v31 ∨ v38 ∨ v45 ∨ v46 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v11 := by
      rcases c998 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a n7
    · exact absurd a n4
    · exact absurd a n8
    · exact absurd a n6
    · exact absurd a u4
  have c1054 : v45 ∨ v18 ∨ v26 ∨ v27 ∨ v41 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v28 := by
      rcases c1049 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v24 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v38 := by
      rcases c158 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v36 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v25 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u13
    have u17 : v22 := by
      rcases c1051 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u13
    have u18 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u17 a
      · exact absurd u1 a
      · exact a
    have u19 : ¬v19 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v17 := by
      rcases c1052 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u21 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a n1
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd u4 a
      · exact absurd a n6
      · exact absurd a n10
    have u23 : v3 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u21 a
    have u25 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u21 a
    have u26 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u21 a
    rcases c277 with a|a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u4 a
    · exact absurd a n6
    · exact absurd a u25
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a n10
  have c1055 : v41 ∨ v26 ∨ v27 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v40 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v37 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v33 := by
      rcases c1034 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v31 := by
      rcases c136 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v29 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v35 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v30 := by
      rcases c132 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v32 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : v18 := by
      rcases c1054 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u12 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v24 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a|a
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
    have u18 : v28 := by
      rcases c1049 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u19 : v22 := by
      rcases c262 with a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u18 a
      · exact absurd a n2
      · exact absurd a u15
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u14
    have u20 : ¬v25 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd u18 a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u8
    have u21 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd u19 a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v9 := by
      rcases c1006 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a u20
    have u23 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a n1
    have u24 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a u12
      · exact absurd a u22
      · exact absurd a n4
      · exact a
      · exact absurd a u9
    have u25 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a n5
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a u5
  have c1056 : v37 ∨ ¬v18 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c62 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v19 := by
      rcases c75 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v48 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n12 a
    have u8 : ¬v47 := by
      rcases c170 with a|a
      · exact a
      · exact absurd n12 a
    have u9 : ¬v46 := by
      rcases c169 with a|a
      · exact a
      · exact absurd n12 a
    have u10 : v28 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n4 a
      · exact absurd a n8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a u4
      · exact a
    have u11 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n4 a
    have u12 : ¬v24 := by
      rcases c112 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n4 a
    have u13 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd n4 a
    have u14 : ¬v29 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n11
      · exact a
      · exact absurd a u13
      · exact absurd a n5
    have u15 : v11 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
    have u16 : ¬v9 := by
      rcases c1006 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a n2
    have u17 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd a n13
      · exact a
      · exact absurd a n5
    have u21 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a u19
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
      · exact a
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
    have u22 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n10
      · exact absurd a u12
      · exact absurd a n14
      · exact absurd a n6
      · exact absurd a u3
    have u23 : ¬v39 := by
      rcases c161 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v4 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u22 a
      · exact a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n13
    have u25 : ¬v7 := by
      rcases c17 with a|a|a
      · exact absurd u20 a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v1 := by
      rcases c1 with a|a|a
      · exact absurd u20 a
      · exact absurd u22 a
      · exact a
    rcases c291 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a n0
    · exact absurd n12 a
    · exact absurd a u25
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u23
    · exact absurd a n13
    · exact absurd a n14
    · exact absurd a u9
    · exact absurd a n15
  have c1057 : v23 ∨ ¬v4 ∨ v24 ∨ v25 ∨ v31 ∨ v36 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v48 := by
      rcases c171 with a|a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v5 := by
      rcases c958 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n13
    have u3 : v3 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v1 := by
      rcases c6 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u5 : ¬v7 := by
      rcases c26 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u7 : v37 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n13
    have u8 : ¬v41 := by
      rcases c155 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c154 with a|a
      · exact a
      · exact absurd u7 a
    rcases c1033 with a|a|a|a|a|a|a|a|a
    · exact absurd a n9
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n13
  have c1058 : v18 ∨ v24 ∨ v25 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v23 := by
      rcases c106 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u2 : ¬v22 := by
      rcases c96 with a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd n4 a
    have u3 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u4 : ¬v4 := by
      rcases c1057 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u3 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
    have u5 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n16
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n12
    have u6 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v19 := by
      rcases c845 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : ¬v17 := by
      rcases c635 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
    rcases c882 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u9
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n8
    · exact absurd a n12
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
  have c1059 : v18 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v22 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n2
    have u2 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n20
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
    have u3 : v15 := by
      rcases c847 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u4 : ¬v4 := by
      rcases c1057 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd u2 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n20
    have u5 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v19 := by
      rcases c63 with a|a
      · exact absurd u3 a
      · exact a
    rcases c882 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n9
    · exact absurd a n13
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c1060 : ¬v27 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v28 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u2 : v23 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v22 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v21 := by
      rcases c918 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v16 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v19 := by
      rcases c727 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v20 := by
      rcases c476 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n0 a
      · exact absurd a n10
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u1
    rcases c69 with a|a
    · exact absurd u5 a
    · exact absurd u7 a
  have c1061 : v32 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : v43 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n14
      · exact absurd a n19
      · exact absurd a n16
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v18 := by
      rcases c1056 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd u1 a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n19
    have u3 : v24 := by
      rcases c1060 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
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
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u4 : ¬v23 := by
      rcases c99 with a|a|a
      · exact absurd n3 a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u6 : ¬v28 := by
      rcases c112 with a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n3 a
    have u7 : v17 := by
      rcases c388 with a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a u5
    have u8 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v19 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u7 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n3 a
    · exact absurd a n8
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u8
    · exact absurd a u6
  have c1062 : v19 ∨ v18 ∨ ¬v25 ∨ v26 ∨ ¬v27 ∨ v31 ∨ v32 ∨ v34 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n2 a
    have u3 : v17 := by
      rcases c463 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact a
    have u4 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd u3 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd n4 a
    · exact absurd a n8
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u2
  have c1063 : v28 ∨ ¬v2 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v35 ∨ v38 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v13 := by
      rcases c807 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : ¬v14 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v10 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n20
      · exact absurd a n15
      · exact absurd a n0
    have u5 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n16
      · exact absurd a n11
      · exact absurd a n3
    rcases c17 with a|a|a
    · exact absurd n1 a
    · exact absurd u5 a
    · exact absurd u4 a
  have c1064 : v30 ∨ ¬v19 ∨ v22 ∨ v23 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v28 ∨ v31 ∨ v32 ∨ v35 ∨ v37 ∨ v38 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c72 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v2 := by
      rcases c1063 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u7 : ¬v8 := by
      rcases c782 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
    have u8 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n11
      · exact absurd a u1
      · exact a
      · exact absurd a n14
      · exact absurd a u6
      · exact absurd a n0
    have u9 : ¬v10 := by
      rcases c44 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : v1 := by
      rcases c368 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
    have u12 : v3 := by
      rcases c398 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u9
      · exact a
      · exact absurd a u6
      · exact absurd a u1
    have u13 : v7 := by
      rcases c195 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a n19
      · exact absurd a n13
      · exact absurd a n7
    rcases c7 with a|a|a
    · exact absurd u11 a
    · exact absurd u13 a
    · exact absurd u12 a
  have c1065 : v26 ∨ ¬v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v25 := by
      rcases c1061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
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
    have u2 : ¬v23 := by
      rcases c102 with a|a|a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v28 := by
      rcases c115 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u4 : ¬v22 := by
      rcases c92 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u5 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    have u6 : ¬v19 := by
      rcases c1064 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : v18 := by
      rcases c1062 with a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v20 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u7 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd n1 a
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd a n0
    · exact absurd a u8
    · exact absurd a u3
  exact ⟨c1022, c1026, c1027, c1028, c1032, c1033, c1034, c1044, c1046, c1050, c1051, c1053, c1055, c1057, c1062, c1063, c1065⟩
