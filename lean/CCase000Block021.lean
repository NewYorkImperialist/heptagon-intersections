import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1050-1099 of the 2189-step refutation of ccase000: 130 core clauses and 97 earlier-derived ones give 14 more. -/
theorem CCase000_block021
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c7 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v2)
    (c8 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v2)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c14 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c16 : ¬v1 ∨ ¬v3 ∨ ¬v6 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c18 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v5)
    (c20 : ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c24 : ¬v2 ∨ ¬v5 ∨ ¬v3 ∨ ¬v6)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c32 : ¬v5 ∨ ¬v3 ∨ ¬v7 ∨ ¬v4)
    (c34 : ¬v3 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
    (c40 : ¬v9 ∨ ¬v8)
    (c41 : ¬v8 ∨ ¬v10)
    (c42 : ¬v11 ∨ ¬v8)
    (c43 : ¬v8 ∨ ¬v12)
    (c44 : ¬v8 ∨ ¬v13)
    (c45 : ¬v8 ∨ ¬v14)
    (c46 : ¬v9 ∨ ¬v10)
    (c47 : ¬v11 ∨ ¬v9)
    (c48 : ¬v9 ∨ ¬v12)
    (c49 : ¬v9 ∨ ¬v13)
    (c50 : ¬v9 ∨ ¬v14)
    (c51 : ¬v11 ∨ ¬v10)
    (c52 : ¬v10 ∨ ¬v12)
    (c53 : ¬v10 ∨ ¬v13)
    (c54 : ¬v10 ∨ ¬v14)
    (c55 : ¬v11 ∨ ¬v12)
    (c56 : ¬v11 ∨ ¬v13)
    (c57 : ¬v11 ∨ ¬v14)
    (c58 : ¬v13 ∨ ¬v12)
    (c59 : ¬v14 ∨ ¬v12)
    (c61 : ¬v15 ∨ ¬v16)
    (c63 : ¬v15 ∨ ¬v18)
    (c64 : ¬v15 ∨ ¬v19)
    (c65 : ¬v15 ∨ ¬v20)
    (c66 : ¬v15 ∨ ¬v21)
    (c67 : ¬v16 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c69 : ¬v16 ∨ ¬v19)
    (c71 : ¬v21 ∨ ¬v16)
    (c72 : ¬v17 ∨ ¬v18)
    (c76 : ¬v18 ∨ ¬v19)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c80 : ¬v21 ∨ ¬v19)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c89 : ¬v25 ∨ ¬v23)
    (c90 : ¬v23 ∨ ¬v26)
    (c93 : ¬v24 ∨ ¬v25)
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
    (c111 : ¬v32 ∨ ¬v30)
    (c112 : ¬v33 ∨ ¬v30)
    (c113 : ¬v34 ∨ ¬v30)
    (c114 : ¬v35 ∨ ¬v30)
    (c115 : ¬v31 ∨ ¬v32)
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c119 : ¬v32 ∨ ¬v33)
    (c122 : ¬v34 ∨ ¬v33)
    (c123 : ¬v35 ∨ ¬v33)
    (c125 : v29 ∨ v35 ∨ v30 ∨ v32 ∨ v31 ∨ v34 ∨ v33)
    (c126 : ¬v37 ∨ ¬v36)
    (c127 : ¬v38 ∨ ¬v36)
    (c128 : ¬v39 ∨ ¬v36)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c136 : ¬v37 ∨ ¬v42)
    (c137 : ¬v38 ∨ ¬v39)
    (c138 : ¬v40 ∨ ¬v38)
    (c139 : ¬v41 ∨ ¬v38)
    (c140 : ¬v42 ∨ ¬v38)
    (c141 : ¬v39 ∨ ¬v40)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c149 : ¬v45 ∨ ¬v43)
    (c154 : ¬v45 ∨ ¬v44)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c173 : v11 ∨ v25 ∨ v4 ∨ v46 ∨ v18 ∨ v32 ∨ v39)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c211 : v43 ∨ v29 ∨ v30 ∨ v44 ∨ ¬v36 ∨ v37 ∨ v42 ∨ v49)
    (c224 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v47 ∨ v40 ∨ v48)
    (c242 : v29 ∨ ¬v28 ∨ v35 ∨ v21 ∨ v20 ∨ v34 ∨ v22 ∨ v27)
    (c282 : v15 ∨ v29 ∨ v35 ∨ v16 ∨ v23 ∨ ¬v22 ∨ v28 ∨ v21)
    (c303 : v12 ∨ ¬v18 ∨ v26 ∨ v25 ∨ v24 ∨ v17 ∨ v11 ∨ v19)
    (c331 : ¬v45 ∨ v44 ∨ v46 ∨ v3 ∨ v38 ∨ v2 ∨ v37 ∨ v39)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c374 : v36 ∨ ¬v30 ∨ v37 ∨ v9 ∨ v24 ∨ v28 ∨ v10 ∨ v29 ∨ v23 ∨ v16 ∨ v35 ∨ v31 ∨ v8 ∨ v42)
    (c391 : v36 ∨ v29 ∨ v38 ∨ v37 ∨ ¬v30 ∨ v31 ∨ v23 ∨ v24)
    (c400 : v29 ∨ ¬v22 ∨ v30 ∨ v21 ∨ v15 ∨ v23 ∨ v16 ∨ v28)
    (c418 : v36 ∨ ¬v30 ∨ v22 ∨ v37 ∨ v31 ∨ v23 ∨ v24 ∨ v29)
    (c426 : ¬v45 ∨ v36 ∨ v1 ∨ v23 ∨ v25 ∨ v31 ∨ v39 ∨ v24 ∨ v38 ∨ v2 ∨ v3 ∨ v43 ∨ v44 ∨ v46)
    (c431 : ¬v33 ∨ v25 ∨ v27 ∨ v26 ∨ v34 ∨ v32 ∨ v40 ∨ v41)
    (c439 : v15 ∨ ¬v8 ∨ v1 ∨ v14 ∨ v21 ∨ v2 ∨ v16 ∨ v9)
    (c446 : v11 ∨ v33 ∨ v31 ∨ v3 ∨ v39 ∨ v5 ∨ v32 ∨ v10 ∨ v44 ∨ ¬v4 ∨ v2 ∨ v9 ∨ v46 ∨ v47)
    (c451 : ¬v45 ∨ v4 ∨ v38 ∨ v3 ∨ v2 ∨ v44 ∨ v39 ∨ v46)
    (c462 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v9 ∨ v2 ∨ v8)
    (c471 : v20 ∨ v5 ∨ v4 ∨ v11 ∨ v18 ∨ v13 ∨ v19 ∨ ¬v12)
    (c473 : v43 ∨ v29 ∨ v44 ∨ v49 ∨ v35 ∨ v42 ∨ ¬v36 ∨ v37)
    (c499 : v29 ∨ v35 ∨ ¬v8 ∨ v15 ∨ v21 ∨ v1 ∨ v14 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v22 ∨ v17 ∨ v30)
    (c526 : v43 ∨ v8 ∨ v44 ∨ v3 ∨ v1 ∨ ¬v2 ∨ v10 ∨ v9)
    (c531 : v40 ∨ ¬v33 ∨ v27 ∨ v39 ∨ v34 ∨ v32 ∨ v25 ∨ v26)
    (c554 : ¬v31 ∨ v30 ∨ v38 ∨ v37 ∨ v24 ∨ v25 ∨ v23 ∨ v32)
    (c562 : ¬v3 ∨ ¬v8 ∨ v18 ∨ v19 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34 ∨ v39 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c600 : v15 ∨ ¬v2 ∨ ¬v5 ∨ v13 ∨ v20 ∨ v21 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c607 : v19 ∨ v25 ∨ ¬v26 ∨ v27 ∨ v32 ∨ v33 ∨ v34)
    (c613 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v22 ∨ v28)
    (c614 : ¬v9 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c615 : ¬v27 ∨ ¬v16 ∨ v28 ∨ v32 ∨ v34 ∨ v35 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c628 : ¬v16 ∨ v8 ∨ v9 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c630 : ¬v16 ∨ v9 ∨ v10 ∨ v17 ∨ v22 ∨ v23 ∨ v24)
    (c635 : v15 ∨ v8 ∨ v10 ∨ v11 ∨ v16 ∨ ¬v18 ∨ v22 ∨ v25 ∨ v26 ∨ v31 ∨ v32 ∨ v33)
    (c640 : ¬v19 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27)
    (c646 : ¬v18 ∨ ¬v28 ∨ v34 ∨ v35)
    (c649 : ¬v21 ∨ v8 ∨ v13 ∨ v14 ∨ v27 ∨ v28)
    (c652 : v15 ∨ v8 ∨ v9 ∨ v10 ∨ ¬v16 ∨ v22 ∨ v23)
    (c653 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v22 ∨ v23)
    (c661 : v5 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c700 : ¬v7 ∨ ¬v6 ∨ v11 ∨ v12 ∨ v18 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v33 ∨ v39 ∨ v40 ∨ v46 ∨ v47)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c728 : ¬v4 ∨ ¬v3 ∨ ¬v7 ∨ v8 ∨ v12 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v47 ∨ v48 ∨ v49)
    (c749 : ¬v10 ∨ v7 ∨ v22 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c780 : ¬v15 ∨ v8 ∨ v9 ∨ v14 ∨ v16 ∨ v22 ∨ v23)
    (c798 : v5 ∨ v12 ∨ v26 ∨ v27 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v47)
    (c805 : ¬v5 ∨ v4 ∨ v6 ∨ v12 ∨ v46 ∨ v47 ∨ v48)
    (c806 : v16 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v17 ∨ v23 ∨ v24)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c822 : ¬v19 ∨ v12 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27)
    (c823 : v12 ∨ v5 ∨ v13 ∨ v20 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c824 : ¬v12 ∨ v4 ∨ v23 ∨ v25 ∨ v26 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c838 : v32 ∨ v26 ∨ ¬v33 ∨ v39 ∨ v40 ∨ v41)
    (c841 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v42)
    (c843 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v25 ∨ v26)
    (c847 : ¬v10 ∨ v4 ∨ v24 ∨ v25 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c848 : v11 ∨ v4 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v32 ∨ v38 ∨ v39 ∨ v40 ∨ v46)
    (c879 : v14 ∨ v6 ∨ v13 ∨ v26 ∨ ¬v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c904 : v26 ∨ ¬v1 ∨ ¬v5 ∨ ¬v7 ∨ v11 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c918 : v33 ∨ v6 ∨ v13 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v34 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c934 : v12 ∨ v5 ∨ v25 ∨ v26 ∨ v27 ∨ v33 ∨ v40 ∨ v47)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c968 : v7 ∨ ¬v11 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c969 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v32 ∨ v39 ∨ v46)
    (c984 : ¬v9 ∨ v4 ∨ v24 ∨ v25 ∨ v32 ∨ v39 ∨ v46)
    (c1012 : v23 ∨ v17 ∨ ¬v24 ∨ v30 ∨ v31 ∨ v32)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1033 : ¬v33 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1036 : ¬v16 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1090 : ¬v40 ∨ v33 ∨ v46 ∨ v47 ∨ v48)
    (c1100 : ¬v28 ∨ v6 ∨ v8 ∨ v13 ∨ v14 ∨ v33 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1101 : ¬v35 ∨ v25 ∨ v27 ∨ v28 ∨ v33 ∨ v36 ∨ v39 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1120 : ¬v28 ∨ ¬v20 ∨ v34 ∨ v35 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1130 : ¬v10 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1156 : v26 ∨ v5 ∨ v12 ∨ v29 ∨ v31 ∨ v32 ∨ v33 ∨ v34 ∨ v40 ∨ v41 ∨ v47 ∨ v48 ∨ v49)
    (c1176 : v22 ∨ ¬v4 ∨ ¬v5 ∨ v7 ∨ ¬v8 ∨ v12 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c1182 : ¬v31 ∨ v9 ∨ v10 ∨ v11 ∨ v17 ∨ v23 ∨ v24 ∨ v26 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40)
    (c1185 : ¬v31 ∨ v23 ∨ v24 ∨ v25 ∨ v32 ∨ v38 ∨ v39)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1251 : ¬v12 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1253 : v6 ∨ v11 ∨ v12 ∨ v13 ∨ v27 ∨ v28 ∨ v34 ∨ v40 ∨ v41 ∨ v42 ∨ v48)
    (c1265 : v5 ∨ v12 ∨ v13 ∨ ¬v27 ∨ v40 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1271 : ¬v35 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1290 : ¬v35 ∨ v28 ∨ v34 ∨ v36 ∨ v41 ∨ v42)
    (c1295 : ¬v10 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1351 : v22 ∨ ¬v11 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v33 ∨ v34 ∨ v36 ∨ v40 ∨ v41 ∨ v42 ∨ v43 ∨ v47 ∨ v48 ∨ v49)
    (c1376 : v25 ∨ v4 ∨ v10 ∨ v11 ∨ v12 ∨ v32 ∨ v39 ∨ v46)
    (c1390 : v23 ∨ v28 ∨ v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1405 : v45 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1420 : ¬v10 ∨ v1 ∨ v22 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1429 : ¬v12 ∨ v2 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1441 : ¬v12 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1452 : ¬v13 ∨ v1 ∨ v22 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1464 : v47 ∨ ¬v1 ∨ ¬v4 ∨ ¬v6 ∨ v43 ∨ v48 ∨ v49)
    (c1468 : ¬v2 ∨ ¬v1 ∨ ¬v6 ∨ v13 ∨ v47 ∨ v48 ∨ v49)
    (c1479 : ¬v37 ∨ v29 ∨ v30 ∨ v31 ∨ v36 ∨ v43 ∨ v44)
    (c1486 : v26 ∨ v24 ∨ ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1493 : ¬v13 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44)
    (c1496 : ¬v32 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1504 : ¬v41 ∨ v34 ∨ v35 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1516 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1531 : ¬v12 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v36 ∨ v43)
    (c1539 : ¬v33 ∨ v6 ∨ v13 ∨ v20 ∨ v27 ∨ v47 ∨ v48 ∨ v49)
    (c1543 : v7 ∨ v14 ∨ v21 ∨ v22 ∨ v27 ∨ v28 ∨ v42 ∨ v47 ∨ v48 ∨ v49)
    (c1547 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v40 ∨ v46 ∨ v47)
    (c1563 : v40 ∨ ¬v2 ∨ v10 ∨ ¬v11 ∨ v13 ∨ v22 ∨ v23 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1572 : ¬v2 ∨ ¬v4 ∨ v12 ∨ v22 ∨ v23 ∨ v29 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1576 : v28 ∨ ¬v1 ∨ ¬v2 ∨ v12 ∨ v22 ∨ v23 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1589 : v23 ∨ ¬v2 ∨ v22 ∨ v30 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1600 : v49 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v30 ∨ v46 ∨ v47 ∨ v48)
    (c1605 : v30 ∨ v22 ∨ v23 ∨ ¬v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    (c1609 : ¬v4 ∨ ¬v1 ∨ ¬v7 ∨ v10 ∨ v11 ∨ v12 ∨ v46 ∨ v47)
    (c1612 : v12 ∨ ¬v1 ∨ ¬v7 ∨ v11 ∨ v14 ∨ v21 ∨ ¬v25 ∨ v28 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48)
    (c1614 : v24 ∨ v22 ∨ v23 ∨ v29 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49)
    : (¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44) ∧ (¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49) ∧ (v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43) ∧ (¬v1 ∨ ¬v12 ∨ v18 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29) ∧ (¬v22 ∨ ¬v1 ∨ v2 ∨ v4 ∨ ¬v6 ∨ ¬v12 ∨ v23 ∨ v29 ∨ v43 ∨ v49) ∧ (¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40) ∧ (v13 ∨ v5 ∨ v6 ∨ v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v38 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v30 ∨ v36 ∨ v37) ∧ (¬v12 ∨ v2 ∨ v4 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v32 ∨ v44 ∨ v46) ∧ (¬v39 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v47 ∨ v48 ∨ v49) ∧ (v2 ∨ v4 ∨ ¬v5 ∨ v13 ∨ v23 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49) ∧ (v11 ∨ v4 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46) := by
  have c1615 : v9 ∨ v2 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a n7
      · exact a
      · exact absurd a n3
    have u2 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v10 := by
      rcases c630 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : v8 := by
      rcases c628 with a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    rcases c41 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1616 : ¬v29 ∨ ¬v3 ∨ ¬v7 ∨ v8 ∨ v11 ∨ v12 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28 ∨ v39 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v4 := by
      rcases c728 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v41 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a u8
      · exact absurd a n15
    have u10 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n12
      · exact absurd a n15
    have u11 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n13
    have u12 : ¬v5 := by
      rcases c34 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd u10 a
    have u13 : ¬v19 := by
      rcases c76 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : v26 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n5
      · exact a
      · exact absurd a n9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a n14
    have u15 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u14 a
      · exact a
    rcases c607 with a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u15
    · exact absurd u14 a
    · exact absurd a n9
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u6
  have c1617 : v46 ∨ v22 ∨ v23 ∨ v24 ∨ v30 ∨ v37 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v2 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v42 := by
      rcases c1605 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v28 := by
      rcases c1600 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
    have u8 : ¬v12 := by
      rcases c1429 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
    have u9 : v29 := by
      rcases c1614 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u13
      · exact a
      · exact absurd a n5
      · exact absurd a u2
    have u15 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a n0
      · exact absurd a n6
    have u17 : ¬v41 := by
      rcases c224 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u15
      · exact absurd a n7
    have u18 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : v3 := by
      rcases c331 with a|a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd a u6
      · exact absurd a n0
      · exact a
      · exact absurd a u18
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u16
    have u20 : v9 := by
      rcases c1615 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
    have u21 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u20 a
      · exact a
    have u22 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n8
    have u26 : v27 := by
      rcases c1616 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u9 a
      · exact absurd u19 a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u27 : ¬v25 := by
      rcases c98 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v5 := by
      rcases c1265 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd u26 a
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u29 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n0
    rcases c32 with a|a|a|a
    · exact absurd u28 a
    · exact absurd u19 a
    · exact absurd u25 a
    · exact absurd u29 a
  have c1618 : v28 ∨ v2 ∨ v12 ∨ v13 ∨ v22 ∨ ¬v24 ∨ ¬v29 ∨ v30 ∨ v37 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n6 a
    have u3 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n6 a
    have u4 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n8
      · exact absurd a n10
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n5 a
    have u9 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n5 a
    have u10 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n13
    have u11 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n0
      · exact a
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u12 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u13 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n11
      · exact absurd a n12
    have u14 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a n12
    have u15 : ¬v38 := by
      rcases c127 with a|a
      · exact a
      · exact absurd u6 a
    have u16 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : v3 := by
      rcases c331 with a|a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a u16
      · exact absurd a n11
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a n8
      · exact absurd a u13
    have u18 : v9 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact a
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
      · exact absurd a u16
    have u19 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u17 a
      · exact absurd u14 a
      · exact a
      · exact absurd u10 a
    rcases c614 with a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd a u19
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a n14
  have c1619 : v23 ∨ ¬v7 ∨ v12 ∨ v22 ∨ v30 ∨ v33 ∨ v37 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v24 := by
      rcases c1617 with a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v2 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v42 := by
      rcases c1605 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v28 := by
      rcases c1600 with a|a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u13 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
    have u14 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a u4
    have u15 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u12
    have u16 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n10
    have u17 : ¬v1 := by
      rcases c20 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd u16 a
    have u18 : ¬v3 := by
      rcases c34 with a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd u16 a
    have u19 : ¬v29 := by
      rcases c1618 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a n2
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd u2 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u20 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a u12
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n11
    have u21 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u4
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u22 : ¬v9 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
    have u23 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact a
      · exact absurd a u22
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u11
    have u24 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd a u12
      · exact a
      · exact absurd a n0
    have u25 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v17 := by
      rcases c67 with a|a
      · exact absurd u24 a
      · exact a
    rcases c499 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u10
    · exact absurd u23 a
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u17
    · exact absurd a u25
    · exact absurd a u3
    · exact absurd a u18
    · exact absurd a u22
    · exact absurd a u21
    · exact absurd a n3
    · exact absurd a u28
    · exact absurd a n4
  have c1620 : v37 ∨ ¬v7 ∨ v12 ∨ v22 ∨ v23 ∨ v30 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v24 := by
      rcases c1617 with a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : ¬v2 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v42 := by
      rcases c1605 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v28 := by
      rcases c1600 with a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u6 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n6
      · exact absurd a u3
    have u13 : v33 := by
      rcases c1619 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u14 : ¬v29 := by
      rcases c107 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v31 := by
      rcases c116 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v40 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u6
      · exact a
      · exact absurd a n6
    have u17 : ¬v36 := by
      rcases c211 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a n0
      · exact absurd a u3
      · exact absurd a n10
    have u18 : v9 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a u11
    have u19 : v17 := by
      rcases c1012 with a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u1 a
      · exact absurd a n5
      · exact absurd a u15
      · exact absurd a u6
    have u20 : ¬v39 := by
      rcases c141 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u18 a
    have u23 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u10
    have u24 : ¬v18 := by
      rcases c72 with a|a
      · exact absurd u19 a
      · exact a
    have u25 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u7
      · exact a
      · exact absurd a n7
      · exact absurd a u24
      · exact absurd a u6
      · exact absurd a u20
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd u25 a
    · exact absurd u23 a
    · exact absurd n1 a
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a n2
    · exact absurd a n7
    · exact absurd a n8
  have c1621 : ¬v12 ∨ v2 ∨ v22 ∨ v23 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n3
    rcases c653 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n2
    · exact absurd a n3
  have c1622 : v22 ∨ v9 ∨ v23 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v28 := by
      rcases c1600 with a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v24 := by
      rcases c1617 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v42 := by
      rcases c1605 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v2 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u2 a
    have u8 : ¬v35 := by
      rcases c1271 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u9
    have u11 : v31 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u9
    have u12 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd a u9
      · exact a
      · exact absurd a n2
    have u13 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v7 := by
      rcases c1620 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a n8
    have u19 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n8
    have u20 : v8 := by
      rcases c652 with a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c45 with a|a
    · exact absurd u20 a
    · exact absurd u19 a
  have c1623 : v23 ∨ v22 ∨ v30 ∨ v37 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v2 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v28 := by
      rcases c1600 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u5 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v12 := by
      rcases c1621 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u8 : ¬v13 := by
      rcases c1493 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u6
    have u9 : v24 := by
      rcases c1617 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v25 := by
      rcases c93 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v9 := by
      rcases c1622 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u13 a
    have u18 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a u2
    have u19 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u12
    have u20 : ¬v42 := by
      rcases c1605 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : v7 := by
      rcases c1543 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u22 : v41 := by
      rcases c1620 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u21 a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : ¬v36 := by
      rcases c130 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v39 := by
      rcases c142 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u23
      · exact absurd a u20
    have u26 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u25
      · exact absurd a u23
      · exact absurd a u5
    have u27 : v4 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u24
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd u21 a
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a n5
  have c1624 : v39 ∨ ¬v9 ∨ v12 ∨ v22 ∨ v23 ∨ v28 ∨ v33 ∨ v34 ∨ v35 ∨ v36 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n1 a
      · exact a
    have u5 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd n1 a
    have u6 : v7 := by
      rcases c614 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n15
    have u7 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n11
    have u8 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u9 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u10 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n5
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v1 := by
      rcases c1516 with a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u11
    have u13 : ¬v25 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u12 a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u14 : ¬v4 := by
      rcases c1609 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n2
      · exact absurd a n12
      · exact absurd a n13
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a n2
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n12
  have c1625 : ¬v7 ∨ v10 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u6 : v24 := by
      rcases c1185 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u7 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n15
    have u11 : ¬v11 := by
      rcases c1351 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a u7
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u12 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u9
    have u13 : ¬v1 := by
      rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd u10 a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u14 : ¬v6 := by
      rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
      · exact absurd a n15
    have u15 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u7
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u9
    · exact absurd a u8
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n16
  have c1626 : v11 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v26 ∨ ¬v31 ∨ v32 ∨ v33 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v17 := by
      rcases c1182 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v16 := by
      rcases c67 with a|a
      · exact a
      · exact absurd u1 a
    rcases c806 with a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
  have c1627 : v39 ∨ v2 ∨ ¬v7 ∨ v10 ∨ v12 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n8 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n8 a
      · exact a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n8 a
      · exact a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n8 a
      · exact a
    have u5 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n8 a
      · exact a
    have u6 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u7 : ¬v9 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : v25 := by
      rcases c1625 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
      · exact absurd a n17
    have u11 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : v11 := by
      rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd n8 a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n0
      · exact absurd a n11
    have u15 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n16
    have u18 : v1 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a u8
    have u19 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
      · exact absurd n2 a
    have u20 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd u18 a
      · exact a
      · exact absurd u17 a
      · exact absurd a u8
      · exact absurd a n16
      · exact absurd a n17
    rcases c451 with a|a|a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a u20
    · exact absurd a n10
    · exact absurd a u19
    · exact absurd a n1
    · exact absurd a u9
    · exact absurd a n0
    · exact absurd a n14
  have c1628 : v48 ∨ v2 ∨ ¬v7 ∨ v12 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n7 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n7 a
      · exact a
    have u5 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : v10 := by
      rcases c1627 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n10
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd n7 a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
      · exact absurd a n16
    have u8 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : v1 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u3
      · exact absurd a n8
      · exact absurd a u6
    have u13 : ¬v21 := by
      rcases c613 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n6
    have u14 : ¬v25 := by
      rcases c1612 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u12 a
      · exact absurd n2 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u13
      · exact a
      · exact absurd a n6
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n0
    have u15 : v24 := by
      rcases c1185 with a|a|a|a|a|a|a
      · exact absurd n7 a
      · exact absurd a n5
      · exact a
      · exact absurd a u14
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u14
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd a n11
      · exact absurd a n15
    rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd u12 a
    · exact absurd u18 a
    · exact absurd n2 a
    · exact absurd a u11
    · exact absurd a u16
    · exact absurd a n6
    · exact absurd a u4
    · exact absurd a n12
    · exact absurd a n14
    · exact absurd a n15
    · exact absurd a n0
  have c1629 : v2 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v38 ∨ v39 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v29 := by
      rcases c105 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u6 : ¬v7 := by
      rcases c1628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n15
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n16
    have u7 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n5
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u8 : v24 := by
      rcases c1185 with a|a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a n8
      · exact absurd a n9
    have u9 : ¬v9 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n16
    have u11 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a n12
      · exact absurd a n16
    have u12 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n13
    have u17 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n10
      · exact absurd a n14
    have u18 : ¬v8 := by
      rcases c1176 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd u16 a
      · exact absurd u17 a
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n15
      · exact absurd a n16
    have u19 : ¬v1 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd a u13
      · exact absurd a n16
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u18
    rcases c1500 with a|a|a|a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a u12
  have c1630 : v39 ∨ v2 ∨ v12 ∨ v22 ∨ v23 ∨ v28 ∨ ¬v31 ∨ v36 ∨ v38 ∨ v40 ∨ v41 ∨ v42 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : ¬v32 := by
      rcases c115 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd n6 a
      · exact a
    have u5 : ¬v9 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u6 : v25 := by
      rcases c1629 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u7 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v7 := by
      rcases c1628 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n14
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n15
    have u10 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n15
    have u11 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a n11
      · exact absurd a n15
    rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u5
    · exact absurd a u10
    · exact absurd a n4
    · exact absurd a u7
    · exact absurd a u8
    · exact absurd n6 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a n9
  have c1631 : ¬v25 ∨ v9 ∨ v10 ∨ v11 ∨ ¬v31 ∨ v32 ∨ v38 ∨ v39 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c89 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd n4 a
      · exact a
    rcases c1626 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd n4 a
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c1632 : v30 ∨ v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v28 := by
      rcases c1600 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v2 := by
      rcases c1589 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v37 := by
      rcases c1623 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u7 a
    have u14 : ¬v29 := by
      rcases c841 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a u11
    have u15 : v31 := by
      rcases c1479 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u14
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u3
      · exact absurd a u4
    have u16 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v12 := by
      rcases c1630 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v1 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u3
    have u23 : ¬v25 := by
      rcases c1631 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
    have u24 : v24 := by
      rcases c1185 with a|a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd a n2
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
    have u25 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u24 a
    have u26 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u24 a
    have u27 : v4 := by
      rcases c824 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a n2
      · exact absurd a u23
      · exact absurd a u26
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n3
    have u28 : v6 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a u8
      · exact absurd a n5
    rcases c1464 with a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u22 a
    · exact absurd u27 a
    · exact absurd u28 a
    · exact absurd a u3
    · exact absurd a n5
    · exact absurd a n6
  have c1633 : v12 ∨ v1 ∨ ¬v4 ∨ v9 ∨ v11 ∨ v18 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v36 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u2 : v45 := by
      rcases c1390 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n11
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u4 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n15
      · exact absurd a n16
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v13 := by
      rcases c1452 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u10
    have u12 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n13
      · exact absurd a n14
      · exact absurd a n15
    have u13 : v5 := by
      rcases c661 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n14
    have u14 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n14
      · exact absurd a n15
      · exact absurd a n16
    have u15 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n11
      · exact absurd a u4
      · exact absurd a n12
      · exact absurd a u10
    have u16 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n15
    have u17 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u12
      · exact absurd a n13
      · exact absurd a n14
    have u18 : v7 := by
      rcases c1176 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n2 a
      · exact absurd u13 a
      · exact a
      · exact absurd u15 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n15
      · exact absurd a n16
    rcases c700 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u18 a
    · exact absurd u16 a
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u12
    · exact absurd a n13
    · exact absurd a n14
  have c1634 : ¬v36 ∨ v29 ∨ v35 ∨ v42 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v37 := by
      rcases c126 with a|a
      · exact a
      · exact absurd n0 a
    rcases c473 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u1
  have c1635 : v27 ∨ ¬v1 ∨ v11 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u11 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n10
    have u12 : ¬v2 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u13 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u14 : ¬v7 := by
      rcases c904 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd n1 a
      · exact absurd u11 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u15 : ¬v10 := by
      rcases c749 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n8
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n12
    have u16 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u17 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n12
    have u18 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u15
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u16
      · exact absurd a n9
    have u19 : v6 := by
      rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u8
      · exact absurd a n11
    rcases c17 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u11 a
    · exact absurd u19 a
    · exact absurd u18 a
  have c1636 : v11 ∨ ¬v1 ∨ v9 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n12
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u14 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n10
    have u15 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u16 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v28 := by
      rcases c1635 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u18 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n11
      · exact absurd a n12
    have u19 : ¬v18 := by
      rcases c646 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u7
      · exact absurd a u8
    have u20 : v4 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u16
      · exact absurd a n9
    have u21 : ¬v2 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u22 : ¬v6 := by
      rcases c17 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact a
      · exact absurd u14 a
    have u24 : v13 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n11
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a n8
      · exact absurd a u15
    rcases c1221 with a|a|a|a|a|a
    · exact absurd u24 a
    · exact absurd n1 a
    · exact absurd a u21
    · exact absurd a u23
    · exact absurd a u10
    · exact absurd a n12
  have c1637 : v26 ∨ v9 ∨ v11 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v27 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v1 := by
      rcases c1636 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u4 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u5 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u11 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u12 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u13 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n11
    have u14 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u16 : ¬v10 := by
      rcases c1420 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u17 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
    have u18 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u17
      · exact absurd a n8
    have u19 : ¬v18 := by
      rcases c843 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a n0
    have u20 : ¬v2 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u21 : ¬v19 := by
      rcases c640 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u19
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
    have u22 : v28 := by
      rcases c1633 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd u18 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u19
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact a
      · exact absurd a u13
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u23 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v20 := by
      rcases c1120 with a|a|a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a n11
    have u25 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u23
      · exact absurd a u5
    have u26 : v21 := by
      rcases c242 with a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd u22 a
      · exact absurd a u9
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n7
    have u27 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v15 := by
      rcases c66 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : v3 := by
      rcases c426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u7
      · exact absurd a u17
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u20
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
    have u30 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u5
      · exact absurd a u28
      · exact a
      · exact absurd a n4
      · exact absurd a u2
    rcases c562 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd u30 a
    · exact absurd a u19
    · exact absurd a u21
    · exact absurd a u24
    · exact absurd a n6
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u8
    · exact absurd a u17
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1638 : ¬v8 ∨ v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    rcases c439 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a n3
  have c1639 : v1 ∨ v2 ∨ v9 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v29 ∨ v36 ∨ v43 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v8 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n8
      · exact absurd a n7
      · exact absurd a n3
      · exact a
      · exact absurd a n6
      · exact absurd a n0
    rcases c1638 with a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n4
    · exact absurd a n5
  have c1640 : v26 ∨ v9 ∨ v11 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n10
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u14 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u15 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n7
      · exact absurd a n8
    have u16 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u17 : v27 := by
      rcases c1637 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v28 := by
      rcases c102 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v16 := by
      rcases c615 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u20 : ¬v21 := by
      rcases c616 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
    have u21 : v20 := by
      rcases c190 with a|a|a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u8
      · exact absurd a u20
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u5
      · exact absurd a u7
    have u22 : ¬v18 := by
      rcases c77 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v15 := by
      rcases c65 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : v4 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n7
    have u25 : ¬v2 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u26 : v1 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
    have u27 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd u26 a
      · exact absurd u24 a
      · exact a
      · exact absurd u16 a
    have u28 : v8 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u26 a
      · exact absurd a u11
      · exact absurd a n10
      · exact absurd a u27
      · exact absurd a n1
      · exact absurd a u25
      · exact a
    have u29 : v14 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a u20
      · exact absurd a n10
    rcases c45 with a|a
    · exact absurd u28 a
    · exact absurd u29 a
  have c1641 : v46 ∨ v9 ∨ v12 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n9
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
    have u14 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u15 : v5 := by
      rcases c1156 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : v11 := by
      rcases c1640 with a|a|a|a|a|a|a|a|a|a|a
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
    have u17 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v14 := by
      rcases c57 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a n3
      · exact absurd a n4
    have u23 : v1 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a n3
      · exact a
    have u24 : ¬v2 := by
      rcases c1563 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd a u20
      · exact absurd u16 a
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u25 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u23 a
      · exact absurd a n9
      · exact absurd a u11
      · exact a
      · exact absurd a u19
      · exact absurd a u24
      · exact absurd a u18
    have u26 : ¬v6 := by
      rcases c20 with a|a|a|a
      · exact absurd u23 a
      · exact absurd u15 a
      · exact absurd u25 a
      · exact a
    have u27 : ¬v4 := by
      rcases c18 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u25 a
      · exact absurd u15 a
    rcases c805 with a|a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n7
    · exact absurd a n8
  have c1642 : v9 ∨ v22 ∨ v23 ∨ v25 ∨ v26 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u3 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u4 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n8
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u15 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
    have u16 : v12 := by
      rcases c1641 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u17 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : v1 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd a u10
    have u23 : ¬v16 := by
      rcases c653 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a n1
      · exact absurd a n2
    have u24 : ¬v15 := by
      rcases c780 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n0
      · exact absurd a u19
      · exact absurd a u23
      · exact absurd a n1
      · exact absurd a n2
    have u25 : ¬v18 := by
      rcases c635 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u23
      · exact a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
    have u26 : v4 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd a u20
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n5
    have u27 : ¬v6 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd u22 a
      · exact absurd u26 a
      · exact a
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
    have u28 : ¬v28 := by
      rcases c879 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd a u27
      · exact absurd a u17
      · exact absurd a n4
      · exact a
      · exact absurd a u7
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n7
    have u29 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n8
    have u30 : ¬v2 := by
      rcases c7 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u26 a
      · exact absurd u29 a
      · exact a
    have u31 : ¬v3 := by
      rcases c13 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u26 a
      · exact absurd u29 a
      · exact a
    have u32 : ¬v5 := by
      rcases c18 with a|a|a|a
      · exact absurd u22 a
      · exact absurd u26 a
      · exact absurd u29 a
      · exact a
    rcases c446 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a u5
    · exact absurd a u6
    · exact absurd a u31
    · exact absurd a u15
    · exact absurd a u32
    · exact absurd a u3
    · exact absurd a u21
    · exact absurd a u11
    · exact absurd u26 a
    · exact absurd a u30
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n6
  have c1643 : ¬v1 ∨ ¬v12 ∨ v18 ∨ v24 ∨ v27 ∨ v28 ∨ v31 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u4 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u5 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a u3
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u6 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n11
      · exact absurd n0 a
      · exact a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n12
      · exact absurd a n13
    have u8 : ¬v32 := by
      rcases c1496 with a|a|a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u9 : v39 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u8
      · exact absurd a n7
      · exact a
      · exact absurd a n10
    rcases c1547 with a|a|a|a|a|a|a
    · exact absurd u9 a
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a n10
    · exact absurd a n11
  have c1644 : v2 ∨ ¬v1 ∨ ¬v4 ∨ v12 ∨ ¬v26 ∨ v33 ∨ v34 ∨ v41 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v22 := by
      rcases c85 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n4 a
      · exact a
    have u3 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd n4 a
    have u6 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u7 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u8 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v6 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd a u9
      · exact absurd a n10
      · exact absurd a n11
    have u12 : v13 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v11 := by
      rcases c56 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : v7 := by
      rcases c1221 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a n11
    rcases c1609 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd u15 a
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a n3
    · exact absurd a n8
    · exact absurd a n9
  have c1645 : v46 ∨ ¬v1 ∨ v22 ∨ v23 ∨ v25 ∨ ¬v26 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd n5 a
      · exact a
    have u2 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u5 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u4 a
    have u12 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u13 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u5 a
      · exact a
    have u15 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n8
    have u16 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u18 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u10
    have u19 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u4 a
      · exact absurd a n2
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a u6
    have u20 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n6
    have u21 : ¬v18 := by
      rcases c76 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v12 := by
      rcases c1643 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a u21
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u24 : ¬v2 := by
      rcases c1576 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd n1 a
      · exact a
      · exact absurd a u23
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u25 : ¬v4 := by
      rcases c1644 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd n1 a
      · exact a
      · exact absurd a u23
      · exact absurd n5 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u26 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a u25
      · exact absurd a u22
      · exact a
      · exact absurd a u24
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n0
    have u27 : v11 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u25
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd a u20
    have u28 : ¬v13 := by
      rcases c56 with a|a
      · exact absurd u27 a
      · exact a
    have u29 : v7 := by
      rcases c968 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u3
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n8
    have u30 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u28
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    rcases c16 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u26 a
    · exact absurd u30 a
    · exact absurd u29 a
  have c1646 : v25 ∨ v9 ∨ v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n7
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v26 := by
      rcases c1642 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u16 : ¬v27 := by
      rcases c100 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v28 := by
      rcases c101 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v19 := by
      rcases c607 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u7
    have u19 : ¬v16 := by
      rcases c69 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v15 := by
      rcases c64 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v21 := by
      rcases c80 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v1 := by
      rcases c1645 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd u15 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u23 : v2 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n1
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
    have u24 : v8 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
    have u25 : ¬v12 := by
      rcases c1531 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
    have u26 : ¬v10 := by
      rcases c1295 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u3
      · exact absurd a u12
      · exact absurd a u10
    have u27 : ¬v4 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u28 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u24 a
    rcases c1376 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a u27
    · exact absurd a u26
    · exact absurd a u28
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u14
    · exact absurd a n4
  have c1647 : v25 ∨ v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u9 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd a n6
    have u13 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u14 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n4
    have u16 : v9 := by
      rcases c1646 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u16 a
      · exact a
    have u21 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : v28 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u15
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u24 : v4 := by
      rcases c1376 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a n3
    have u25 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u23 a
      · exact a
    have u26 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u23 a
      · exact a
    have u28 : v6 := by
      rcases c1100 with a|a|a|a|a|a|a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd a u20
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u9
      · exact absurd a n5
    have u29 : ¬v2 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u19
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd u1 a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd a u3
    have u31 : v5 := by
      rcases c934 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd a n0
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u4
      · exact absurd a u13
      · exact absurd a n4
    have u32 : ¬v1 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u24 a
      · exact absurd u28 a
      · exact absurd a u10
      · exact absurd a n5
      · exact absurd a n6
    have u33 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u31 a
      · exact a
      · exact absurd u28 a
      · exact absurd u24 a
    have u34 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u30 a
    rcases c426 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u2 a
    · exact absurd a u12
    · exact absurd a u32
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd a u34
    · exact absurd a u29
    · exact absurd a u33
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n3
  have c1648 : v23 ∨ ¬v4 ∨ v12 ∨ v22 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v25 := by
      rcases c1647 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u4 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u9 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u11 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u12 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u14 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u15 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n7
    have u17 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u18 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n5
    have u19 : v18 := by
      rcases c684 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u20 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u21 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u22 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u19 a
    have u23 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u19 a
    have u24 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v9 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u20
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u26 : ¬v2 := by
      rcases c1572 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u27 : v1 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u25
      · exact absurd a u22
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u14
    have u28 : ¬v7 := by
      rcases c18 with a|a|a|a
      · exact absurd u27 a
      · exact absurd n1 a
      · exact a
      · exact absurd u18 a
    have u29 : ¬v6 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd u27 a
      · exact absurd n1 a
      · exact a
      · exact absurd a u14
      · exact absurd a n6
      · exact absurd a n7
    have u30 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a n7
    have u31 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd a u14
      · exact absurd a n7
    rcases c1253 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a n2
    · exact absurd a u31
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u11
    · exact absurd a u17
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a n6
  have c1649 : v2 ∨ v4 ∨ ¬v5 ∨ ¬v6 ∨ v9 ∨ v15 ∨ v16 ∨ v21 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v38 ∨ v39 ∨ ¬v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd n15 a
      · exact a
    have u2 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd n15 a
      · exact a
    have u3 : v1 := by
      rcases c1639 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a u1
    have u4 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd n15 a
      · exact absurd a n1
      · exact absurd a n13
      · exact a
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n14
      · exact absurd a n16
    rcases c14 with a|a|a|a
    · exact absurd u3 a
    · exact absurd n2 a
    · exact absurd u4 a
    · exact absurd n3 a
  have c1650 : v12 ∨ v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v25 := by
      rcases c1647 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u1 a
    have u7 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u1 a
    have u8 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u2 a
    have u14 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u15 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u16 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u17 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n6
    have u18 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v5 := by
      rcases c798 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n4
    have u20 : v18 := by
      rcases c684 with a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u21 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u11
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u8
    have u23 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
    have u24 : ¬v15 := by
      rcases c63 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v16 := by
      rcases c68 with a|a
      · exact a
      · exact absurd u20 a
    have u28 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u22 a
    have u29 : ¬v9 := by
      rcases c1624 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u9
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u30 : ¬v4 := by
      rcases c1648 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u31 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u30
      · exact a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u32 : v2 := by
      rcases c1649 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u19 a
      · exact absurd u31 a
      · exact absurd a u29
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u28
      · exact absurd a u23
      · exact absurd u3 a
      · exact absurd a n3
    have u33 : v13 := by
      rcases c600 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd u32 a
      · exact absurd u19 a
      · exact a
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u21
      · exact absurd a u14
      · exact absurd a n5
      · exact absurd a n6
    have u34 : ¬v3 := by
      rcases c24 with a|a|a|a
      · exact absurd u32 a
      · exact absurd u19 a
      · exact a
      · exact absurd u31 a
    have u35 : ¬v1 := by
      rcases c8 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u31 a
      · exact absurd u32 a
    have u36 : ¬v8 := by
      rcases c44 with a|a
      · exact a
      · exact absurd u33 a
    have u37 : ¬v10 := by
      rcases c53 with a|a
      · exact a
      · exact absurd u33 a
    rcases c526 with a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a u36
    · exact absurd a u16
    · exact absurd a u34
    · exact absurd a u35
    · exact absurd u32 a
    · exact absurd a u37
    · exact absurd a u29
  have c1651 : v22 ∨ v23 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v12 := by
      rcases c1650 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v25 := by
      rcases c1647 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v24 := by
      rcases c93 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v27 := by
      rcases c98 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v26 := by
      rcases c97 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v28 := by
      rcases c99 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v30 := by
      rcases c1632 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u13 : ¬v29 := by
      rcases c104 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v36 := by
      rcases c1634 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd a n5
    have u20 : v1 := by
      rcases c1441 with a|a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u19
      · exact absurd a u2
    have u21 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u22 : ¬v41 := by
      rcases c1504 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u23 : v7 := by
      rcases c1251 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n5
    have u24 : v37 := by
      rcases c418 with a|a|a|a|a|a|a|a
      · exact absurd a u19
      · exact absurd u12 a
      · exact absurd a n0
      · exact a
      · exact absurd a u15
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u13
    have u25 : ¬v39 := by
      rcases c1547 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u11
      · exact absurd a u14
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a n3
    have u26 : v6 := by
      rcases c918 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u27 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u24 a
    have u28 : ¬v4 := by
      rcases c1464 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd u20 a
      · exact a
      · exact absurd u26 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n5
    have u29 : ¬v3 := by
      rcases c16 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u26 a
      · exact absurd u23 a
    have u30 : ¬v2 := by
      rcases c1468 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u26 a
      · exact absurd a u5
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c451 with a|a|a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u28
    · exact absurd a u27
    · exact absurd a u29
    · exact absurd a u30
    · exact absurd a u3
    · exact absurd a u25
    · exact absurd a n2
  have c1652 : v15 ∨ v16 ∨ v21 ∨ ¬v22 ∨ v23 ∨ v28 ∨ v29 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v30 := by
      rcases c400 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n3 a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
    have u2 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    rcases c282 with a|a|a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd a u2
    · exact absurd a n1
    · exact absurd a n4
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a n2
  have c1653 : ¬v22 ∨ ¬v1 ∨ v2 ∨ v4 ∨ ¬v6 ∨ ¬v12 ∨ v23 ∨ v29 ∨ v43 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v7 := by
      rcases c1155 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n5 a
    have u3 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n5 a
    have u4 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n5 a
    have u5 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n5 a
    have u6 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n5 a
    have u7 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n5 a
    have u8 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n0 a
      · exact a
    have u9 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u10 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u11 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u12 : ¬v5 := by
      rcases c20 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
    have u13 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u11
    have u14 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u10
      · exact absurd a u11
    have u15 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u8
    have u16 : v15 := by
      rcases c1652 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd n0 a
      · exact absurd a n6
      · exact absurd a u11
      · exact absurd a n7
    have u17 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u16 a
      · exact a
    have u18 : ¬v19 := by
      rcases c64 with a|a
      · exact absurd u16 a
      · exact a
    rcases c471 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd a u12
    · exact absurd a n3
    · exact absurd a u5
    · exact absurd a u17
    · exact absurd a u2
    · exact absurd a u18
    · exact absurd n5 a
  have c1654 : ¬v33 ∨ v25 ∨ v26 ∨ v27 ∨ v40 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v32 := by
      rcases c119 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v34 := by
      rcases c122 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v39 := by
      rcases c531 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a n3
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v41 := by
      rcases c431 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact a
    rcases c142 with a|a
    · exact absurd u4 a
    · exact absurd u3 a
  have c1655 : v13 ∨ v5 ∨ v6 ∨ v12 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u2 : ¬v33 := by
      rcases c1539 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v40 := by
      rcases c823 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n9
    rcases c1090 with a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c1656 : v38 ∨ v23 ∨ v24 ∨ v29 ∨ ¬v30 ∨ v36 ∨ v37 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n4 a
      · exact a
    rcases c391 with a|a|a|a|a|a|a|a
    · exact absurd a n5
    · exact absurd a n3
    · exact absurd a n0
    · exact absurd a n6
    · exact absurd n4 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
  have c1657 : ¬v12 ∨ v2 ∨ v4 ∨ ¬v22 ∨ v23 ∨ v29 ∨ v32 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v13 := by
      rcases c58 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c55 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v9 := by
      rcases c48 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd n3 a
      · exact a
    have u8 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd n3 a
      · exact a
    have u9 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n3 a
      · exact a
    have u10 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n3 a
      · exact a
    have u11 : ¬v21 := by
      rcases c649 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u9
      · exact absurd a u10
    have u12 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a u7
    have u13 : v15 := by
      rcases c1652 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u10
      · exact absurd a n5
    have u14 : ¬v18 := by
      rcases c63 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v39 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u4
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a n8
      · exact absurd a u14
      · exact absurd a n6
      · exact a
    have u16 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd u15 a
      · exact a
    have u19 : ¬v30 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a u16
      · exact absurd a u18
    rcases c1037 with a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a u2
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a n7
  have c1658 : ¬v39 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ v32 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v40 := by
      rcases c141 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v36 := by
      rcases c128 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v38 := by
      rcases c137 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v37 := by
      rcases c133 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : ¬v33 := by
      rcases c1654 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
    have u8 : ¬v30 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n7
      · exact a
      · exact absurd a u3
      · exact absurd a u6
    have u9 : ¬v34 := by
      rcases c938 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u1
      · exact absurd a u4
    have u10 : ¬v31 := by
      rcases c554 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n8
    have u11 : ¬v35 := by
      rcases c1290 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u4
    rcases c125 with a|a|a|a|a|a|a
    · exact absurd a n7
    · exact absurd a u11
    · exact absurd a u8
    · exact absurd a n8
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u7
  have c1659 : v29 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v37 ∨ v38 ∨ v43 ∨ v44 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v30 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n10
    have u2 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v36 := by
      rcases c1656 with a|a|a|a|a|a|a
      · exact absurd a n8
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a n7
    have u4 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    rcases c1634 with a|a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n9
    · exact absurd a n10
    · exact absurd a n12
  have c1660 : v7 ∨ v2 ∨ v4 ∨ v23 ∨ v29 ∨ v33 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v40 := by
      rcases c1090 with a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u4 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u3 a
      · exact a
    have u10 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u3 a
      · exact a
    have u11 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u12 : ¬v39 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n4
      · exact absurd a u11
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u13 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a n7
    have u14 : v11 := by
      rcases c848 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n7
    have u15 : ¬v10 := by
      rcases c847 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a u12
      · exact absurd a u1
      · exact absurd a n7
    have u16 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v37 := by
      rcases c1659 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u4
      · exact a
      · exact absurd a n6
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v42 := by
      rcases c136 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : ¬v36 := by
      rcases c126 with a|a
      · exact absurd u17 a
      · exact a
    have u20 : ¬v35 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n5
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n9
      · exact absurd a n10
    rcases c968 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u14 a
    · exact absurd a u8
    · exact absurd a u20
    · exact absurd a u18
    · exact absurd a n10
  have c1661 : v4 ∨ v2 ∨ ¬v5 ∨ v13 ∨ v23 ∨ v29 ∨ v38 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u10 : ¬v39 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u11 : ¬v12 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n7
    have u12 : v6 := by
      rcases c805 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : v3 := by
      rcases c451 with a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n6
      · exact a
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd a n7
    have u14 : ¬v7 := by
      rcases c34 with a|a|a|a
      · exact absurd u13 a
      · exact absurd n2 a
      · exact a
      · exact absurd u12 a
    have u15 : v33 := by
      rcases c1660 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u14
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
    have u16 : ¬v35 := by
      rcases c123 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v42 := by
      rcases c1033 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u18 : ¬v10 := by
      rcases c1130 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n10
    have u19 : ¬v11 := by
      rcases c968 with a|a|a|a|a|a
      · exact absurd a u14
      · exact a
      · exact absurd a u7
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a n10
    rcases c969 with a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u11
    · exact absurd a u3
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a n7
  have c1662 : v10 ∨ v2 ∨ v4 ∨ v12 ∨ v23 ∨ v24 ∨ v25 ∨ v28 ∨ v29 ∨ v32 ∨ v35 ∨ v36 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16⟩ := hc
    have u1 : v11 := by
      rcases c969 with a|a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
    have u2 : ¬v9 := by
      rcases c984 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n9
      · exact absurd a n13
      · exact absurd a n16
    have u3 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v30 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
      · exact a
      · exact absurd a n12
      · exact absurd a n15
    have u5 : ¬v16 := by
      rcases c1036 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u4 a
      · exact a
    rcases c374 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n11
    · exact absurd u4 a
    · exact absurd a n12
    · exact absurd a u2
    · exact absurd a n5
    · exact absurd a n7
    · exact absurd a n0
    · exact absurd a n8
    · exact absurd a n4
    · exact absurd a u5
    · exact absurd a n10
    · exact absurd a u6
    · exact absurd a u3
    · exact absurd a n14
  have c1663 : v2 ∨ v4 ∨ ¬v5 ∨ v13 ∨ v23 ∨ v29 ∨ v46 ∨ v47 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v22 := by
      rcases c1651 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v45 := by
      rcases c1405 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v43 := by
      rcases c149 with a|a
      · exact absurd u2 a
      · exact a
    have u9 : ¬v44 := by
      rcases c154 with a|a
      · exact absurd u2 a
      · exact a
    have u10 : ¬v32 := by
      rcases c1486 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u3
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
    have u12 : ¬v39 := by
      rcases c1658 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u13 : ¬v12 := by
      rcases c1657 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a n6
    have u14 : ¬v19 := by
      rcases c822 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v38 := by
      rcases c1661 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u16 : ¬v41 := by
      rcases c139 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v40 := by
      rcases c138 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v42 := by
      rcases c140 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v36 := by
      rcases c127 with a|a
      · exact absurd u15 a
      · exact a
    have u21 : ¬v33 := by
      rcases c838 with a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u5
      · exact a
      · exact absurd a u12
      · exact absurd a u17
      · exact absurd a u16
    have u22 : ¬v35 := by
      rcases c1101 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u8
      · exact absurd a n8
      · exact absurd a n9
    have u23 : v10 := by
      rcases c1662 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u4
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u10
      · exact absurd a u22
      · exact absurd a u20
      · exact absurd a u19
      · exact absurd a u12
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a n6
    have u24 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u4
      · exact absurd a n1
      · exact absurd a n6
      · exact a
      · exact absurd a u10
      · exact absurd a u12
    have u26 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u25 a
    rcases c303 with a|a|a|a|a|a|a|a
    · exact absurd a u13
    · exact absurd u25 a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u26
    · exact absurd a u24
    · exact absurd a u14
  have c1664 : v11 ∨ v4 ∨ v12 ∨ v19 ∨ v24 ∨ v25 ∨ v26 ∨ v32 ∨ v39 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v18 := by
      rcases c173 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n9
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v17 := by
      rcases c72 with a|a
      · exact a
      · exact absurd u1 a
    rcases c303 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a u2
    · exact absurd a n0
    · exact absurd a n3
  exact ⟨c1621, c1634, c1639, c1643, c1651, c1652, c1653, c1654, c1655, c1656, c1657, c1658, c1663, c1664⟩
