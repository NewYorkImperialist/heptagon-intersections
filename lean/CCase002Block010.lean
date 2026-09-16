import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 500-549 of the 2934-step refutation of ccase002: 125 core clauses and 52 earlier-derived ones give 9 more. -/
theorem CCase002_block010
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c5 : ¬v1 ∨ ¬v2 ∨ ¬v7)
    (c10 : ¬v1 ∨ ¬v5 ∨ ¬v4)
    (c16 : ¬v2 ∨ ¬v5 ∨ ¬v3)
    (c20 : ¬v7 ∨ ¬v2 ∨ ¬v4)
    (c37 : ¬v8 ∨ ¬v10)
    (c38 : ¬v8 ∨ ¬v11)
    (c39 : ¬v8 ∨ ¬v12)
    (c40 : ¬v8 ∨ ¬v13)
    (c42 : ¬v9 ∨ ¬v10)
    (c43 : ¬v9 ∨ ¬v11)
    (c44 : ¬v9 ∨ ¬v12)
    (c45 : ¬v9 ∨ ¬v13)
    (c47 : ¬v11 ∨ ¬v10)
    (c48 : ¬v10 ∨ ¬v12)
    (c49 : ¬v10 ∨ ¬v13)
    (c50 : ¬v10 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v12)
    (c55 : ¬v12 ∨ ¬v14)
    (c59 : ¬v16 ∨ ¬v15 ∨ ¬v18)
    (c63 : ¬v15 ∨ ¬v17 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v17 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20 ∨ ¬v17)
    (c66 : ¬v15 ∨ ¬v21 ∨ ¬v17)
    (c67 : ¬v15 ∨ ¬v19 ∨ ¬v18)
    (c68 : ¬v15 ∨ ¬v20 ∨ ¬v18)
    (c70 : ¬v15 ∨ ¬v20 ∨ ¬v19)
    (c71 : ¬v15 ∨ ¬v21 ∨ ¬v19)
    (c72 : ¬v15 ∨ ¬v21 ∨ ¬v20)
    (c74 : ¬v16 ∨ ¬v17 ∨ ¬v19)
    (c75 : ¬v16 ∨ ¬v20 ∨ ¬v17)
    (c76 : ¬v16 ∨ ¬v21 ∨ ¬v17)
    (c77 : ¬v16 ∨ ¬v19 ∨ ¬v18)
    (c78 : ¬v16 ∨ ¬v20 ∨ ¬v18)
    (c79 : ¬v16 ∨ ¬v21 ∨ ¬v18)
    (c80 : ¬v16 ∨ ¬v20 ∨ ¬v19)
    (c82 : ¬v16 ∨ ¬v21 ∨ ¬v20)
    (c83 : ¬v18 ∨ ¬v19 ∨ ¬v17)
    (c84 : ¬v18 ∨ ¬v20 ∨ ¬v17)
    (c85 : ¬v21 ∨ ¬v17 ∨ ¬v18)
    (c86 : ¬v17 ∨ ¬v20 ∨ ¬v19)
    (c87 : ¬v17 ∨ ¬v21 ∨ ¬v19)
    (c88 : ¬v17 ∨ ¬v21 ∨ ¬v20)
    (c90 : ¬v21 ∨ ¬v18 ∨ ¬v19)
    (c91 : ¬v18 ∨ ¬v21 ∨ ¬v20)
    (c100 : ¬v22 ∨ ¬v23)
    (c101 : ¬v22 ∨ ¬v24)
    (c103 : ¬v22 ∨ ¬v26)
    (c104 : ¬v22 ∨ ¬v27)
    (c105 : ¬v22 ∨ ¬v28)
    (c106 : ¬v23 ∨ ¬v24)
    (c107 : ¬v23 ∨ ¬v25)
    (c108 : ¬v26 ∨ ¬v23)
    (c109 : ¬v27 ∨ ¬v23)
    (c110 : ¬v28 ∨ ¬v23)
    (c111 : ¬v24 ∨ ¬v25)
    (c112 : ¬v26 ∨ ¬v24)
    (c113 : ¬v27 ∨ ¬v24)
    (c114 : ¬v28 ∨ ¬v24)
    (c115 : ¬v25 ∨ ¬v26)
    (c116 : ¬v25 ∨ ¬v27)
    (c117 : ¬v25 ∨ ¬v28)
    (c118 : ¬v26 ∨ ¬v27)
    (c119 : ¬v28 ∨ ¬v26)
    (c120 : ¬v27 ∨ ¬v28)
    (c125 : ¬v33 ∨ ¬v29)
    (c126 : ¬v34 ∨ ¬v29)
    (c130 : ¬v33 ∨ ¬v30)
    (c131 : ¬v34 ∨ ¬v30)
    (c134 : ¬v31 ∨ ¬v33)
    (c135 : ¬v31 ∨ ¬v34)
    (c137 : ¬v32 ∨ ¬v33)
    (c138 : ¬v34 ∨ ¬v32)
    (c140 : ¬v33 ∨ ¬v34)
    (c141 : ¬v35 ∨ ¬v33)
    (c142 : ¬v34 ∨ ¬v35)
    (c146 : ¬v40 ∨ ¬v36)
    (c147 : ¬v41 ∨ ¬v36)
    (c151 : ¬v40 ∨ ¬v37)
    (c152 : ¬v41 ∨ ¬v37)
    (c153 : ¬v42 ∨ ¬v37)
    (c155 : ¬v40 ∨ ¬v38)
    (c156 : ¬v41 ∨ ¬v38)
    (c157 : ¬v42 ∨ ¬v38)
    (c158 : ¬v39 ∨ ¬v40)
    (c159 : ¬v41 ∨ ¬v39)
    (c160 : ¬v42 ∨ ¬v39)
    (c161 : ¬v41 ∨ ¬v40)
    (c162 : ¬v42 ∨ ¬v40)
    (c167 : ¬v47 ∨ ¬v43)
    (c168 : ¬v48 ∨ ¬v43)
    (c185 : v43 ∨ v44 ∨ v48 ∨ v47 ∨ v46 ∨ v45 ∨ v49)
    (c187 : v23 ∨ v30 ∨ v9 ∨ v16 ∨ v37 ∨ v44 ∨ v2)
    (c188 : v10 ∨ v3 ∨ v17 ∨ v24 ∨ v45 ∨ v38 ∨ v31)
    (c189 : v11 ∨ v4 ∨ v18 ∨ v46 ∨ v39 ∨ v25 ∨ v32)
    (c190 : v12 ∨ v33 ∨ v5 ∨ v26 ∨ v19 ∨ v47 ∨ v40)
    (c191 : v13 ∨ v6 ∨ v48 ∨ v20 ∨ v27 ∨ v41 ∨ v34)
    (c192 : v21 ∨ v7 ∨ v14 ∨ v35 ∨ v28 ∨ v49 ∨ v42)
    (c206 : v12 ∨ v47 ∨ v3 ∨ v5 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v11)
    (c221 : ¬v25 ∨ v32 ∨ v18 ∨ v33 ∨ v31 ∨ v26 ∨ v24 ∨ v19)
    (c239 : v13 ∨ v8 ∨ v48 ∨ v6 ∨ ¬v7 ∨ v1 ∨ v49 ∨ v14)
    (c241 : ¬v16 ∨ v23 ∨ v17 ∨ v10 ∨ v15 ∨ v9 ∨ v22 ∨ v8)
    (c243 : v13 ∨ v6 ∨ v25 ∨ v47 ∨ v26 ∨ v21 ∨ v27 ∨ v19 ∨ v18 ∨ v11 ∨ v14 ∨ ¬v20 ∨ v48 ∨ v49)
    (c247 : ¬v19 ∨ v26 ∨ v25 ∨ v18 ∨ v20 ∨ v13 ∨ v11 ∨ v12)
    (c255 : ¬v41 ∨ v48 ∨ v40 ∨ v42 ∨ v47 ∨ v49 ∨ v35 ∨ v34)
    (c268 : v36 ∨ ¬v43 ∨ v37 ∨ v44 ∨ v7 ∨ v2 ∨ v1 ∨ v49)
    (c277 : v29 ∨ ¬v23 ∨ v31 ∨ v16 ∨ v22 ∨ v30 ∨ v24 ∨ v17)
    (c280 : ¬v20 ∨ v27 ∨ v12 ∨ v21 ∨ v28 ∨ v13 ∨ v19 ∨ v14)
    (c287 : v18 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v9 ∨ v16 ∨ v10 ∨ v11)
    (c297 : v27 ∨ v20 ∨ v26 ∨ v18 ∨ v11 ∨ ¬v19 ∨ v13 ∨ v12)
    (c318 : ¬v27 ∨ v34 ∨ v19 ∨ v41 ∨ v49 ∨ v35 ∨ v20 ∨ v26 ∨ v28 ∨ v18 ∨ v32 ∨ v47 ∨ v48 ∨ v25)
    (c357 : ¬v41 ∨ v48 ∨ v40 ∨ v34 ∨ v47 ∨ v49 ∨ v33 ∨ v42)
    (c379 : ¬v26 ∨ v35 ∨ v25 ∨ v28 ∨ v20 ∨ v32 ∨ v19 ∨ v33 ∨ v27 ∨ v21 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c394 : v20 ∨ v27 ∨ v18 ∨ v25 ∨ v26 ∨ v12 ∨ ¬v19 ∨ v13)
    (c406 : v13 ∨ v11 ∨ v20 ∨ v19 ∨ v5 ∨ v6 ∨ v18 ∨ ¬v12)
    (c426 : v29 ∨ v22 ∨ v24 ∨ v30 ∨ v15 ∨ v31 ∨ ¬v23 ∨ v16)
    (c429 : ¬v24 ∨ v31 ∨ v18 ∨ v30 ∨ v32 ∨ v17 ∨ v25 ∨ v23)
    (c446 : ¬v25 ∨ v32 ∨ v17 ∨ v26 ∨ v18 ∨ v31 ∨ v24 ∨ v19)
    (c448 : ¬v26 ∨ v33 ∨ v18 ∨ v20 ∨ v19 ∨ v32 ∨ v25 ∨ v27)
    (c460 : ¬v27 ∨ v34 ∨ v20 ∨ v35 ∨ v21 ∨ v19 ∨ v28 ∨ v26)
    (c464 : v23 ∨ v27 ∨ v24 ∨ v25 ∨ v13 ∨ v16 ∨ v33 ∨ v32 ∨ v30 ∨ v20 ∨ v19 ∨ v11 ∨ v12 ∨ ¬v26)
    (c476 : v29 ∨ ¬v28 ∨ v20 ∨ v15 ∨ v35 ∨ v22 ∨ v21 ∨ v27)
    (c524 : v22 ∨ ¬v21 ∨ v28 ∨ v27 ∨ v13 ∨ v20 ∨ v15 ∨ v14)
    (c528 : v21 ∨ v13 ∨ v19 ∨ v26 ∨ v12 ∨ v14 ∨ v27 ∨ ¬v20)
    (c538 : ¬v24 ∨ v31 ∨ v16 ∨ v32 ∨ v30 ∨ v25 ∨ v17 ∨ v23)
    (c541 : ¬v26 ∨ v34 ∨ v25 ∨ v18 ∨ v33 ∨ v40 ∨ v48 ∨ v27 ∨ v31 ∨ v47 ∨ v19 ∨ v46 ∨ v17 ∨ v24)
    (c545 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c561 : v19 ∨ v13 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c564 : v19 ∨ v5 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28 ∨ v33 ∨ v40 ∨ v47)
    (c572 : v17 ∨ v11 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c599 : ¬v19 ∨ ¬v17 ∨ v24 ∨ v25 ∨ v26 ∨ v27)
    (c615 : v17 ∨ ¬v19 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c617 : ¬v14 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24)
    (c653 : ¬v10 ∨ v15 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v28)
    (c654 : ¬v8 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26)
    (c660 : v31 ∨ v18 ∨ ¬v19 ∨ ¬v20 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c673 : v24 ∨ ¬v18 ∨ ¬v20 ∨ v25 ∨ v26 ∨ v27)
    (c729 : ¬v5 ∨ ¬v2 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c754 : ¬v3 ∨ ¬v7 ∨ v13 ∨ v14 ∨ v16 ∨ v23 ∨ v30 ∨ v37 ∨ v44 ∨ v48 ∨ v49)
    (c785 : v18 ∨ ¬v14 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c786 : v9 ∨ ¬v4 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45)
    (c787 : v17 ∨ ¬v4 ∨ v14 ∨ v15 ∨ v16 ∨ v23 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v49)
    (c803 : ¬v17 ∨ ¬v14 ∨ v16 ∨ ¬v19 ∨ v23 ∨ v24)
    (c805 : ¬v18 ∨ ¬v16 ∨ v17 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26)
    (c829 : v16 ∨ v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47)
    (c836 : v19 ∨ ¬v16 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c837 : v19 ∨ ¬v16 ∨ v24 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c844 : ¬v22 ∨ v15 ∨ v16 ∨ v21 ∨ v29 ∨ v30)
    (c865 : v31 ∨ v15 ∨ v16 ∨ v17 ∨ v22 ∨ ¬v23 ∨ v30)
    (c869 : ¬v25 ∨ v17 ∨ v18 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c873 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v38 ∨ v39)
    (c876 : ¬v7 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c877 : ¬v5 ∨ ¬v7 ∨ v8 ∨ v13 ∨ v14 ∨ v48 ∨ v49)
    (c878 : v19 ∨ ¬v17 ∨ ¬v18 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c880 : v46 ∨ v7 ∨ v19 ∨ v21 ∨ v26 ∨ v28 ∨ v33 ∨ v35 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c887 : ¬v2 ∨ ¬v7 ∨ v8 ∨ v9 ∨ v10 ∨ v44 ∨ v45)
    (c914 : v36 ∨ ¬v13 ∨ v19 ∨ v20 ∨ v21 ∨ v26 ∨ v33 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c922 : v13 ∨ ¬v19 ∨ v20 ∨ ¬v21 ∨ v22 ∨ v25 ∨ v26 ∨ v28)
    (c924 : v46 ∨ ¬v13 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c934 : v25 ∨ ¬v6 ∨ v13 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c963 : v25 ∨ ¬v7 ∨ v17 ∨ v18 ∨ v32 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v49)
    (c969 : v24 ∨ v17 ∨ v18 ∨ v19 ∨ ¬v25 ∨ v32 ∨ v33)
    (c984 : ¬v22 ∨ v15 ∨ v16 ∨ v28 ∨ v29 ∨ v30 ∨ v35)
    (c1001 : ¬v24 ∨ v12 ∨ v18 ∨ ¬v19 ∨ v20)
    (c1003 : v31 ∨ ¬v13 ∨ ¬v19 ∨ v28 ∨ v29 ∨ v30 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1009 : v28 ∨ ¬v19 ∨ ¬v20 ∨ v29 ∨ v30 ∨ v31 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1011 : v13 ∨ ¬v6 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49)
    (c1013 : v24 ∨ ¬v6 ∨ v17 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1014 : ¬v13 ∨ ¬v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v49)
    (c1021 : v6 ∨ v12 ∨ v19 ∨ v26 ∨ v33 ∨ v36 ∨ v37 ∨ v40 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1027 : v42 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1028 : v33 ∨ v39 ∨ ¬v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1033 : v35 ∨ ¬v13 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v27 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c1044 : v46 ∨ ¬v13 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v47 ∨ v48 ∨ v49)
    (c1045 : v10 ∨ ¬v3 ∨ v36 ∨ v37 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c1046 : v27 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v26 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c1047 : v18 ∨ v10 ∨ v16 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    (c1048 : ¬v20 ∨ v10 ∨ ¬v17 ∨ v23 ∨ v24 ∨ v25)
    : (v10 ∨ v3 ∨ v6 ∨ v13 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v18 ∨ ¬v19 ∨ v20 ∨ ¬v28 ∨ v29 ∨ v35) ∧ (¬v24 ∨ v17 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v32) ∧ (¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v47 ∨ v20 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48) ∧ (v17 ∨ v18 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v17 ∨ ¬v18 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c1049 : ¬v17 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v21 := by
      rcases c460 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n4
    have u2 : v18 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n3
    rcases c85 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd u2 a
  have c1050 : ¬v17 ∨ v6 ∨ v10 ∨ v13 ∨ v25 ∨ v26 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v27 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
    have u2 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v20 := by
      rcases c1048 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n4
    have u5 : v19 := by
      rcases c1049 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
    have u7 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n0 a
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n4
  have c1051 : ¬v26 ∨ v6 ∨ v10 ∨ v13 ∨ ¬v17 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v24 := by
      rcases c112 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n5
    rcases c1048 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u1
  have c1052 : ¬v17 ∨ v6 ∨ v10 ∨ v13 ∨ v25 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v26 := by
      rcases c1051 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
    have u2 : v28 := by
      rcases c1050 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n10
      · exact a
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n6
    rcases c1048 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a n4
  have c1053 : v25 ∨ v3 ∨ v6 ∨ v10 ∨ v13 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v17 := by
      rcases c1052 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v24 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a u1
      · exact a
      · exact absurd a n12
      · exact absurd a n10
      · exact absurd a n6
    have u3 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n14
      · exact a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n8
    have u6 : v18 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u4
    have u7 : v16 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u4
    rcases c78 with a|a|a
    · exact absurd u7 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1054 : v10 ∨ v3 ∨ v6 ∨ v13 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v35 ∨ v38 ∨ v41 ∨ v45 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v25 := by
      rcases c1053 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
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
      · exact absurd a n14
      · exact absurd a n15
    have u2 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v17 := by
      rcases c1046 with a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    rcases c188 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a n12
    · exact absurd a n10
    · exact absurd a n6
  have c1055 : v49 ∨ v10 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u2 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
    have u10 : ¬v3 := by
      rcases c1045 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
    have u11 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    rcases c1054 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u2
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a u16
    · exact absurd a u14
    · exact absurd a u11
    · exact absurd a u15
    · exact absurd a u6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n0
  have c1056 : ¬v25 ∨ v6 ∨ v13 ∨ ¬v17 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c117 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1046 with a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c1057 : v27 ∨ v6 ∨ v12 ∨ v13 ∨ v14 ∨ ¬v17 ∨ v34 ∨ v41 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n6
    have u2 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n5 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v19 := by
      rcases c86 with a|a|a
      · exact absurd n5 a
      · exact absurd u1 a
      · exact a
    have u4 : v28 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n4
    have u5 : v26 := by
      rcases c528 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a u3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd u1 a
    rcases c119 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c1058 : v11 ∨ v9 ∨ v14 ∨ ¬v17 ∨ ¬v20 ∨ v23 ∨ v25 ∨ v28 ∨ v30 ∨ v32 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n7
      · exact absurd a n16
      · exact absurd a n13
    have u5 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n14
      · exact a
    have u6 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n6
      · exact absurd a n9
    rcases c20 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c1059 : v41 ∨ v6 ∨ ¬v17 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v10 := by
      rcases c1055 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u2 a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u3 a
    have u9 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v25 := by
      rcases c1056 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
    have u16 : v27 := by
      rcases c1057 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a n8
    have u17 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v28 := by
      rcases c120 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v20 := by
      rcases c1058 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd n2 a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
    have u21 : v19 := by
      rcases c1049 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u20
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : ¬v18 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd n2 a
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd u21 a
    · exact absurd a u18
    · exact absurd a u15
    · exact absurd a u22
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u6
    · exact absurd a u4
  have c1060 : v20 ∨ v11 ∨ v12 ∨ v13 ∨ v18 ∨ v25 ∨ ¬v27 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n6 a
    have u2 : v19 := by
      rcases c318 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n9
      · exact a
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n5
    rcases c247 with a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
  have c1061 : ¬v10 ∨ v13 ∨ v17 ∨ v20 ∨ v25 ∨ v28 ∨ v30 ∨ v32 ∨ v34 ∨ v35 ∨ v36 ∨ v37 ∨ v41 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd n14 a
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u2 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v27 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n3
      · exact a
      · exact absurd a n12
      · exact absurd a n8
    have u8 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v22 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v18 := by
      rcases c1060 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : v19 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd u12 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
    have u14 : ¬v16 := by
      rcases c805 with a|a|a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u9
    have u15 : ¬v21 := by
      rcases c922 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u13 a
      · exact absurd a n3
      · exact a
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd a n5
    have u16 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u14
      · exact absurd a n11
      · exact absurd a n15
      · exact a
    have u17 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n5
      · exact absurd a n18
      · exact absurd a n13
    have u18 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u17 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a n17
    · exact absurd a u1
    · exact absurd u17 a
    · exact absurd a u18
    · exact absurd a n18
    · exact absurd a u5
  have c1062 : ¬v20 ∨ v9 ∨ v11 ∨ v14 ∨ v17 ∨ v19 ∨ v25 ∨ ¬v27 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v26 := by
      rcases c118 with a|a
      · exact a
      · exact absurd n7 a
    have u3 : ¬v24 := by
      rcases c113 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v18 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a u2
    have u5 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a n22
      · exact absurd a n17
      · exact absurd a n6
      · exact absurd a n12
    have u6 : ¬v7 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd n19 a
      · exact absurd a n20
      · exact absurd a n22
      · exact absurd a n23
    have u7 : v16 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u5 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
    have u8 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a n23
      · exact absurd a n18
    rcases c82 with a|a|a
    · exact absurd u7 a
    · exact absurd u8 a
    · exact absurd n0 a
  have c1063 : v28 ∨ v25 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v10 := by
      rcases c1055 with a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u5 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u3 a
    have u13 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u3 a
    have u14 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u9 a
      · exact a
    have u17 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u9 a
      · exact a
    have u18 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u9 a
    have u19 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u9 a
    have u20 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u9 a
    have u21 : ¬v17 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u10
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v20 := by
      rcases c1061 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a u21
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u15
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v19 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
    have u24 : ¬v27 := by
      rcases c1062 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a u23
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u25 : v21 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd a u24
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u14
    have u26 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
    have u27 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
    have u28 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
    have u29 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u26
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u18
    have u30 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a n0
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u19
    have u31 : ¬v23 := by
      rcases c865 with a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u27
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a u30
      · exact a
      · exact absurd a u16
    have u32 : ¬v24 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u26
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a u31
    rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd u29 a
    · exact absurd a u14
    · exact absurd a u27
    · exact absurd a u28
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u17
    · exact absurd a u16
    · exact absurd a u20
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n9
  have c1064 : v42 ∨ v28 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v29 := by
      rcases c125 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v31 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v17 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u9
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : v25 := by
      rcases c1063 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n7
      · exact a
      · exact absurd a u19
      · exact absurd a n2
      · exact absurd a u10
    have u22 : ¬v19 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u21 a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
    have u23 : v21 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd u21 a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n1
    have u24 : v18 := by
      rcases c446 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u16
      · exact absurd a u18
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u22
    rcases c91 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd u21 a
  have c1065 : v44 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v40 := by
      rcases c1027 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v28 := by
      rcases c1064 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v13 := by
      rcases c1044 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v10 := by
      rcases c1055 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u5 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n7
    have u6 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v39 := by
      rcases c158 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v38 := by
      rcases c155 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v37 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u10 : v33 := by
      rcases c1028 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u11 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd u2 a
    have u15 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd u2 a
      · exact a
    have u16 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u4 a
    have u18 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u4 a
    have u19 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u4 a
      · exact a
    have u20 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u21 : ¬v34 := by
      rcases c140 with a|a
      · exact absurd u10 a
      · exact a
    have u22 : ¬v30 := by
      rcases c130 with a|a
      · exact absurd u10 a
      · exact a
    have u23 : ¬v32 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u10 a
    have u24 : ¬v35 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u10 a
    have u25 : v20 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n6
      · exact a
      · exact absurd a u13
      · exact absurd a n1
      · exact absurd a u21
    have u26 : ¬v17 := by
      rcases c1059 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u16
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u25 a
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u13
    have u28 : ¬v19 := by
      rcases c660 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact absurd a u27
      · exact a
      · exact absurd u25 a
      · exact absurd u2 a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u29 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u14
      · exact absurd a u23
    have u30 : v21 := by
      rcases c243 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a u28
      · exact absurd a u27
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u25 a
      · exact absurd a n6
      · exact absurd a n7
    have u31 : v16 := by
      rcases c786 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u29 a
      · exact a
      · exact absurd a u26
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a n3
    rcases c82 with a|a|a
    · exact absurd u31 a
    · exact absurd u30 a
    · exact absurd u25 a
  have c1066 : ¬v20 ∨ v18 ∨ v19 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v16 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
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
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
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
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n18
    · exact absurd a n19
  have c1067 : v18 ∨ v6 ∨ v17 ∨ ¬v20 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact a
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n18
      · exact absurd a n17
      · exact absurd a n16
      · exact absurd a n20
    have u3 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v19 := by
      rcases c1066 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u9 : ¬v15 := by
      rcases c70 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u10 : ¬v16 := by
      rcases c80 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd u8 a
    have u11 : ¬v14 := by
      rcases c785 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v4 := by
      rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n20
    have u13 : v11 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n17
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n12
    have u14 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n16
      · exact absurd a u7
      · exact absurd a n11
    rcases c1045 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd u15 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n14
    · exact absurd u2 a
    · exact absurd a n15
    · exact absurd a n16
    · exact absurd a n17
    · exact absurd a n20
  have c1068 : v23 ∨ ¬v20 ∨ v22 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v18 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n14
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n7
      · exact a
    have u10 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v13 := by
      rcases c1033 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n8
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u16 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd u3 a
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u17 : v17 := by
      rcases c1067 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u16
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u19 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u17 a
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u1
    · exact absurd a u18
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1069 : ¬v12 ∨ v6 ∨ v13 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v32 ∨ v36 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd n11 a
    have u2 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n12
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a u1
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n3
      · exact absurd a n14
      · exact absurd a n9
      · exact absurd a n6
      · exact absurd a n7
    have u9 : v5 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n0 a
    have u10 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n15
      · exact absurd a n16
    have u12 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a n8
    · exact absurd n11 a
    · exact absurd a u10
    · exact absurd a n12
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a u13
    · exact absurd a n16
  have c1070 : ¬v28 ∨ ¬v17 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u9 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v19 := by
      rcases c599 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
    have u11 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u7 a
      · exact a
    have u15 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n8
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n2
      · exact a
    have u16 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v13 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v6 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : v12 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u22 : v18 := by
      rcases c1069 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd a u20
      · exact absurd a u19
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u18
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u23 : ¬v15 := by
      rcases c63 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u22 a
    have u24 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u22 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd n0 a
    · exact absurd a u9
    · exact absurd a u23
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u24
    · exact absurd a u4
  have c1071 : v17 ∨ v6 ∨ v19 ∨ v24 ∨ v26 ∨ v33 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n12
    have u3 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : v34 := by
      rcases c357 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n11
      · exact absurd a u5
      · exact a
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n5
      · exact absurd a n6
    have u8 : v12 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u9
    rcases c1045 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u10
    · exact absurd u11 a
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd u2 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n12
  have c1072 : ¬v18 ∨ ¬v19 ∨ v20 ∨ ¬v28 ∨ v29 ∨ v35 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n3 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n3 a
    rcases c476 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u4
  have c1073 : v45 ∨ ¬v28 ∨ v35 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v23 := by
      rcases c110 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v26 := by
      rcases c119 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v22 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v27 := by
      rcases c120 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v25 := by
      rcases c117 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : ¬v24 := by
      rcases c114 with a|a
      · exact absurd n1 a
      · exact a
    have u7 : ¬v17 := by
      rcases c1070 with a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
    have u10 : ¬v20 := by
      rcases c1068 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u11 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u8 a
      · exact a
    have u15 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u8 a
      · exact a
    have u16 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n7
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n2
      · exact a
    have u17 : ¬v31 := by
      rcases c873 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u14
    have u18 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u22 : v19 := by
      rcases c1071 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a u21
      · exact a
      · exact absurd a u6
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u23 : ¬v13 := by
      rcases c1014 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd u9 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n8
    have u24 : ¬v18 := by
      rcases c1072 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u10
      · exact absurd n1 a
      · exact absurd a u18
      · exact absurd a n2
    have u25 : v12 := by
      rcases c394 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a u24
      · exact absurd a u5
      · exact absurd a u2
      · exact a
      · exact absurd u22 a
      · exact absurd a u23
    have u26 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u15
      · exact absurd a u17
    rcases c1045 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd u27 a
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd u9 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n8
  have c1074 : v17 ∨ v10 ∨ v24 ∨ v31 ∨ v36 ∨ v37 ∨ v38 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n10
      · exact absurd a n6
      · exact absurd a n3
    rcases c1045 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd n8 a
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  have c1075 : v45 ∨ v17 ∨ v18 ∨ ¬v19 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v24 := by
      rcases c615 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n14
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v34 := by
      rcases c357 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n13
      · exact absurd a u6
      · exact a
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v10 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n14
    have u11 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v35 := by
      rcases c142 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : ¬v20 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd n3 a
      · exact a
      · exact absurd a u11
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u19 : v26 := by
      rcases c247 with a|a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u13
    have u20 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v22 := by
      rcases c103 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v7 := by
      rcases c963 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    have u23 : v21 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a n14
      · exact absurd a n9
    have u24 : v15 := by
      rcases c524 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u23 a
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u14
      · exact absurd a u18
      · exact a
      · exact absurd a u16
    rcases c71 with a|a|a
    · exact absurd u24 a
    · exact absurd u23 a
    · exact absurd n3 a
  have c1076 : v18 ∨ ¬v17 ∨ ¬v19 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v35 ∨ v36 ∨ v38 ∨ v39 ∨ v42 ∨ ¬v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v48 := by
      rcases c168 with a|a
      · exact a
      · exact absurd n15 a
    have u2 : ¬v47 := by
      rcases c167 with a|a
      · exact a
      · exact absurd n15 a
    have u3 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u4 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v15 := by
      rcases c64 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u6 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n16
      · exact a
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n19
    have u7 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u8 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n8
      · exact a
      · exact absurd a u3
    have u10 : ¬v13 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd n15 a
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n19
    have u11 : ¬v14 := by
      rcases c803 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a n3
    have u12 : v10 := by
      rcases c1047 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u13 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n5
      · exact absurd a n19
      · exact absurd a n14
    have u14 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u12 a
      · exact a
    have u15 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v3 := by
      rcases c754 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a u1
      · exact absurd a n19
    have u18 : ¬v5 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u16
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u1
      · exact absurd a n19
    have u19 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n13
      · exact absurd a n4
      · exact absurd a n9
    rcases c206 with a|a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u2
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd u19 a
    · exact absurd a n18
    · exact absurd a n17
    · exact absurd a u15
  have c1077 : v48 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u2 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n11
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n5
      · exact a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : v17 := by
      rcases c1075 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u16 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n2 a
    have u17 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n2 a
    have u18 : v24 := by
      rcases c1076 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u15 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u19 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : v12 := by
      rcases c1001 with a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
    have u22 : ¬v8 := by
      rcases c654 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u20
    have u23 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u21 a
      · exact a
    have u24 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u23
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n6
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u11
      · exact absurd a u24
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a n7
      · exact a
    rcases c887 with a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd a u22
    · exact absurd a u24
    · exact absurd a u25
    · exact absurd a n7
    · exact absurd a n8
  have c1078 : ¬v12 ∨ v16 ∨ ¬v17 ∨ v18 ∨ v23 ∨ v24 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    rcases c287 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n2 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a u2
  have c1079 : v45 ∨ v13 ∨ v18 ∨ ¬v19 ∨ v20 ∨ v35 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v25 := by
      rcases c1077 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u2 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v23 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v24 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n5
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v17 := by
      rcases c869 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u16 : ¬v16 := by
      rcases c74 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n3 a
    have u17 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
    have u18 : ¬v12 := by
      rcases c1078 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
    have u19 : ¬v21 := by
      rcases c87 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd n3 a
    have u20 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u17
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n6
    have u21 : v11 := by
      rcases c297 with a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a n1
      · exact absurd a u18
    have u22 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v2 := by
      rcases c887 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u22
      · exact absurd a n7
      · exact absurd a n0
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u11
    · exact absurd a u24
    · exact absurd a u16
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u25
  have c1080 : ¬v24 ∨ v17 ∨ ¬v19 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n0 a
      · exact a
    rcases c615 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1081 : v44 ∨ ¬v19 ∨ v20 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n3
      · exact a
    have u9 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v13 := by
      rcases c1003 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : v18 := by
      rcases c1079 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u13
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v16 := by
      rcases c77 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
    have u16 : ¬v21 := by
      rcases c90 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
    have u17 : ¬v15 := by
      rcases c67 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
    have u18 : ¬v17 := by
      rcases c83 with a|a|a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact a
    have u19 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n3
    have u20 : ¬v24 := by
      rcases c1080 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
    have u21 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u12
      · exact a
      · exact absurd a u15
    have u22 : v10 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u23 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd a u18
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u24 : ¬v9 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u22 a
    have u25 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v8 := by
      rcases c37 with a|a
      · exact a
      · exact absurd u22 a
    have u27 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u10
      · exact absurd a u24
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a n0
      · exact a
    have u28 : v7 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a u25
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n4
    have u29 : ¬v1 := by
      rcases c5 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u28 a
    rcases c239 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u26
    · exact absurd a n8
    · exact absurd a u23
    · exact absurd u28 a
    · exact absurd a u29
    · exact absurd a n9
    · exact absurd a u25
  have c1082 : v19 ∨ v17 ∨ ¬v24 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n3
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : v18 := by
      rcases c429 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u13
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
    have u15 : v16 := by
      rcases c538 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a u13
      · exact a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a u3
    have u16 : ¬v21 := by
      rcases c79 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v15 := by
      rcases c59 with a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd u14 a
    have u18 : v7 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u19 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u20 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u19 a
    rcases c241 with a|a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u21
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u1
    · exact absurd a u22
  have c1083 : v20 ∨ v17 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v19 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n9
    have u5 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v24 := by
      rcases c1082 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u10 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n2
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : v10 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
    have u16 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u17 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : v26 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u3
      · exact a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u21 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u20 a
    have u22 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v21 := by
      rcases c379 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a n2
      · exact absurd a u21
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u23
      · exact a
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : v18 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u23
    have u26 : v16 := by
      rcases c464 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd a u9
      · exact absurd a u21
      · exact absurd a u18
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u20 a
    rcases c79 with a|a|a
    · exact absurd u26 a
    · exact absurd u24 a
    · exact absurd u25 a
  have c1084 : ¬v26 ∨ v19 ∨ v20 ∨ v21 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    rcases c379 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c1085 : v19 ∨ ¬v17 ∨ ¬v18 ∨ v20 ∨ v28 ∨ v32 ∨ v33 ∨ v35 ∨ v40 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v21 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u2 : v26 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
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
    rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
  have c1086 : v45 ∨ v20 ∨ v21 ∨ v24 ∨ v35 ∨ v42 ∨ v44 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v19 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v17 := by
      rcases c1083 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u5 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
    have u6 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n4
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v26 := by
      rcases c1084 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : ¬v18 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v13 := by
      rcases c914 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v7 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v25 := by
      rcases c221 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a u1
    have u19 : ¬v6 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : v12 := by
      rcases c876 with a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1069 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd a u19
    · exact absurd a u16
    · exact absurd a u15
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a u18
    · exact absurd a u12
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd u5 a
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n10
  have c1087 : ¬v25 ∨ v18 ∨ v19 ∨ v24 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v26 := by
      rcases c115 with a|a
      · exact absurd n0 a
      · exact a
    rcases c221 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n5
    · exact absurd a n1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd a n2
  have c1088 : v18 ∨ v20 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v19 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact a
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u2 : v17 := by
      rcases c1083 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u3 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u4 : ¬v25 := by
      rcases c1087 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v21 := by
      rcases c1086 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v16 := by
      rcases c76 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u7 : ¬v15 := by
      rcases c66 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u2 a
    have u8 : ¬v22 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
    have u9 : ¬v10 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u5 a
      · exact absurd a u8
      · exact absurd a u3
    have u10 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a u6
    rcases c1047 with a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u6
    · exact absurd u2 a
    · exact absurd a u10
    · exact absurd a n2
    · exact absurd a u4
  have c1089 : v47 ∨ v20 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n8
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n2
      · exact a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v19 := by
      rcases c1081 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v17 := by
      rcases c1083 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v18 := by
      rcases c1085 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v24 := by
      rcases c1088 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n1
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u19 : ¬v25 := by
      rcases c111 with a|a
      · exact absurd u18 a
      · exact a
    have u20 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v13 := by
      rcases c924 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u22 : ¬v6 := by
      rcases c934 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u23 : v12 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd u3 a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v10 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : ¬v8 := by
      rcases c39 with a|a
      · exact a
      · exact absurd u23 a
    have u29 : v5 := by
      rcases c406 with a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a u15
      · exact a
      · exact absurd a u22
      · exact absurd a u17
      · exact absurd u23 a
    have u30 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd a u17
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u19
      · exact absurd a u13
    have u31 : ¬v7 := by
      rcases c877 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd a n7
      · exact absurd a n8
    have u32 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u27
      · exact absurd a n4
      · exact absurd a n5
    have u33 : ¬v1 := by
      rcases c10 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u30 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd a u5
    · exact absurd a n4
    · exact absurd a u31
    · exact absurd a u32
    · exact absurd a u33
    · exact absurd a n8
  have c1090 : v19 ∨ ¬v24 ∨ v35 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v27 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v28 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v23 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v26 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : v20 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u6 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u7 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n8
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n2
      · exact a
    have u10 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v17 := by
      rcases c1082 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
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
    have u13 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u5 a
    have u14 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u12 a
    have u15 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
    have u16 : v5 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u5 a
      · exact absurd a u13
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n7
    have u17 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v2 := by
      rcases c729 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
    rcases c187 with a|a|a|a|a|a|a
    · exact absurd a u3
    · exact absurd a u10
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u20
  have c1091 : v35 ∨ ¬v17 ∨ v19 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c1090 with a|a|a|a|a|a|a|a|a|a
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
    have u2 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : v20 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v16 := by
      rcases c75 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u6 : ¬v21 := by
      rcases c88 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v18 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u8 : ¬v15 := by
      rcases c65 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
    have u9 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u4 a
      · exact a
    have u11 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u4 a
      · exact a
    have u12 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u4 a
      · exact a
    have u13 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a n8
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n0
      · exact a
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
    have u17 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a u15
    have u20 : ¬v23 := by
      rcases c426 with a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u18
      · exact a
      · exact absurd a u5
    have u21 : ¬v14 := by
      rcases c617 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u20
      · exact absurd a u1
    have u22 : ¬v25 := by
      rcases c1087 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
    have u23 : v10 := by
      rcases c1048 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u22
    have u24 : v26 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u22
      · exact a
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u25 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u24 a
      · exact a
    rcases c280 with a|a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u27
    · exact absurd a u25
    · exact absurd a u6
    · exact absurd a u2
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a u21
  have c1092 : v44 ∨ v35 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v20 := by
      rcases c1089 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v43 := by
      rcases c185 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n7
    have u4 : ¬v36 := by
      rcases c147 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v37 := by
      rcases c152 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v39 := by
      rcases c159 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v38 := by
      rcases c156 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : v34 := by
      rcases c255 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n1
      · exact a
    have u10 : ¬v29 := by
      rcases c126 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c131 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v33 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v32 := by
      rcases c138 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v28 := by
      rcases c1073 with a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v19 := by
      rcases c1009 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
    have u17 : ¬v24 := by
      rcases c1090 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u18 : ¬v17 := by
      rcases c1091 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u19 : ¬v6 := by
      rcases c1013 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u18
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u20 : v10 := by
      rcases c1074 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u17
      · exact absurd a u14
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
    have u21 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : v26 := by
      rcases c1021 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u16
      · exact a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v25 := by
      rcases c115 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v23 := by
      rcases c108 with a|a
      · exact absurd u25 a
      · exact a
    have u28 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v21 := by
      rcases c280 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u28
      · exact absurd a u21
      · exact a
      · exact absurd a u15
      · exact absurd a u22
      · exact absurd a u16
      · exact absurd a u24
    have u30 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u1 a
    have u31 : ¬v18 := by
      rcases c91 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u1 a
    have u32 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u1 a
    have u33 : v4 := by
      rcases c189 with a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u31
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a u26
      · exact absurd a u13
    rcases c787 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u33 a
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd a u32
    · exact absurd a u27
    · exact absurd a u17
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u14
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a n7
  have c1093 : v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v41 := by
      rcases c1065 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v35 := by
      rcases c1092 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v40 := by
      rcases c161 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v33 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    rcases c357 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a n0
  have c1094 : ¬v26 ∨ v17 ∨ v18 ∨ v19 ∨ v24 ∨ v25 ∨ v31 ∨ v33 ∨ v34 ∨ v40 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v27 := by
      rcases c118 with a|a
      · exact absurd n0 a
      · exact a
    rcases c541 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n8
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n9
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n11
    · exact absurd a n3
    · exact absurd a n10
    · exact absurd a n1
    · exact absurd a n4
  have c1095 : v26 ∨ v18 ∨ v19 ∨ ¬v20 ∨ ¬v21 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v15 := by
      rcases c72 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c88 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u3 : ¬v16 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n3 a
    have u4 : ¬v25 := by
      rcases c969 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v23 := by
      rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v22 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u10 a
    rcases c865 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd u10 a
    · exact absurd a n6
  have c1096 : v17 ∨ v18 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v25 := by
      rcases c969 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v39 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v26 := by
      rcases c1094 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u8 : ¬v13 := by
      rcases c545 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u9 : ¬v21 := by
      rcases c1095 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact a
      · exact absurd a n4
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
    have u10 : v27 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd n3 a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n5
    have u11 : ¬v23 := by
      rcases c109 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : ¬v16 := by
      rcases c837 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    rcases c829 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u7
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c1097 : v17 ∨ v16 ∨ ¬v18 ∨ v19 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v40 ∨ v44 ∨ v45 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v10 := by
      rcases c47 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v9 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v12 := by
      rcases c51 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v3 := by
      rcases c188 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n15
      · exact absurd a n12
      · exact absurd a n9
    have u6 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n11
      · exact absurd a n14
      · exact a
    have u7 : v5 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a n10
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n16
      · exact absurd a n13
    rcases c16 with a|a|a
    · exact absurd u6 a
    · exact absurd u7 a
    · exact absurd u5 a
  have c1098 : v17 ∨ ¬v18 ∨ v19 ∨ ¬v20 ∨ v24 ∨ v26 ∨ v28 ∨ v29 ∨ v30 ∨ v31 ∨ v33 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v15 := by
      rcases c68 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u2 : ¬v21 := by
      rcases c91 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v16 := by
      rcases c78 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    have u4 : v42 := by
      rcases c1093 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u5 : ¬v22 := by
      rcases c844 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v23 := by
      rcases c277 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n4
      · exact absurd a n0
    have u7 : ¬v40 := by
      rcases c162 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v38 := by
      rcases c157 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v37 := by
      rcases c153 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : v25 := by
      rcases c1097 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
    have u11 : ¬v27 := by
      rcases c116 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v5 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n10
      · exact absurd a u7
      · exact absurd a n14
    have u13 : v13 := by
      rcases c561 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n3 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a n6
    have u14 : ¬v9 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v8 := by
      rcases c40 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v2 := by
      rcases c187 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a n11
      · exact a
    rcases c729 with a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd u17 a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u16
    · exact absurd a n11
    · exact absurd a n12
  exact ⟨c1054, c1072, c1080, c1084, c1089, c1093, c1094, c1096, c1098⟩
