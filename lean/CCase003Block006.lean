import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 300-349 of the 2559-step refutation of ccase003: 107 core clauses and 36 earlier-derived ones give 21 more. -/
theorem CCase003_block006
    (v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v44 v45 v46 v47 v48 v49 : Prop)
    (c14 : ¬v2 ∨ ¬v3 ∨ ¬v4)
    (c15 : ¬v3 ∨ ¬v2 ∨ ¬v5)
    (c16 : ¬v2 ∨ ¬v3 ∨ ¬v6)
    (c18 : ¬v2 ∨ ¬v5 ∨ ¬v4)
    (c27 : ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c30 : ¬v5 ∨ ¬v4 ∨ ¬v6)
    (c32 : ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c38 : ¬v8 ∨ ¬v9)
    (c39 : ¬v8 ∨ ¬v10)
    (c44 : ¬v9 ∨ ¬v10)
    (c46 : ¬v9 ∨ ¬v12)
    (c48 : ¬v9 ∨ ¬v14)
    (c49 : ¬v10 ∨ ¬v11)
    (c50 : ¬v10 ∨ ¬v12)
    (c52 : ¬v10 ∨ ¬v14)
    (c53 : ¬v11 ∨ ¬v12)
    (c54 : ¬v11 ∨ ¬v13)
    (c55 : ¬v11 ∨ ¬v14)
    (c56 : ¬v12 ∨ ¬v13)
    (c60 : ¬v16 ∨ ¬v15)
    (c61 : ¬v15 ∨ ¬v17)
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
    (c83 : ¬v23 ∨ ¬v25 ∨ ¬v22)
    (c84 : ¬v26 ∨ ¬v22 ∨ ¬v23)
    (c85 : ¬v27 ∨ ¬v22 ∨ ¬v23)
    (c86 : ¬v22 ∨ ¬v28 ∨ ¬v23)
    (c87 : ¬v22 ∨ ¬v25 ∨ ¬v24)
    (c90 : ¬v22 ∨ ¬v28 ∨ ¬v24)
    (c91 : ¬v22 ∨ ¬v26 ∨ ¬v25)
    (c93 : ¬v22 ∨ ¬v28 ∨ ¬v25)
    (c94 : ¬v22 ∨ ¬v27 ∨ ¬v26)
    (c95 : ¬v22 ∨ ¬v28 ∨ ¬v26)
    (c96 : ¬v22 ∨ ¬v28 ∨ ¬v27)
    (c100 : ¬v23 ∨ ¬v28 ∨ ¬v24)
    (c108 : ¬v24 ∨ ¬v27 ∨ ¬v25)
    (c109 : ¬v24 ∨ ¬v28 ∨ ¬v25)
    (c110 : ¬v24 ∨ ¬v27 ∨ ¬v26)
    (c111 : ¬v24 ∨ ¬v28 ∨ ¬v26)
    (c113 : ¬v27 ∨ ¬v26 ∨ ¬v25)
    (c114 : ¬v28 ∨ ¬v26 ∨ ¬v25)
    (c116 : ¬v28 ∨ ¬v27 ∨ ¬v26)
    (c117 : v23 ∨ v22 ∨ v27 ∨ v26 ∨ v24 ∨ v25)
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
    (c141 : ¬v35 ∨ ¬v32)
    (c143 : ¬v35 ∨ ¬v33)
    (c144 : ¬v35 ∨ ¬v34)
    (c146 : ¬v37 ∨ ¬v36)
    (c148 : ¬v39 ∨ ¬v36)
    (c190 : v23 ∨ v37 ∨ v16 ∨ v9 ∨ v44 ∨ v2 ∨ v30)
    (c191 : v10 ∨ v3 ∨ v38 ∨ v24 ∨ v45 ∨ v31 ∨ v17)
    (c192 : v11 ∨ v4 ∨ v46 ∨ v25 ∨ v18 ∨ v32 ∨ v39)
    (c193 : v12 ∨ v26 ∨ v5 ∨ v47 ∨ v19 ∨ v33 ∨ v40)
    (c194 : v6 ∨ v13 ∨ v27 ∨ v41 ∨ v20 ∨ v48 ∨ v34)
    (c211 : v47 ∨ v12 ∨ v45 ∨ v46 ∨ v5 ∨ v3 ∨ ¬v4 ∨ v11)
    (c268 : ¬v27 ∨ v34 ∨ v21 ∨ v28 ∨ v33 ∨ v20 ∨ v19 ∨ v26)
    (c298 : v36 ∨ ¬v37 ∨ v30 ∨ v38 ∨ v31 ∨ v44 ∨ v45 ∨ v29)
    (c314 : v23 ∨ v22 ∨ v21 ∨ ¬v15 ∨ v8 ∨ v9 ∨ v28 ∨ v16)
    (c315 : ¬v35 ∨ v29 ∨ v34 ∨ v28 ∨ v42 ∨ v22 ∨ v41 ∨ v27)
    (c323 : ¬v25 ∨ v32 ∨ v33 ∨ v26 ∨ v24 ∨ v31 ∨ v17 ∨ v18)
    (c332 : v36 ∨ ¬v35 ∨ v42 ∨ v34 ∨ v29 ∨ v22 ∨ v41 ∨ v28)
    (c343 : ¬v11 ∨ v12 ∨ v3 ∨ v18 ∨ v4 ∨ v17 ∨ v10 ∨ v19)
    (c351 : v12 ∨ v7 ∨ v18 ∨ v4 ∨ v14 ∨ v10 ∨ v13 ∨ v19 ∨ v21 ∨ ¬v11 ∨ v3 ∨ v45 ∨ v46 ∨ v47)
    (c356 : ¬v5 ∨ v6 ∨ v46 ∨ v47 ∨ v48 ∨ v4 ∨ v12 ∨ v13)
    (c365 : ¬v33 ∨ v40 ∨ v27 ∨ v41 ∨ v39 ∨ v34 ∨ v26 ∨ v32)
    (c375 : v22 ∨ v16 ∨ v31 ∨ v24 ∨ v17 ∨ ¬v23 ∨ v15 ∨ v30)
    (c388 : v23 ∨ v30 ∨ v17 ∨ v25 ∨ v31 ∨ v18 ∨ ¬v24 ∨ v16)
    (c410 : v23 ∨ ¬v24 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17 ∨ v16)
    (c413 : v29 ∨ v30 ∨ ¬v22 ∨ v28 ∨ v23 ∨ v15 ∨ v16 ∨ v21)
    (c448 : v23 ∨ ¬v24 ∨ v30 ∨ v25 ∨ v18 ∨ v32 ∨ v31 ∨ v17)
    (c456 : ¬v32 ∨ v39 ∨ v31 ∨ v40 ∨ v33 ∨ v38 ∨ v25 ∨ v24)
    (c457 : ¬v32 ∨ v39 ∨ v31 ∨ v33 ∨ v40 ∨ v25 ∨ v38 ∨ v26)
    (c485 : ¬v35 ∨ v42 ∨ v15 ∨ v22 ∨ v21 ∨ v25 ∨ v20 ∨ v28 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v41 ∨ v29)
    (c547 : v22 ∨ ¬v15 ∨ v21 ∨ v8 ∨ v16 ∨ v14 ∨ v23 ∨ v28)
    (c556 : v23 ∨ ¬v24 ∨ v16 ∨ v25 ∨ v32 ∨ v31 ∨ v30 ∨ v17)
    (c559 : v12 ∨ v48 ∨ v5 ∨ v47 ∨ v7 ∨ v49 ∨ ¬v6 ∨ v13)
    (c564 : v19 ∨ ¬v13 ∨ v17 ∨ v18 ∨ v24 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47)
    (c572 : v11 ∨ v17 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c574 : ¬v11 ∨ ¬v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c576 : v13 ∨ v19 ∨ ¬v20 ∨ v21 ∨ v26 ∨ v27 ∨ v28)
    (c577 : v21 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c578 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v17 ∨ v24 ∨ v26 ∨ v31 ∨ v33 ∨ v38 ∨ v40 ∨ v45 ∨ v47)
    (c584 : v19 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c596 : ¬v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c605 : ¬v11 ∨ ¬v6 ∨ ¬v7 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c631 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c637 : ¬v11 ∨ v4 ∨ v5 ∨ v10 ∨ v17 ∨ v18 ∨ v19)
    (c662 : ¬v13 ∨ ¬v17 ∨ v24 ∨ v25)
    (c663 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c668 : v31 ∨ v26 ∨ ¬v27 ∨ ¬v28 ∨ v30 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48)
    (c669 : ¬v19 ∨ v12 ∨ v25 ∨ v26 ∨ v27)
    (c671 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v19 ∨ v26 ∨ v27)
    (c673 : ¬v18 ∨ v11 ∨ v19 ∨ v24 ∨ v25 ∨ v26)
    (c678 : v18 ∨ v24 ∨ ¬v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c680 : v27 ∨ ¬v19 ∨ v22 ∨ ¬v28 ∨ v34 ∨ v35)
    (c688 : v20 ∨ ¬v4 ∨ v13 ∨ v15 ∨ v21 ∨ v27 ∨ v34 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c695 : v19 ∨ ¬v4 ∨ ¬v6 ∨ v13 ∨ v26 ∨ v33 ∨ v40 ∨ v47 ∨ v48 ∨ v49)
    (c704 : ¬v11 ∨ ¬v6 ∨ v17 ∨ v18 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v47)
    (c705 : v25 ∨ v19 ∨ v26 ∨ v27 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c748 : v28 ∨ v25 ∨ v26 ∨ v27 ∨ v29 ∨ v32 ∨ v33 ∨ v34 ∨ v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c795 : v18 ∨ ¬v13 ∨ v16 ∨ v17 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c799 : ¬v23 ∨ v16 ∨ v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31)
    (c800 : ¬v23 ∨ v16 ∨ v22 ∨ ¬v26 ∨ v29 ∨ v30 ∨ v31)
    (c827 : ¬v16 ∨ v23 ∨ ¬v24 ∨ v25 ∨ v30 ∨ v31 ∨ v32)
    (c828 : v6 ∨ ¬v3 ∨ v12 ∨ v13 ∨ v19 ∨ v26 ∨ v33 ∨ v40 ∨ v46 ∨ v47 ∨ v48)
    (c836 : v25 ∨ ¬v13 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46)
    (c850 : v35 ∨ ¬v23 ∨ v26 ∨ ¬v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49)
    (c851 : v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c852 : v28 ∨ v22 ∨ ¬v23 ∨ ¬v35 ∨ v41 ∨ v42)
    (c855 : v28 ∨ v19 ∨ v22 ∨ ¬v25 ∨ ¬v35 ∨ v41 ∨ v42)
    (c863 : v27 ∨ ¬v10 ∨ v15 ∨ v18 ∨ v20 ∨ v21 ∨ v25 ∨ v32 ∨ v34 ∨ v39 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c865 : v41 ∨ v15 ∨ v19 ∨ v22 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (v10 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v4 ∨ v10 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46) ∧ (¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33) ∧ (v5 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v47) ∧ (v33 ∨ v15 ∨ ¬v18 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32) ∧ (v19 ∨ v15 ∨ ¬v17 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v27 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34) ∧ (v19 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48) ∧ (v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48) ∧ (¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49) ∧ (v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32) ∧ (v25 ∨ ¬v19 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40) ∧ (v47 ∨ ¬v22 ∨ ¬v23 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49) ∧ (v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40) ∧ (¬v34 ∨ ¬v23 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49) ∧ (v27 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (¬v28 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49) := by
  have c866 : v10 ∨ v4 ∨ v18 ∨ v19 ∨ v21 ∨ v25 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n13
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v26 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v14 := by
      rcases c55 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact a
      · exact absurd a n14
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n11
    have u7 : v6 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u5
    have u8 : ¬v7 := by
      rcases c605 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n14
    have u9 : ¬v3 := by
      rcases c27 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    rcases c351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u8
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u3
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd u1 a
    · exact absurd a u9
    · exact absurd a n12
    · exact absurd a n13
    · exact absurd a n14
  have c867 : v4 ∨ v10 ∨ v15 ∨ v19 ∨ ¬v20 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c73 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd n4 a
    have u3 : ¬v18 := by
      rcases c76 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : v28 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n5
    have u5 : ¬v25 := by
      rcases c93 with a|a|a
      · exact absurd n6 a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v24 := by
      rcases c90 with a|a|a
      · exact absurd n6 a
      · exact absurd u4 a
      · exact a
    have u7 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n16
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
    have u8 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n12
      · exact absurd a u6
      · exact absurd a n15
      · exact absurd a n10
      · exact absurd a u1
    have u9 : v5 := by
      rcases c637 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
    have u10 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c15 with a|a|a
    · exact absurd u8 a
    · exact absurd u10 a
    · exact absurd u9 a
  have c868 : v4 ∨ v10 ∨ v17 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v5 := by
      rcases c637 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u5 : v3 := by
      rcases c343 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n4
    have u6 : v6 := by
      rcases c356 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u3
    rcases c27 with a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd u6 a
  have c869 : ¬v25 ∨ v15 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v24 := by
      rcases c87 with a|a|a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v26 := by
      rcases c91 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c83 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u4 : ¬v28 := by
      rcases c93 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u5 : v18 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v21 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u5 a
    rcases c413 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd n2 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd a u6
    · exact absurd a u7
  have c870 : v5 ∨ ¬v18 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v33 ∨ v40 ∨ v47 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v12 := by
      rcases c193 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v11 := by
      rcases c673 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c53 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c871 : ¬v26 ∨ v19 ∨ ¬v22 ∨ v25 ∨ v32 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
  have c872 : v33 ∨ v15 ∨ ¬v18 ∨ v19 ∨ ¬v22 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v38 ∨ v40 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v17 := by
      rcases c71 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n4 a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n0
    have u3 : ¬v26 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd a n0
      · exact absurd a n10
    have u4 : v11 := by
      rcases c572 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
    have u5 : v5 := by
      rcases c870 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n15
    have u6 : ¬v12 := by
      rcases c53 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v13 := by
      rcases c54 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v10 := by
      rcases c49 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a n11
      · exact absurd a n5
      · exact absurd a n13
      · exact absurd a n8
      · exact absurd a u1
    have u10 : v6 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    rcases c27 with a|a|a
    · exact absurd u5 a
    · exact absurd u9 a
    · exact absurd u10 a
  have c873 : ¬v24 ∨ v15 ∨ ¬v22 ∨ v25 ∨ v29 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v28 := by
      rcases c90 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v23 := by
      rcases c82 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
    have u3 : ¬v16 := by
      rcases c827 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v17 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a n5
      · exact a
    have u5 : v21 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n2 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u3
      · exact a
    rcases c74 with a|a
    · exact absurd u5 a
    · exact absurd u4 a
  have c874 : v29 ∨ v13 ∨ v15 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v24 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n6 a
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v18 := by
      rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u5 : ¬v10 := by
      rcases c863 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    rcases c866 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n7
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n18
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a n21
  have c875 : v19 ∨ v15 ∨ ¬v17 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19⟩ := hc
    have u1 : ¬v21 := by
      rcases c74 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v20 := by
      rcases c73 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v26 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : ¬v24 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v13 := by
      rcases c662 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u5
      · exact absurd a u3
    have u7 : v27 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd n3 a
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
      · exact absurd a n19
    have u8 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd u7 a
    rcases c268 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n9
    · exact absurd a u1
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a u4
  have c876 : ¬v27 ∨ v15 ∨ v19 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v29 ∨ v30 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v23 := by
      rcases c85 with a|a|a
      · exact absurd n0 a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v28 := by
      rcases c96 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n0 a
    have u3 : v20 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n9
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a n8
      · exact a
      · exact absurd a n2
      · exact absurd a n5
    have u4 : v16 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd n4 a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact a
      · exact absurd a n3
    rcases c69 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c877 : v18 ∨ v10 ∨ v15 ∨ v16 ∨ v17 ∨ v19 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n6 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v24 := by
      rcases c448 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n10
      · exact absurd a n4
    have u3 : v4 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n16
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u5 : ¬v26 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n15
      · exact absurd a u2
      · exact absurd a n19
      · exact absurd a n10
      · exact absurd a n4
    have u7 : ¬v6 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u3 a
      · exact a
      · exact absurd a n4
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n21
    have u8 : ¬v2 := by
      rcases c14 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u3 a
    have u9 : v12 := by
      rcases c828 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd u6 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u10 : v9 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n14
      · exact absurd a n3
      · exact a
      · exact absurd a n18
      · exact absurd a u8
      · exact absurd a n9
    rcases c46 with a|a
    · exact absurd u10 a
    · exact absurd u9 a
  have c878 : v19 ∨ v15 ∨ v21 ∨ ¬v22 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v17 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u3 : ¬v24 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v18 := by
      rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u5 : ¬v26 := by
      rcases c871 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u6 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u7 : ¬v27 := by
      rcases c876 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
    have u8 : v20 := by
      rcases c874 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u7
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
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v28 := by
      rcases c576 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u7
      · exact a
    have u11 : ¬v23 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact absurd u10 a
      · exact a
    have u12 : v10 := by
      rcases c877 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u11
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
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
    have u13 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v14 := by
      rcases c52 with a|a
      · exact absurd u12 a
      · exact a
    rcases c671 with a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a u7
  have c879 : v19 ∨ v15 ∨ v16 ∨ v17 ∨ v18 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v10 := by
      rcases c877 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd n5 a
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
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u3 : ¬v12 := by
      rcases c50 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v9 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v11 := by
      rcases c49 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a n18
      · exact a
      · exact absurd a n8
    have u7 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a n20
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n10
      · exact absurd a n15
    have u8 : ¬v5 := by
      rcases c18 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    rcases c211 with a|a|a|a|a|a|a|a
    · exact absurd a n21
    · exact absurd a u3
    · exact absurd a n19
    · exact absurd a n20
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd u7 a
    · exact absurd a u5
  have c880 : v39 ∨ v15 ∨ v19 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v35 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
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
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v22 := by
      rcases c865 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u10 : ¬v17 := by
      rcases c875 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u11 : ¬v24 := by
      rcases c873 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
    have u12 : ¬v18 := by
      rcases c872 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd u8 a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : v21 := by
      rcases c878 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u14 : ¬v16 := by
      rcases c70 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v23 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd u8 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u15 a
    have u17 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u15 a
    have u19 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a n12
    have u21 : ¬v4 := by
      rcases c695 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u22 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n2
      · exact absurd a u16
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a n11
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n10
    · exact absurd a u9
    · exact absurd a u12
    · exact absurd a u7
    · exact absurd a n0
  have c881 : v18 ∨ v17 ∨ v19 ∨ ¬v22 ∨ ¬v23 ∨ v26 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
    have u3 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n3 a
      · exact a
      · exact absurd n4 a
    have u4 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n4 a
    have u5 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u6 : v6 := by
      rcases c584 with a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n17
    have u7 : ¬v11 := by
      rcases c704 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
    have u8 : ¬v4 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd a n15
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n11
  have c882 : v17 ∨ v4 ∨ v18 ∨ v19 ∨ v25 ∨ v32 ∨ v39 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v11 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v10 := by
      rcases c868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c49 with a|a
    · exact absurd u2 a
    · exact absurd u1 a
  have c883 : ¬v27 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v33 ∨ v34 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v28 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
    rcases c96 with a|a|a
    · exact absurd n4 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c884 : v26 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v23 ∨ v25 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : ¬v24 := by
      rcases c388 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n3
      · exact a
      · exact absurd a n1
    have u2 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n15
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
    have u3 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u4 : ¬v6 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u2 a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n16
      · exact absurd a n18
      · exact absurd a n20
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a n8
    · exact absurd a n17
    · exact absurd a n5
    · exact absurd a n21
    · exact absurd a n13
  have c885 : v18 ∨ v16 ∨ v17 ∨ v19 ∨ v20 ∨ v21 ∨ ¬v22 ∨ v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23⟩ := hc
    have u1 : ¬v23 := by
      rcases c881 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v27 := by
      rcases c883 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
    have u3 : v25 := by
      rcases c884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u1
      · exact a
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u4 : v24 := by
      rcases c323 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n2
      · exact absurd a n0
    rcases c87 with a|a|a
    · exact absurd n6 a
    · exact absurd u3 a
    · exact absurd u4 a
  have c886 : ¬v22 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : v26 := by
      rcases c885 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n0 a
      · exact a
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
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u2 : ¬v27 := by
      rcases c94 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v25 := by
      rcases c91 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    rcases c631 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd u1 a
    · exact absurd a u2
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c887 : ¬v6 ∨ ¬v4 ∨ v12 ∨ v13 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v7 := by
      rcases c32 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v5 := by
      rcases c30 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c559 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd n0 a
    · exact absurd a n3
  have c888 : v24 ∨ ¬v4 ∨ v9 ∨ ¬v15 ∨ v22 ∨ v23 ∨ v28 ∨ v30 ∨ v31 ∨ v37 ∨ v38 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v2 := by
      rcases c190 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n11
      · exact a
      · exact absurd a n7
    have u5 : v8 := by
      rcases c314 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u1
    have u6 : ¬v3 := by
      rcases c14 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v10 := by
      rcases c39 with a|a
      · exact absurd u5 a
      · exact a
    rcases c191 with a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n12
    · exact absurd a n8
    · exact absurd a u2
  have c889 : v23 ∨ ¬v15 ∨ v19 ∨ v22 ∨ v25 ∨ ¬v26 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v27 := by
      rcases c631 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd n5 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v24 := by
      rcases c110 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n5 a
    have u7 : ¬v28 := by
      rcases c116 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n5 a
    have u8 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u9 : v9 := by
      rcases c888 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u8 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v8 := by
      rcases c38 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v14 := by
      rcases c48 with a|a
      · exact absurd u9 a
      · exact a
    rcases c547 with a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd n1 a
    · exact absurd a u4
    · exact absurd a u10
    · exact absurd a u2
    · exact absurd a u11
    · exact absurd a n0
    · exact absurd a u7
  have c890 : v22 ∨ ¬v15 ∨ v19 ∨ ¬v26 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n4 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n4 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n4 a
      · exact a
    have u8 : ¬v23 := by
      rcases c800 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
    have u9 : v25 := by
      rcases c889 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd n3 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : v28 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd u9 a
      · exact absurd n4 a
      · exact absurd a n9
      · exact absurd a n10
    rcases c114 with a|a|a
    · exact absurd u10 a
    · exact absurd n3 a
    · exact absurd u9 a
  have c891 : v28 ∨ v20 ∨ v21 ∨ v22 ∨ v26 ∨ ¬v35 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n5 a
      · exact a
    have u6 : v27 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n6
      · exact a
    have u7 : v36 := by
      rcases c332 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
    have u8 : v19 := by
      rcases c268 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n1
      · exact a
      · exact absurd a n4
    have u9 : ¬v39 := by
      rcases c148 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v25 := by
      rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n7
      · exact absurd a u10
      · exact absurd a n3
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a u3
    have u13 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    rcases c108 with a|a|a
    · exact absurd u13 a
    · exact absurd u6 a
    · exact absurd u12 a
  have c892 : v26 ∨ v16 ∨ v17 ∨ v18 ∨ v19 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v35 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n9 a
      · exact a
    have u2 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n9 a
      · exact a
    have u3 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n9 a
      · exact a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n9 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n9 a
      · exact a
    have u6 : v28 := by
      rcases c891 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd n9 a
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v27 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u8 : v25 := by
      rcases c884 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact a
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n17
      · exact absurd a n18
      · exact absurd a n19
      · exact absurd a n20
    have u9 : v24 := by
      rcases c678 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
    rcases c109 with a|a|a
    · exact absurd u9 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c893 : v41 ∨ v19 ∨ v37 ∨ v38 ∨ v39 ∨ v40 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v35 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v15 := by
      rcases c880 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v16 := by
      rcases c60 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v17 := by
      rcases c61 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v21 := by
      rcases c65 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v18 := by
      rcases c62 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v20 := by
      rcases c64 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v22 := by
      rcases c886 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u15 : ¬v26 := by
      rcases c890 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : v23 := by
      rcases c892 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u14
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u17 : v28 := by
      rcases c852 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u16 a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n6
    have u18 : v24 := by
      rcases c799 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
    rcases c100 with a|a|a
    · exact absurd u16 a
    · exact absurd u17 a
    · exact absurd u18 a
  have c894 : ¬v23 ∨ v15 ∨ v16 ∨ v17 ∨ v20 ∨ v21 ∨ v22 ∨ ¬v35 ∨ v39 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v28 := by
      rcases c852 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd n7 a
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v24 := by
      rcases c100 with a|a|a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact a
    rcases c375 with a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u3
  have c895 : v28 ∨ v15 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v35 ∨ v39 ∨ v40 ∨ v41 ∨ v42 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : v27 := by
      rcases c315 with a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n4
      · exact absurd a n9
      · exact a
    have u7 : v25 := by
      rcases c485 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n3
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a u3
    have u8 : ¬v26 := by
      rcases c113 with a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd u7 a
    have u9 : v19 := by
      rcases c855 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd n6 a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v24 := by
      rcases c108 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u7 a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
  have c896 : v44 ∨ v15 ∨ v17 ∨ v18 ∨ v20 ∨ v21 ∨ v22 ∨ v23 ∨ ¬v26 ∨ ¬v28 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22⟩ := hc
    have u1 : ¬v27 := by
      rcases c116 with a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd n8 a
    have u2 : ¬v25 := by
      rcases c114 with a|a|a
      · exact absurd n9 a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v24 := by
      rcases c111 with a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd n8 a
    have u4 : ¬v10 := by
      rcases c863 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n19
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u5 : ¬v13 := by
      rcases c836 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
    have u6 : v3 := by
      rcases c191 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a n15
      · exact absurd a u3
      · exact absurd a n18
      · exact absurd a n11
      · exact absurd a n2
    have u7 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n13
      · exact absurd a n17
      · exact absurd a n20
      · exact absurd a n21
      · exact absurd a n22
    have u8 : v6 := by
      rcases c194 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u1
      · exact absurd a n17
      · exact absurd a n4
      · exact absurd a n21
      · exact absurd a n13
    have u9 : v2 := by
      rcases c663 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n18
      · exact absurd a n19
    rcases c16 with a|a|a
    · exact absurd u9 a
    · exact absurd u6 a
    · exact absurd u8 a
  have c897 : v25 ∨ v16 ∨ v17 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v24 := by
      rcases c556 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n2
    rcases c117 with a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n3
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a n0
  have c898 : v39 ∨ v22 ∨ v37 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v19 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v35 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
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
    have u3 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v15 := by
      rcases c63 with a|a
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
    have u9 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u2 a
      · exact a
    have u13 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v23 := by
      rcases c894 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
    have u15 : v28 := by
      rcases c895 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u16 : ¬v26 := by
      rcases c896 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u17 : ¬v27 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u16
      · exact a
      · exact absurd u15 a
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u18 : v25 := by
      rcases c897 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a u14
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u13
    have u19 : ¬v24 := by
      rcases c109 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u18 a
    rcases c678 with a|a|a|a|a|a|a
    · exact absurd a u6
    · exact absurd a u19
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u9
    · exact absurd a u13
    · exact absurd a u12
  have c899 : v25 ∨ ¬v19 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v30 ∨ v31 ∨ v32 ∨ v34 ∨ v37 ∨ v38 ∨ v39 ∨ v41 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
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
    have u4 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd n1 a
      · exact a
    have u6 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd n1 a
    have u7 : ¬v24 := by
      rcases c410 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u1
    have u8 : v28 := by
      rcases c413 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u6
    have u9 : ¬v13 := by
      rcases c795 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v27 := by
      rcases c96 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v26 := by
      rcases c95 with a|a|a
      · exact absurd n2 a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v4 := by
      rcases c688 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n12
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u13 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
    rcases c192 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n15
    · exact absurd a n0
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n11
  have c900 : v37 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v35 := by
      rcases c851 with a|a|a|a|a|a|a|a|a|a|a|a|a
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
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v31 := by
      rcases c138 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v30 := by
      rcases c134 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v34 := by
      rcases c144 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c129 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v33 := by
      rcases c143 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v32 := by
      rcases c141 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : v22 := by
      rcases c898 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : v19 := by
      rcases c893 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n0
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
    have u10 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v18 := by
      rcases c75 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v20 := by
      rcases c78 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v21 := by
      rcases c79 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v25 := by
      rcases c869 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v23 := by
      rcases c899 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd u9 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u15 a
    have u17 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u15 a
    have u18 : v12 := by
      rcases c669 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
    have u19 : ¬v11 := by
      rcases c574 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
    have u20 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u18 a
      · exact a
    have u21 : v4 := by
      rcases c192 with a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a n2
    rcases c688 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u12
    · exact absurd u21 a
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u16
    · exact absurd a u4
    · exact absurd a n4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c901 : v28 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v30 ∨ v31 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18⟩ := hc
    have u1 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u2 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v29 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n13
      · exact absurd a n14
      · exact a
    have u4 : ¬v34 := by
      rcases c128 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v33 := by
      rcases c127 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : v21 := by
      rcases c577 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
      · exact absurd a n18
    have u8 : ¬v19 := by
      rcases c79 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v17 := by
      rcases c74 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v18 := by
      rcases c77 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v20 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v4 := by
      rcases c882 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u10
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n9
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u13 : ¬v13 := by
      rcases c564 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v6 := by
      rcases c578 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u12 a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n16
    rcases c194 with a|a|a|a|a|a|a
    · exact absurd a u14
    · exact absurd a u13
    · exact absurd a n4
    · exact absurd a n11
    · exact absurd a u11
    · exact absurd a n17
    · exact absurd a u4
  have c902 : v28 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v31 ∨ v32 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v29 := by
      rcases c125 with a|a
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
    have u4 : ¬v34 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n4 a
    rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a u3
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
  have c903 : v31 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : v30 := by
      rcases c901 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n0
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
    have u2 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v34 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u1 a
    rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u2
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
  have c904 : v32 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v31 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
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
    rcases c903 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n0
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
  have c905 : v31 ∨ v24 ∨ v25 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    rcases c456 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u1
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n1
  have c906 : ¬v32 ∨ v24 ∨ v25 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    rcases c905 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c907 : v27 ∨ v24 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v32 := by
      rcases c906 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
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
    · exact absurd a n15
  have c908 : v47 ∨ ¬v22 ∨ ¬v23 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v25 := by
      rcases c83 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v26 := by
      rcases c84 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u3 : ¬v28 := by
      rcases c86 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v27 := by
      rcases c85 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    have u5 : ¬v24 := by
      rcases c82 with a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n0
    · exact absurd a n11
    · exact absurd a n12
  have c909 : v31 ∨ v25 ∨ v26 ∨ ¬v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v33 := by
      rcases c139 with a|a
      · exact absurd n3 a
      · exact a
    rcases c457 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd a n2
  have c910 : ¬v32 ∨ v25 ∨ v26 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v31 := by
      rcases c135 with a|a
      · exact a
      · exact absurd n0 a
    rcases c909 with a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c911 : v33 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v30 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v37 := by
      rcases c900 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
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
    have u3 : ¬v36 := by
      rcases c146 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : v24 := by
      rcases c907 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
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
    have u5 : ¬v31 := by
      rcases c902 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a u1
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
    have u6 : v29 := by
      rcases c298 with a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n13
      · exact a
    have u7 : ¬v35 := by
      rcases c129 with a|a
      · exact absurd u6 a
      · exact a
    rcases c596 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u7
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
  have c912 : v28 ∨ v25 ∨ v26 ∨ v27 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v32 := by
      rcases c910 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c365 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n8
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u1
    have u3 : v30 := by
      rcases c911 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
      · exact absurd a n15
    have u4 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u3 a
    rcases c748 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n4
    · exact absurd a u4
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
  have c913 : ¬v34 ∨ ¬v23 ∨ v26 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v35 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    rcases c850 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n11
  have c914 : v27 ∨ ¬v23 ∨ v25 ∨ v26 ∨ v28 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v34 := by
      rcases c913 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    rcases c912 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a u1
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
  have c915 : ¬v28 ∨ v22 ∨ v25 ∨ v26 ∨ v27 ∨ ¬v30 ∨ v34 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v31 := by
      rcases c130 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v35 := by
      rcases c134 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v29 := by
      rcases c124 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v33 := by
      rcases c132 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v32 := by
      rcases c131 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v19 := by
      rcases c680 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u2
    rcases c705 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a u2
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
  exact ⟨c866, c867, c869, c870, c872, c873, c875, c876, c879, c882, c887, c897, c899, c900, c906, c908, c909, c910, c913, c914, c915⟩
