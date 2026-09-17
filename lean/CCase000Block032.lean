import Mathlib.Tactic

-- One block of a propagation chain; see
-- python/residual/gen_lean_refutation_shards.py.  Kernel checking is
-- unaffected by this option.
set_option maxHeartbeats 0

/-- Steps 1600-1649 of the 2189-step refutation of ccase000: 108 core clauses and 84 earlier-derived ones give 13 more. -/
theorem CCase000_block032
    (v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 : Prop)
    (c11 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v4)
    (c13 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v3)
    (c15 : ¬v1 ∨ ¬v5 ∨ ¬v3 ∨ ¬v7)
    (c17 : ¬v1 ∨ ¬v5 ∨ ¬v6 ∨ ¬v4)
    (c19 : ¬v1 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c22 : ¬v2 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c27 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ ¬v5)
    (c31 : ¬v5 ∨ ¬v3 ∨ ¬v6 ∨ ¬v4)
    (c33 : ¬v3 ∨ ¬v4 ∨ ¬v7 ∨ ¬v6)
    (c35 : ¬v4 ∨ ¬v5 ∨ ¬v7 ∨ ¬v6)
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
    (c57 : ¬v11 ∨ ¬v14)
    (c59 : ¬v14 ∨ ¬v12)
    (c61 : ¬v15 ∨ ¬v16)
    (c62 : ¬v15 ∨ ¬v17)
    (c68 : ¬v16 ∨ ¬v18)
    (c70 : ¬v16 ∨ ¬v20)
    (c71 : ¬v21 ∨ ¬v16)
    (c77 : ¬v18 ∨ ¬v20)
    (c78 : ¬v21 ∨ ¬v18)
    (c82 : ¬v22 ∨ ¬v23)
    (c83 : ¬v22 ∨ ¬v24)
    (c84 : ¬v22 ∨ ¬v25)
    (c85 : ¬v22 ∨ ¬v26)
    (c86 : ¬v22 ∨ ¬v27)
    (c87 : ¬v22 ∨ ¬v28)
    (c88 : ¬v23 ∨ ¬v24)
    (c90 : ¬v23 ∨ ¬v26)
    (c91 : ¬v27 ∨ ¬v23)
    (c92 : ¬v28 ∨ ¬v23)
    (c94 : ¬v26 ∨ ¬v24)
    (c95 : ¬v27 ∨ ¬v24)
    (c96 : ¬v28 ∨ ¬v24)
    (c97 : ¬v26 ∨ ¬v25)
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
    (c116 : ¬v31 ∨ ¬v33)
    (c117 : ¬v31 ∨ ¬v34)
    (c118 : ¬v31 ∨ ¬v35)
    (c121 : ¬v32 ∨ ¬v35)
    (c123 : ¬v35 ∨ ¬v33)
    (c124 : ¬v34 ∨ ¬v35)
    (c130 : ¬v41 ∨ ¬v36)
    (c132 : ¬v38 ∨ ¬v37)
    (c133 : ¬v39 ∨ ¬v37)
    (c134 : ¬v40 ∨ ¬v37)
    (c135 : ¬v41 ∨ ¬v37)
    (c137 : ¬v38 ∨ ¬v39)
    (c142 : ¬v41 ∨ ¬v39)
    (c143 : ¬v42 ∨ ¬v39)
    (c144 : ¬v40 ∨ ¬v41)
    (c146 : ¬v41 ∨ ¬v42)
    (c151 : ¬v47 ∨ ¬v43)
    (c156 : ¬v44 ∨ ¬v47)
    (c160 : ¬v47 ∨ ¬v45)
    (c163 : ¬v46 ∨ ¬v47)
    (c166 : ¬v48 ∨ ¬v47)
    (c170 : v43 ∨ v36 ∨ v29 ∨ v15 ∨ v8 ∨ v22 ∨ v1)
    (c171 : v9 ∨ v2 ∨ v37 ∨ v30 ∨ v44 ∨ v16 ∨ v23)
    (c175 : v13 ∨ v6 ∨ v48 ∨ v34 ∨ v20 ∨ v27 ∨ v41)
    (c176 : v14 ∨ v7 ∨ v42 ∨ v28 ∨ v35 ∨ v21 ∨ v49)
    (c190 : ¬v27 ∨ v35 ∨ v21 ∨ v20 ∨ v26 ∨ v28 ∨ v33 ∨ v34)
    (c213 : ¬v41 ∨ v35 ∨ v33 ∨ v34 ∨ v42 ∨ v40 ∨ v48 ∨ v49)
    (c220 : ¬v28 ∨ v35 ∨ v20 ∨ v27 ∨ v22 ∨ v34 ∨ v21 ∨ v15)
    (c223 : ¬v22 ∨ v29 ∨ v30 ∨ v35 ∨ v15 ∨ v28 ∨ v23 ∨ v21)
    (c237 : v43 ∨ v14 ∨ v1 ∨ v48 ∨ v8 ∨ ¬v7 ∨ v6 ∨ v49)
    (c244 : ¬v47 ∨ v6 ∨ v41 ∨ v46 ∨ v5 ∨ v4 ∨ v40 ∨ v48)
    (c246 : v36 ∨ v22 ∨ v28 ∨ v37 ∨ v35 ∨ v30 ∨ ¬v29 ∨ v23)
    (c259 : v49 ∨ v7 ∨ v5 ∨ v13 ∨ ¬v6 ∨ v14 ∨ v48 ∨ v12)
    (c267 : v29 ∨ ¬v23 ∨ v31 ∨ v30 ∨ v22 ∨ v24 ∨ v17 ∨ v16)
    (c300 : ¬v38 ∨ v37 ∨ v31 ∨ v39 ∨ v46 ∨ v45 ∨ v44 ∨ v32)
    (c335 : v43 ∨ ¬v1 ∨ v49 ∨ v44 ∨ v7 ∨ v8 ∨ v2 ∨ v14)
    (c342 : ¬v47 ∨ v6 ∨ v40 ∨ v4 ∨ v5 ∨ v46 ∨ v39 ∨ v48)
    (c423 : v2 ∨ v6 ∨ v3 ∨ v20 ∨ v18 ∨ v11 ∨ v13 ∨ v12 ∨ v9 ∨ v17 ∨ ¬v10 ∨ v44 ∨ v45 ∨ v46)
    (c434 : v15 ∨ ¬v9 ∨ v16 ∨ v3 ∨ v1 ∨ v2 ∨ v10 ∨ v8)
    (c459 : v3 ∨ ¬v4 ∨ v46 ∨ v45 ∨ v5 ∨ v10 ∨ v11 ∨ v12)
    (c462 : v43 ∨ ¬v1 ∨ v44 ∨ v49 ∨ v7 ∨ v9 ∨ v2 ∨ v8)
    (c506 : v36 ∨ v29 ∨ v44 ∨ ¬v22 ∨ v34 ∨ v15 ∨ v23 ∨ v20 ∨ v28 ∨ v30 ∨ v21 ∨ v43 ∨ v27 ∨ v49)
    (c517 : v5 ∨ v12 ∨ v48 ∨ v7 ∨ ¬v6 ∨ v27 ∨ v8 ∨ v26 ∨ v28 ∨ v1 ∨ v20 ∨ v43 ∨ v13 ∨ v49)
    (c536 : v12 ∨ v5 ∨ v2 ∨ v44 ∨ v46 ∨ v18 ∨ v45 ∨ v3 ∨ v11 ∨ v9 ∨ v26 ∨ v25 ∨ ¬v4 ∨ v24)
    (c539 : ¬v47 ∨ v6 ∨ v40 ∨ v39 ∨ v13 ∨ v5 ∨ v2 ∨ v12 ∨ v11 ∨ v37 ∨ v44 ∨ v45 ∨ v46 ∨ v48)
    (c616 : ¬v21 ∨ ¬v27 ∨ v28 ∨ v33 ∨ v34 ∨ v35)
    (c625 : v5 ∨ v3 ∨ ¬v4 ∨ v11 ∨ v45 ∨ v46 ∨ v47)
    (c632 : ¬v9 ∨ v1 ∨ v6 ∨ ¬v7 ∨ v48 ∨ v49)
    (c684 : ¬v25 ∨ v18 ∨ v31 ∨ v32 ∨ v33)
    (c696 : ¬v20 ∨ v13 ∨ v26 ∨ v27 ∨ v28)
    (c715 : v13 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v41 ∨ v48)
    (c720 : ¬v18 ∨ v10 ∨ v11 ∨ v12 ∨ v24 ∨ v25)
    (c774 : ¬v17 ∨ v10 ∨ v11 ∨ v18 ∨ v23 ∨ v24 ∨ v25)
    (c809 : v10 ∨ v3 ∨ v23 ∨ v24 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45)
    (c810 : v18 ∨ v4 ∨ v11 ∨ v31 ∨ v32 ∨ v33 ∨ v39 ∨ v46)
    (c839 : ¬v33 ∨ v26 ∨ v39 ∨ v40 ∨ v41)
    (c877 : v28 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v35 ∨ v42 ∨ v49)
    (c938 : ¬v34 ∨ v26 ∨ v27 ∨ v28 ∨ v41 ∨ v42)
    (c953 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v32 ∨ v37 ∨ v44)
    (c1010 : v4 ∨ v2 ∨ ¬v3 ∨ ¬v11 ∨ v44 ∨ v45 ∨ v46)
    (c1011 : v2 ∨ ¬v1 ∨ ¬v3 ∨ v4 ∨ v30 ∨ v31 ∨ v32 ∨ v33 ∨ v35 ∨ v37 ∨ v39 ∨ v42 ∨ v44 ∨ v45 ∨ v46 ∨ v49)
    (c1025 : ¬v30 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1026 : ¬v31 ∨ ¬v42 ∨ v48 ∨ v49)
    (c1029 : ¬v3 ∨ v2 ∨ v4 ∨ v10 ∨ v44 ∨ v45 ∨ v46)
    (c1034 : ¬v24 ∨ v2 ∨ v9 ∨ v30 ∨ v31 ∨ v33 ∨ v37 ∨ v38 ∨ v44 ∨ v45 ∨ v46)
    (c1037 : v23 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v37 ∨ v44)
    (c1143 : ¬v42 ∨ v3 ∨ v10 ∨ v17 ∨ v24 ∨ v45 ∨ v48 ∨ v49)
    (c1153 : ¬v29 ∨ ¬v42 ∨ v43 ∨ v48 ∨ v49)
    (c1155 : ¬v12 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1190 : v6 ∨ v1 ∨ ¬v7 ∨ ¬v8 ∨ v43 ∨ v48 ∨ v49)
    (c1221 : ¬v13 ∨ ¬v1 ∨ v2 ∨ v7 ∨ v43 ∨ v49)
    (c1224 : ¬v21 ∨ v13 ∨ v14 ∨ v22 ∨ v27 ∨ v28)
    (c1260 : v27 ∨ v5 ∨ v6 ∨ v7 ∨ v12 ∨ v13 ∨ v28 ∨ v34 ∨ v35 ∨ v41 ∨ v42 ∨ v48 ∨ v49)
    (c1338 : ¬v29 ∨ v22 ∨ v28 ∨ v35 ∨ v36 ∨ v37 ∨ v42)
    (c1342 : ¬v29 ∨ ¬v38 ∨ v45 ∨ v46)
    (c1419 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v9 ∨ v15 ∨ v21)
    (c1460 : ¬v28 ∨ v1 ∨ v8 ∨ v9 ∨ v14 ∨ v29 ∨ v34 ∨ v35 ∨ v36 ∨ v43)
    (c1471 : ¬v9 ∨ v1 ∨ v2 ∨ v10 ∨ v15 ∨ v16 ∨ v17)
    (c1500 : v1 ∨ v8 ∨ v9 ∨ v22 ∨ v23 ∨ v28 ∨ v29 ∨ v36 ∨ v43)
    (c1538 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v21 ∨ v27 ∨ v28)
    (c1675 : ¬v18 ∨ v11 ∨ v24 ∨ v25 ∨ v26)
    (c1701 : ¬v21 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v9)
    (c1702 : ¬v42 ∨ v29 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c1703 : ¬v8 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v35 ∨ v42 ∨ v49)
    (c1714 : v8 ∨ v1 ∨ v9 ∨ v22 ∨ v27 ∨ v28 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v49)
    (c1763 : v28 ∨ v6 ∨ v13 ∨ v26 ∨ v27 ∨ ¬v40 ∨ v48)
    (c1799 : v41 ∨ v1 ∨ v6 ∨ v26 ∨ v27 ∨ v28 ∨ v34 ∨ v42 ∨ v43 ∨ v48 ∨ v49)
    (c1806 : ¬v20 ∨ v12 ∨ v13 ∨ v14 ∨ v26 ∨ v27)
    (c1835 : ¬v35 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1838 : ¬v36 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1868 : v7 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v44 ∨ v49)
    (c1869 : v23 ∨ v1 ∨ v2 ∨ v6 ∨ v24 ∨ v28 ∨ v30 ∨ v35 ∨ v37 ∨ v42 ∨ v43 ∨ v44 ∨ v48 ∨ v49)
    (c1882 : ¬v29 ∨ v22 ∨ v23 ∨ v36 ∨ v37 ∨ v42)
    (c1907 : v37 ∨ v2 ∨ v9 ∨ v22 ∨ v23 ∨ ¬v28 ∨ v29 ∨ v35 ∨ v36 ∨ v44)
    (c1911 : v3 ∨ v1 ∨ v2 ∨ v9 ∨ v23 ∨ v26 ∨ ¬v36 ∨ v43 ∨ v44 ∨ v45 ∨ v49)
    (c1913 : ¬v15 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v9)
    (c1917 : ¬v37 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v45)
    (c1920 : ¬v15 ∨ v1 ∨ v8 ∨ v10 ∨ v14 ∨ v22 ∨ v23 ∨ v24 ∨ v43 ∨ v44 ∨ v49)
    (c1921 : ¬v9 ∨ v1 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1922 : v24 ∨ v1 ∨ v10 ∨ ¬v11 ∨ v22 ∨ v23 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c1930 : ¬v37 ∨ v29 ∨ v30 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1932 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45)
    (c1952 : v32 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v30 ∨ v31 ∨ v33 ∨ v43 ∨ v44 ∨ v45)
    (c1956 : v3 ∨ v1 ∨ v2 ∨ v9 ∨ ¬v10 ∨ ¬v23 ∨ v26 ∨ v43 ∨ v44 ∨ v49)
    (c1957 : ¬v29 ∨ v3 ∨ v9 ∨ v10 ∨ v24 ∨ v43 ∨ v44 ∨ v45)
    (c2015 : ¬v6 ∨ ¬v2 ∨ ¬v7 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2028 : ¬v42 ∨ v35 ∨ v43 ∨ v48 ∨ v49)
    (c2036 : ¬v29 ∨ v2 ∨ v9 ∨ v23 ∨ ¬v26 ∨ v43 ∨ v44 ∨ v45)
    (c2044 : ¬v9 ∨ v47 ∨ v48 ∨ v49)
    (c2045 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v37 ∨ v44)
    (c2056 : v47 ∨ v48 ∨ v49)
    (c2058 : ¬v39 ∨ v31 ∨ v32 ∨ v33 ∨ v38 ∨ v45 ∨ v46)
    (c2060 : v22 ∨ v1 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v24 ∨ v29 ∨ v43 ∨ v44 ∨ v49)
    (c2061 : ¬v22 ∨ v7 ∨ v14 ∨ v29 ∨ v42 ∨ v48 ∨ v49)
    (c2077 : ¬v13 ∨ ¬v6 ∨ v48 ∨ v49)
    (c2091 : v10 ∨ v2 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v28 ∨ v43 ∨ v44 ∨ v45)
    (c2095 : v8 ∨ v9 ∨ ¬v16 ∨ v22 ∨ v23 ∨ v24)
    (c2114 : ¬v38 ∨ v4 ∨ v5 ∨ ¬v47 ∨ v48)
    (c2118 : v2 ∨ v8 ∨ v9 ∨ v11 ∨ v23 ∨ v24 ∨ v25 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45)
    (c2122 : ¬v1 ∨ v2 ∨ ¬v5 ∨ ¬v6 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49)
    (c2146 : ¬v29 ∨ ¬v37 ∨ v43 ∨ v44 ∨ v45)
    (c2154 : v4 ∨ ¬v6 ∨ v48 ∨ v49)
    (c2157 : v11 ∨ ¬v6 ∨ v9 ∨ v22 ∨ v23 ∨ v26 ∨ v27 ∨ v28 ∨ v29 ∨ ¬v37 ∨ v48 ∨ v49)
    (c2158 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v9 ∨ v43 ∨ v44 ∨ v45)
    (c2159 : ¬v1 ∨ v2 ∨ ¬v6 ∨ v48 ∨ v49)
    (c2161 : ¬v42 ∨ v2 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49)
    (c2163 : ¬v12 ∨ v1 ∨ v2 ∨ v7 ∨ v42 ∨ v48 ∨ v49)
    (c2164 : ¬v29 ∨ v2 ∨ v9 ∨ v10 ∨ v22 ∨ v23 ∨ v24 ∨ v25 ∨ v43 ∨ v44 ∨ v45)
    (c2165 : ¬v28 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49)
    : (v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49) ∧ (v3 ∨ ¬v6 ∨ v48 ∨ v49) ∧ (¬v6 ∨ v48 ∨ v49) ∧ (v22 ∨ v1 ∨ ¬v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v49) ∧ (v1 ∨ ¬v9 ∨ v24 ∨ v28 ∨ v48 ∨ v49) ∧ (¬v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49) ∧ (¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49) ∧ (v1 ∨ v2 ∨ v9 ∨ v28 ∨ v48 ∨ v49) ∧ (¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45) ∧ (v30 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49) ∧ (¬v3 ∨ v2 ∨ v28 ∨ v48 ∨ v49) ∧ (v37 ∨ v2 ∨ v9 ∨ ¬v27 ∨ v30 ∨ v44) ∧ (v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46) := by
  have c2166 : ¬v22 ∨ v1 ∨ v5 ∨ ¬v6 ∨ v7 ∨ v12 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u3
    have u7 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a u4
      · exact absurd n3 a
      · exact a
      · exact absurd a n6
      · exact absurd a n5
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v8 := by
      rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n4
      · exact absurd n3 a
      · exact absurd a u2
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd a n7
    rcases c45 with a|a
    · exact absurd u9 a
    · exact absurd u7 a
  have c2167 : v29 ∨ v1 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u2 : v23 := by
      rcases c1500 with a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
    have u3 : v27 := by
      rcases c1714 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    rcases c91 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c2168 : v7 ∨ v5 ∨ ¬v6 ∨ v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v28 := by
      rcases c2165 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v13 := by
      rcases c2077 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v2 := by
      rcases c2158 with a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u9 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v42 := by
      rcases c2161 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v12 := by
      rcases c2163 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a n4
      · exact absurd a n5
    have u12 : v14 := by
      rcases c259 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd n2 a
      · exact a
      · exact absurd a n4
      · exact absurd a u11
    have u13 : ¬v8 := by
      rcases c45 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v22 := by
      rcases c2166 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u15 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    have u16 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u15 a
      · exact a
    have u20 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u21 : ¬v24 := by
      rcases c953 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u20
      · exact absurd a u4
    have u22 : v23 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a u21
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a u10
      · exact absurd a u4
      · exact absurd a n5
    have u23 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u22 a
    have u24 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v20 := by
      rcases c696 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u24
      · exact absurd a u23
      · exact absurd a u6
    rcases c517 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u11
    · exact absurd a n4
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u23
    · exact absurd a u13
    · exact absurd a u24
    · exact absurd a u6
    · exact absurd a u9
    · exact absurd a u25
    · exact absurd a u5
    · exact absurd a u7
    · exact absurd a n5
  have c2169 : v2 ∨ v1 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v10 ∨ v12 ∨ v22 ∨ v28 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v11 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n13
      · exact absurd a n12
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a n7
    have u2 : ¬v8 := by
      rcases c42 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n5
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n14
    have u4 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : v24 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    have u8 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
    rcases c953 with a|a|a|a|a|a|a|a
    · exact absurd u7 a
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd a u5
    · exact absurd a u8
    · exact absurd a n11
  have c2170 : ¬v23 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v10 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd n0 a
      · exact a
    rcases c1956 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd n5 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2171 : v28 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v12 ∨ v22 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v10 := by
      rcases c2169 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n12
      · exact absurd a n13
    have u2 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v23 := by
      rcases c2170 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u5 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n8
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n13
    have u6 : v47 := by
      rcases c625 with a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a u3
      · exact absurd a n11
      · exact absurd a n12
      · exact a
    have u7 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v26 := by
      rcases c2036 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u9 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u10 : ¬v48 := by
      rcases c166 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : ¬v42 := by
      rcases c2028 with a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n9
      · exact absurd a u10
      · exact absurd a n13
    have u12 : ¬v36 := by
      rcases c1911 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u8
      · exact a
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a n13
    rcases c1882 with a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n8
    · exact absurd a u4
    · exact absurd a u12
    · exact absurd a u9
    · exact absurd a u11
  have c2172 : v11 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v12 ∨ v24 ∨ v25 ∨ v26 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v18 := by
      rcases c1675 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c536 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n1
    · exact absurd a n10
    · exact absurd a n12
    · exact absurd a u1
    · exact absurd a n11
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n5
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd n3 a
    · exact absurd a n7
  have c2173 : v12 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v22 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v28 := by
      rcases c2171 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
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
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v11 := by
      rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u7 : ¬v10 := by
      rcases c51 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : v29 := by
      rcases c1922 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u6 a
      · exact absurd a n7
      · exact absurd a u3
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n12
    rcases c2164 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u8 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2174 : ¬v28 ∨ v1 ∨ v2 ∨ v8 ∨ v9 ∨ v10 ∨ v14 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v29 := by
      rcases c2060 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u2
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    rcases c2164 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a u4
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2175 : v22 ∨ v1 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v12 := by
      rcases c2173 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : ¬v8 := by
      rcases c43 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v14 := by
      rcases c59 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v10 := by
      rcases c52 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v28 := by
      rcases c2174 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n11
    have u6 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u5
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n11
    have u7 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u6 a
    have u10 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u11 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd a n9
      · exact absurd a n10
    have u12 : v24 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n6
      · exact absurd a u4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd u12 a
    · exact absurd a n2
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a u9
    · exact absurd a u7
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a n10
  have c2176 : v8 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a n12
    have u2 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u7 : v30 := by
      rcases c1932 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u6
      · exact absurd a n10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u8 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : v38 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact a
      · exact absurd a u3
    have u12 : ¬v37 := by
      rcases c132 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v39 := by
      rcases c137 with a|a
      · exact absurd u11 a
      · exact a
    rcases c300 with a|a|a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd a u12
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u9
  have c2177 : v10 ∨ v2 ∨ v3 ∨ ¬v4 ∨ v5 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v26 ∨ v27 ∨ v28 ∨ v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v8 := by
      rcases c2176 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n12
      · exact absurd a n13
      · exact absurd a n14
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n13
      · exact absurd a n14
    have u3 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u4
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n3 a
    · exact absurd a n4
    · exact absurd a n5
    · exact absurd a u3
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
    · exact absurd a u7
    · exact absurd a u6
    · exact absurd a u5
  have c2178 : v5 ∨ ¬v6 ∨ v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : v7 := by
      rcases c2168 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : ¬v2 := by
      rcases c2015 with a|a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u9 : ¬v1 := by
      rcases c19 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact absurd n1 a
    have u10 : ¬v3 := by
      rcases c33 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u7 a
      · exact absurd n1 a
    have u11 : v22 := by
      rcases c2175 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u12 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v28 := by
      rcases c87 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : ¬v36 := by
      rcases c1911 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u15
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n4
    have u19 : v10 := by
      rcases c2177 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u10
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a n3
      · exact absurd a n4
    have u20 : ¬v12 := by
      rcases c52 with a|a
      · exact absurd u19 a
      · exact a
    have u21 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd u19 a
    rcases c2172 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a u8
    · exact absurd a u10
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u14
    · exact absurd a u15
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2179 : v35 ∨ v7 ∨ v8 ∨ v13 ∨ v14 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : v42 := by
      rcases c877 with a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n0
      · exact a
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v29 := by
      rcases c1153 with a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    rcases c1702 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a u4
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n6
    · exact absurd a n7
  have c2180 : ¬v10 ∨ v1 ∨ v2 ∨ v7 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c46 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v11 := by
      rcases c51 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : v35 := by
      rcases c2179 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : v22 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd a n1
      · exact absurd a u4
      · exact absurd a u3
      · exact a
      · exact absurd a n4
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u14 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n6
    have u15 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u14
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u16 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v24 := by
      rcases c83 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u13 a
      · exact a
    rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u5
    · exact absurd a u16
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u9
    · exact absurd a u15
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd a u10
  have c2181 : v24 ∨ v1 ∨ v2 ∨ v3 ∨ v8 ∨ v9 ∨ v10 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    have u2 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v29 := by
      rcases c1957 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
    have u6 : v22 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n9
    have u8 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u6 a
      · exact a
    rcases c2176 with a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a n6
    · exact absurd a u8
    · exact absurd a n0
    · exact absurd a u9
    · exact absurd a u10
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n8
    · exact absurd a n9
  have c2182 : v8 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ v10 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u2 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v24 := by
      rcases c2181 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u6 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n8
    have u10 : ¬v36 := by
      rcases c1911 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u8
      · exact absurd a u7
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v37 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n6
      · exact a
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd u9 a
      · exact absurd a u8
    rcases c2146 with a|a|a|a|a
    · exact absurd u9 a
    · exact absurd u13 a
    · exact absurd a u4
    · exact absurd a u3
    · exact absurd a u2
  have c2183 : ¬v29 ∨ v22 ∨ v23 ∨ v28 ∨ v36 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v37 := by
      rcases c246 with a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n3
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n2
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    rcases c1917 with a|a|a|a|a|a
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2184 : ¬v24 ∨ v2 ∨ v3 ∨ ¬v6 ∨ v9 ∨ v11 ∨ v16 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u7 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n7
      · exact absurd a n8
    have u8 : v5 := by
      rcases c2178 with a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
    have u9 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u10 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u8 a
      · exact a
      · exact absurd n3 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : ¬v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u15 : v8 := by
      rcases c2182 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
    have u16 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd u15 a
      · exact absurd a n4
    have u18 : ¬v36 := by
      rcases c1911 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u5
      · exact absurd a u4
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a n8
    have u19 : ¬v29 := by
      rcases c2183 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd a u18
      · exact absurd a n7
      · exact absurd a n8
    have u20 : ¬v37 := by
      rcases c2157 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n5
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    have u21 : v30 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a u20
      · exact a
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a u5
    have u22 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u21 a
    have u23 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u21 a
      · exact a
      · exact absurd a n7
      · exact absurd a n8
    rcases c176 with a|a|a|a|a|a|a
    · exact absurd a u16
    · exact absurd a u10
    · exact absurd a u23
    · exact absurd a u2
    · exact absurd a u22
    · exact absurd a u17
    · exact absurd a n8
  have c2185 : v28 ∨ v2 ∨ v3 ∨ ¬v6 ∨ v7 ∨ v9 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v10 := by
      rcases c2180 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u7 : v8 := by
      rcases c2182 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a n0
      · exact absurd a n6
      · exact absurd a n7
    have u8 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a n5
    have u11 : v15 := by
      rcases c1419 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n5
      · exact a
      · exact absurd a u10
    have u12 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u11 a
      · exact a
    have u13 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v24 := by
      rcases c2184 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n5
      · exact absurd a u8
      · exact absurd a u12
      · exact absurd a n6
      · exact absurd a n7
    have u15 : ¬v42 := by
      rcases c1143 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u6
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u3
      · exact absurd a n6
      · exact absurd a n7
    have u16 : v35 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a n4
      · exact absurd a u15
      · exact absurd a n0
      · exact a
      · exact absurd a u10
      · exact absurd a n7
    have u17 : ¬v32 := by
      rcases c121 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v33 := by
      rcases c123 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1952 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u17
    · exact absurd a n2
    · exact absurd a n5
    · exact absurd a u6
    · exact absurd a u14
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a u18
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd a u3
  have c2186 : v29 ∨ v1 ∨ v2 ∨ v3 ∨ v9 ∨ ¬v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n5 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n5 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n5 a
      · exact a
    have u4 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n5 a
      · exact a
    have u5 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u10 : ¬v35 := by
      rcases c1835 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n7
    have u11 : v37 := by
      rcases c1907 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u7
    have u12 : ¬v41 := by
      rcases c135 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v40 := by
      rcases c134 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : ¬v39 := by
      rcases c133 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v38 := by
      rcases c132 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v30 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact absurd u11 a
      · exact absurd a n0
      · exact a
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u17 : ¬v33 := by
      rcases c839 with a|a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u12
    have u18 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v10 := by
      rcases c809 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u15
      · exact absurd a u6
    have u22 : ¬v14 := by
      rcases c54 with a|a
      · exact absurd u21 a
      · exact a
    have u23 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u21 a
    rcases c1460 with a|a|a|a|a|a|a|a|a|a
    · exact absurd n5 a
    · exact absurd a n1
    · exact absurd a u23
    · exact absurd a n4
    · exact absurd a u22
    · exact absurd a n0
    · exact absurd a u20
    · exact absurd a u10
    · exact absurd a u9
    · exact absurd a u8
  have c2187 : v9 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : v5 := by
      rcases c2178 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : ¬v2 := by
      rcases c27 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd u6 a
    have u8 : ¬v3 := by
      rcases c31 with a|a|a|a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u9 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u6 a
      · exact a
      · exact absurd n1 a
    have u10 : ¬v1 := by
      rcases c17 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd n1 a
      · exact absurd u2 a
    have u11 : v28 := by
      rcases c2185 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u12 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd u11 a
      · exact a
    have u15 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd u11 a
      · exact a
    have u16 : v29 := by
      rcases c2186 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
      · exact absurd a u8
      · exact absurd a n0
      · exact absurd u11 a
      · exact absurd a n2
      · exact absurd a n3
    have u17 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u19 : v10 := by
      rcases c2164 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd a n0
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u20 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a u4
      · exact a
      · exact absurd a u14
    have u21 : ¬v8 := by
      rcases c41 with a|a
      · exact a
      · exact absurd u19 a
    rcases c2095 with a|a|a|a|a|a
    · exact absurd a u21
    · exact absurd a n0
    · exact absurd u20 a
    · exact absurd a u12
    · exact absurd a u14
    · exact absurd a u13
  have c2188 : v2 ∨ ¬v6 ∨ ¬v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v22 := by
      rcases c87 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v24 := by
      rcases c96 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v23 := by
      rcases c92 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : ¬v25 := by
      rcases c99 with a|a
      · exact absurd n2 a
      · exact a
    have u5 : ¬v27 := by
      rcases c102 with a|a
      · exact a
      · exact absurd n2 a
    have u6 : ¬v26 := by
      rcases c101 with a|a
      · exact absurd n2 a
      · exact a
    have u7 : v9 := by
      rcases c2187 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u9 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u7 a
      · exact a
    have u11 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u7 a
      · exact a
    have u14 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u7 a
    have u15 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u17 : ¬v20 := by
      rcases c1806 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a u5
    have u18 : ¬v18 := by
      rcases c720 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u11
      · exact absurd a u2
      · exact absurd a u4
    have u19 : ¬v17 := by
      rcases c774 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u4
    have u20 : ¬v1 := by
      rcases c2159 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n3
      · exact absurd a n4
    have u21 : ¬v15 := by
      rcases c1920 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
    have u22 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a u1
      · exact absurd a u3
      · exact a
      · exact absurd a u16
      · exact absurd a u15
      · exact absurd a n4
    have u23 : v16 := by
      rcases c1471 with a|a|a|a|a|a|a
      · exact absurd u7 a
      · exact absurd a u20
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a u21
      · exact a
      · exact absurd a u19
    have u24 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u23 a
    rcases c220 with a|a|a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u25
    · exact absurd a u17
    · exact absurd a u5
    · exact absurd a u1
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u21
  have c2189 : ¬v2 ∨ ¬v4 ∨ ¬v6 ∨ v10 ∨ v11 ∨ v12 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v3 := by
      rcases c22 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : v5 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n7
      · exact absurd a n6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    rcases c27 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u2 a
  have c2190 : v3 ∨ ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v9 := by
      rcases c2187 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u4 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u1 a
      · exact a
    have u6 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u1 a
      · exact a
    have u7 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd u1 a
      · exact a
    have u8 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd u1 a
      · exact a
    have u9 : ¬v11 := by
      rcases c47 with a|a
      · exact a
      · exact absurd u1 a
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u13 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u14 : ¬v2 := by
      rcases c2189 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
      · exact absurd a u11
      · exact absurd a u10
    have u15 : v5 := by
      rcases c459 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact absurd a u10
      · exact absurd a u11
      · exact a
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd a u6
    have u16 : ¬v1 := by
      rcases c2122 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
    have u17 : ¬v7 := by
      rcases c35 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact a
      · exact absurd n1 a
    have u18 : ¬v15 := by
      rcases c1913 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a n0
      · exact absurd u1 a
    have u19 : v16 := by
      rcases c434 with a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u16
      · exact absurd a u14
      · exact absurd a u8
      · exact absurd a u7
    have u20 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : ¬v28 := by
      rcases c2188 with a|a|a|a|a
      · exact absurd a u14
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u23 : v35 := by
      rcases c2179 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u7
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u22
      · exact absurd a n2
      · exact absurd a n3
    have u24 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u23 a
    have u25 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u23 a
      · exact a
    have u27 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a n3
    have u28 : v22 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd a u18
      · exact absurd a u7
      · exact a
      · exact absurd a u16
    have u29 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u28 a
      · exact a
    have u30 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u28 a
      · exact a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u27
    · exact absurd a u24
    · exact absurd a u12
    · exact absurd u28 a
    · exact absurd a u25
    · exact absurd a u18
    · exact absurd a u29
    · exact absurd a u21
    · exact absurd a u22
    · exact absurd a u26
    · exact absurd a u20
    · exact absurd a u13
    · exact absurd a u30
    · exact absurd a n3
  have c2191 : ¬v6 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v4 := by
      rcases c2154 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v3 := by
      rcases c2190 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v7 := by
      rcases c33 with a|a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v5 := by
      rcases c31 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd u1 a
    have u5 : v9 := by
      rcases c2187 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    have u6 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd u5 a
      · exact a
    rcases c259 with a|a|a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a u3
    · exact absurd a u4
    · exact absurd a u6
    · exact absurd n0 a
    · exact absurd a u7
    · exact absurd a n1
    · exact absurd a u8
  have c2192 : v22 ∨ v1 ∨ ¬v9 ∨ v24 ∨ v29 ∨ v30 ∨ v31 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u2 : v23 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n4
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n2 a
      · exact a
    have u4 : v15 := by
      rcases c170 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n4
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n1
    have u5 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u4 a
      · exact a
    rcases c267 with a|a|a|a|a|a|a|a
    · exact absurd a n4
    · exact absurd u2 a
    · exact absurd a n6
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u6
    · exact absurd a u5
  have c2193 : v1 ∨ ¬v9 ∨ v24 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
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
    have u4 : v47 := by
      rcases c2044 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u6 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v7 := by
      rcases c632 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a u5
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u9 : v35 := by
      rcases c2179 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v29 := by
      rcases c109 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v31 := by
      rcases c118 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v30 := by
      rcases c114 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v22 := by
      rcases c2192 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a n5
    have u15 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v42 := by
      rcases c2061 with a|a|a|a|a|a|a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u18 : v41 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd a u11
      · exact a
      · exact absurd a n4
    rcases c146 with a|a
    · exact absurd u18 a
    · exact absurd u17 a
  have c2194 : ¬v1 ∨ v2 ∨ ¬v3 ∨ ¬v4 ∨ v8 ∨ v14 ∨ v43 ∨ v44 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v7 := by
      rcases c335 with a|a|a|a|a|a|a|a
      · exact absurd a n6
      · exact absurd n0 a
      · exact absurd a n8
      · exact absurd a n7
      · exact a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n5
    rcases c13 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n3 a
    · exact absurd u1 a
    · exact absurd n2 a
  have c2195 : ¬v9 ∨ v2 ∨ ¬v3 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v13 := by
      rcases c49 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v14 := by
      rcases c50 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v12 := by
      rcases c48 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v8 := by
      rcases c40 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : ¬v10 := by
      rcases c46 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u7 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u8 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u7 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u5
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u8
    have u13 : ¬v1 := by
      rcases c2194 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u14 : v24 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd n0 a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u15 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v27 := by
      rcases c95 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v26 := by
      rcases c94 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd u14 a
    have u19 : ¬v21 := by
      rcases c1224 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a n3
    have u20 : v29 := by
      rcases c1921 with a|a|a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u13
      · exact absurd a u15
      · exact absurd a u18
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n5
    have u21 : ¬v20 := by
      rcases c1538 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd a u19
      · exact absurd a u16
      · exact absurd a n3
    have u22 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd a n4
    have u23 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u20 a
      · exact a
    have u25 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u20 a
      · exact a
    have u26 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a u11
      · exact absurd a n4
      · exact absurd a n5
    have u27 : v41 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a u24
      · exact absurd a u21
      · exact absurd a u16
      · exact a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd a n4
    · exact absurd a n5
  have c2196 : v2 ∨ v1 ∨ v8 ∨ v9 ∨ ¬v24 ∨ v28 ∨ v43 ∨ v44 ∨ v45 ∨ v46 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n10
    have u3 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
    have u7 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
    rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n0
    · exact absurd a n3
    · exact absurd a u4
    · exact absurd a u5
    · exact absurd a u3
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c2197 : v1 ∨ v2 ∨ v8 ∨ v9 ∨ v22 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c2196 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n7
    have u8 : v29 := by
      rcases c2167 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n7
    have u9 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u13 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u14 : v36 := by
      rcases c1338 with a|a|a|a|a|a|a
      · exact absurd u8 a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u11
      · exact a
      · exact absurd a u12
      · exact absurd a u13
    have u15 : ¬v41 := by
      rcases c130 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v23 := by
      rcases c1869 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u12
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
      · exact absurd a n7
    have u17 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u16 a
      · exact a
    rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u15
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a u18
    · exact absurd a u17
    · exact absurd a n5
    · exact absurd a u10
    · exact absurd a u13
    · exact absurd a u6
    · exact absurd a n6
    · exact absurd a n7
  have c2198 : ¬v29 ∨ v1 ∨ v2 ∨ v23 ∨ v24 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v9 := by
      rcases c2193 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u13 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    have u14 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd a n2
      · exact absurd a u13
      · exact absurd a u2
      · exact absurd a u10
      · exact a
      · exact absurd a n3
    have u15 : v7 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a u2
      · exact absurd a u5
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a n7
    have u16 : ¬v18 := by
      rcases c68 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : ¬v8 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u7
      · exact absurd a n1
      · exact absurd u15 a
      · exact a
      · exact absurd a u11
      · exact absurd a n6
      · exact absurd a n7
    have u18 : v14 := by
      rcases c237 with a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact a
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a u7
      · exact absurd a n7
    have u19 : ¬v25 := by
      rcases c684 with a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a u1
    have u20 : v11 := by
      rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a u17
      · exact absurd a u6
      · exact a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u9
    rcases c57 with a|a
    · exact absurd u20 a
    · exact absurd u18 a
  have c2199 : v30 ∨ v2 ∨ v8 ∨ v9 ∨ v23 ∨ v24 ∨ v25 ∨ v29 ∨ v36 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v11 := by
      rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n9
      · exact absurd a n10
      · exact absurd a n11
    have u3 : v10 := by
      rcases c1037 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n5
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n10
    rcases c51 with a|a
    · exact absurd u2 a
    · exact absurd u3 a
  have c2200 : ¬v41 ∨ v33 ∨ v34 ∨ v35 ∨ v42 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v40 := by
      rcases c144 with a|a
      · exact a
      · exact absurd n0 a
    rcases c213 with a|a|a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a n5
    · exact absurd a n6
  have c2201 : v8 ∨ v1 ∨ v2 ∨ v9 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v24 := by
      rcases c2196 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n6
    have u8 : v22 := by
      rcases c2197 with a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u9 : ¬v23 := by
      rcases c82 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v25 := by
      rcases c84 with a|a
      · exact absurd u8 a
      · exact a
    have u11 : ¬v26 := by
      rcases c85 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v29 := by
      rcases c2198 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a n5
      · exact absurd a n6
    have u14 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n6
    have u15 : v30 := by
      rcases c2199 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u16 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u20 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a n5
      · exact absurd a n6
    rcases c1799 with a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a u11
    · exact absurd a u12
    · exact absurd a n4
    · exact absurd a u17
    · exact absurd a u19
    · exact absurd a u6
    · exact absurd a n5
    · exact absurd a n6
  have c2202 : ¬v30 ∨ v1 ∨ v2 ∨ v7 ∨ ¬v8 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    rcases c1703 with a|a|a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd a n5
    · exact absurd a u1
    · exact absurd a u2
    · exact absurd a n7
  have c2203 : ¬v29 ∨ v1 ∨ v2 ∨ ¬v8 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u4 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    have u6 : ¬v7 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a n1
      · exact a
      · exact absurd n3 a
      · exact absurd a u4
      · exact absurd a n5
      · exact absurd a n6
    rcases c1703 with a|a|a|a|a|a|a|a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u6
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u5
    · exact absurd a n6
  have c2204 : v1 ∨ v2 ∨ v9 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : v8 := by
      rcases c2201 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u7 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v7 := by
      rcases c1190 with a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact a
      · exact absurd u6 a
      · exact absurd a u5
      · exact absurd a n4
      · exact absurd a n5
    have u9 : ¬v30 := by
      rcases c2202 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u10 : ¬v29 := by
      rcases c2203 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd u6 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u11 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n5
    have u12 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u13 : ¬v21 := by
      rcases c1701 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd u6 a
      · exact absurd a n2
    have u14 : v15 := by
      rcases c1419 with a|a|a|a|a|a|a
      · exact absurd u6 a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a u8
      · exact absurd a n2
      · exact a
      · exact absurd a u13
    have u15 : ¬v16 := by
      rcases c61 with a|a
      · exact absurd u14 a
      · exact a
    have u16 : ¬v17 := by
      rcases c62 with a|a
      · exact absurd u14 a
      · exact a
    have u17 : v23 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u12
      · exact absurd a u9
      · exact absurd a u4
      · exact absurd a u15
      · exact a
    have u18 : ¬v22 := by
      rcases c82 with a|a
      · exact a
      · exact absurd u17 a
    have u19 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u17 a
    have u20 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u17 a
      · exact a
    have u21 : ¬v24 := by
      rcases c88 with a|a
      · exact absurd u17 a
      · exact a
    have u22 : v31 := by
      rcases c267 with a|a|a|a|a|a|a|a
      · exact absurd a u10
      · exact absurd u17 a
      · exact a
      · exact absurd a u9
      · exact absurd a u18
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd a u15
    have u23 : ¬v33 := by
      rcases c116 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v34 := by
      rcases c117 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v35 := by
      rcases c118 with a|a
      · exact absurd u22 a
      · exact a
    have u26 : ¬v42 := by
      rcases c1026 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u27 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u24
      · exact absurd a u25
      · exact absurd a u26
      · exact absurd a n4
      · exact absurd a n5
    rcases c715 with a|a|a|a|a|a|a|a
    · exact absurd a u7
    · exact absurd a u1
    · exact absurd a u20
    · exact absurd a u19
    · exact absurd a n3
    · exact absurd a u24
    · exact absurd a u27
    · exact absurd a n4
  have c2205 : ¬v24 ∨ v2 ∨ v9 ∨ v10 ∨ v30 ∨ v37 ∨ v43 ∨ v44 ∨ v45 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v22 := by
      rcases c83 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v28 := by
      rcases c96 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v23 := by
      rcases c88 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n7
      · exact a
      · exact absurd a u3
    rcases c2091 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a n3
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
    · exact absurd a n6
    · exact absurd a n7
    · exact absurd a n8
  have c2206 : v30 ∨ v2 ∨ v9 ∨ v10 ∨ v23 ∨ v28 ∨ v29 ∨ v43 ∨ v44 ∨ v45 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n10
    have u2 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u3 : ¬v24 := by
      rcases c2205 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a n9
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n8
      · exact a
      · exact absurd a n4
    have u5 : v22 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
      · exact a
      · exact absurd a n4
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n8
    have u6 : ¬v21 := by
      rcases c71 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v15 := by
      rcases c61 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v20 := by
      rcases c70 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v27 := by
      rcases c86 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v35 := by
      rcases c223 with a|a|a|a|a|a|a|a
      · exact absurd u5 a
      · exact absurd a n6
      · exact absurd a n0
      · exact a
      · exact absurd a u7
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a u6
    have u11 : ¬v34 := by
      rcases c124 with a|a
      · exact a
      · exact absurd u10 a
    rcases c506 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n8
    · exact absurd u5 a
    · exact absurd a u11
    · exact absurd a u7
    · exact absurd a n4
    · exact absurd a u8
    · exact absurd a n5
    · exact absurd a n0
    · exact absurd a u6
    · exact absurd a n7
    · exact absurd a u9
    · exact absurd a n10
  have c2207 : v13 ∨ v2 ∨ v5 ∨ v9 ∨ v10 ∨ v11 ∨ v12 ∨ v28 ∨ v29 ∨ v30 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n10
      · exact absurd a n11
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a n11
    have u8 : v23 := by
      rcases c2206 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n9
      · exact absurd a n1
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a n11
    have u9 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd a n9
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u10 : ¬v27 := by
      rcases c91 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v26 := by
      rcases c90 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v40 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n7
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd a n10
    have u13 : v39 := by
      rcases c539 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n6
      · exact absurd a n5
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n10
    have u14 : ¬v41 := by
      rcases c142 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v42 := by
      rcases c143 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v34 := by
      rcases c715 with a|a|a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a n7
      · exact a
      · exact absurd a u14
      · exact absurd a n10
    rcases c938 with a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd a n7
    · exact absurd a u14
    · exact absurd a u15
  have c2208 : ¬v8 ∨ v2 ∨ ¬v3 ∨ v28 ∨ v29 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v13 := by
      rcases c44 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v12 := by
      rcases c43 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v9 := by
      rcases c40 with a|a
      · exact a
      · exact absurd n0 a
    have u4 : ¬v11 := by
      rcases c42 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v14 := by
      rcases c45 with a|a
      · exact absurd n0 a
      · exact a
    have u6 : ¬v10 := by
      rcases c41 with a|a
      · exact absurd n0 a
      · exact a
    have u7 : v1 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n5
      · exact absurd a n6
    have u8 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u9 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v4 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a u6
      · exact absurd a u12
      · exact absurd a u11
      · exact absurd a u10
    have u14 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact a
      · exact absurd n2 a
    have u15 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u7 a
      · exact a
      · exact absurd n2 a
      · exact absurd u13 a
    have u16 : v30 := by
      rcases c2207 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u15
      · exact absurd a u3
      · exact absurd a u6
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd a n3
      · exact absurd a n4
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u17 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd u16 a
    have u20 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd u16 a
      · exact a
      · exact absurd a n5
      · exact absurd a n6
    have u21 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
    have u22 : v27 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a u14
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u21
      · exact absurd a u20
      · exact absurd a n5
      · exact absurd a n6
    have u23 : v21 := by
      rcases c176 with a|a|a|a|a|a|a
      · exact absurd a u5
      · exact absurd a u14
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a u19
      · exact a
      · exact absurd a n6
    rcases c616 with a|a|a|a|a|a
    · exact absurd u23 a
    · exact absurd u22 a
    · exact absurd a n3
    · exact absurd a u17
    · exact absurd a u18
    · exact absurd a u19
  have c2209 : ¬v30 ∨ v4 ∨ v11 ∨ v13 ∨ v28 ∨ v38 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v33 := by
      rcases c112 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v32 := by
      rcases c111 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : ¬v31 := by
      rcases c110 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v34 := by
      rcases c113 with a|a
      · exact a
      · exact absurd n0 a
    have u5 : ¬v35 := by
      rcases c114 with a|a
      · exact a
      · exact absurd n0 a
    have u6 : ¬v42 := by
      rcases c1025 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u7 : ¬v6 := by
      rcases c2154 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u8 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a n7
    have u9 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u4
      · exact absurd a u5
      · exact absurd a u6
      · exact absurd a n6
      · exact absurd a n7
    have u10 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u11
      · exact absurd a u10
    have u13 : v18 := by
      rcases c810 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd a u10
    have u14 : ¬v20 := by
      rcases c77 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : ¬v21 := by
      rcases c78 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : v27 := by
      rcases c175 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd a u14
      · exact a
      · exact absurd a u9
    have u17 : ¬v26 := by
      rcases c100 with a|a
      · exact a
      · exact absurd u16 a
    rcases c190 with a|a|a|a|a|a|a|a
    · exact absurd u16 a
    · exact absurd a u5
    · exact absurd a u15
    · exact absurd a u14
    · exact absurd a u17
    · exact absurd a n4
    · exact absurd a u1
    · exact absurd a u4
  have c2210 : ¬v27 ∨ v2 ∨ v8 ∨ v9 ∨ v30 ∨ v37 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : v16 := by
      rcases c171 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd a n5
      · exact absurd a n4
      · exact absurd a n6
      · exact a
      · exact absurd a u3
    rcases c2095 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd a n3
    · exact absurd u4 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a u2
  have c2211 : v40 ∨ v4 ∨ v5 ∨ v6 ∨ ¬v47 ∨ v48 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : v39 := by
      rcases c342 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u1
      · exact a
      · exact absurd a n5
    have u3 : v41 := by
      rcases c244 with a|a|a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n5
    rcases c142 with a|a
    · exact absurd u3 a
    · exact absurd u2 a
  have c2212 : v29 ∨ v2 ∨ ¬v3 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v9 := by
      rcases c2195 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u2 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd a n5
    have u4 : v1 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u5 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u3 a
      · exact a
    have u9 : ¬v36 := by
      rcases c1838 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a n5
    have u10 : ¬v8 := by
      rcases c2208 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n5
    have u11 : v7 := by
      rcases c462 with a|a|a|a|a|a|a|a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u7
      · exact absurd a n5
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd a u10
    have u12 : ¬v4 := by
      rcases c13 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u11 a
      · exact absurd n2 a
    have u13 : v10 := by
      rcases c1029 with a|a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a u12
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u14 : ¬v11 := by
      rcases c1010 with a|a|a|a|a|a|a
      · exact absurd a u12
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd a u7
      · exact absurd a u6
      · exact absurd a u5
    have u15 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v5 := by
      rcases c15 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd n2 a
      · exact absurd u11 a
    have u17 : ¬v38 := by
      rcases c2114 with a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd u3 a
      · exact absurd a n4
    have u18 : ¬v30 := by
      rcases c2209 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a n3
      · exact absurd a u17
      · exact absurd a n4
      · exact absurd a n5
    have u19 : ¬v37 := by
      rcases c1930 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u18
      · exact absurd a u9
      · exact absurd a u8
      · exact absurd a u7
      · exact absurd a u6
    have u20 : ¬v27 := by
      rcases c2210 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd a u7
    have u21 : v40 := by
      rcases c2211 with a|a|a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd a n4
    have u22 : v26 := by
      rcases c1763 with a|a|a|a|a|a|a
      · exact absurd a n3
      · exact absurd a u2
      · exact absurd a u15
      · exact a
      · exact absurd a u20
      · exact absurd u21 a
      · exact absurd a n4
    have u23 : ¬v24 := by
      rcases c94 with a|a
      · exact absurd u22 a
      · exact a
    have u24 : ¬v25 := by
      rcases c97 with a|a
      · exact absurd u22 a
      · exact a
    have u25 : ¬v23 := by
      rcases c90 with a|a
      · exact a
      · exact absurd u22 a
    rcases c2118 with a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a u10
    · exact absurd a u1
    · exact absurd a u14
    · exact absurd a u25
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a u18
    · exact absurd a u19
    · exact absurd a u8
    · exact absurd a u7
    · exact absurd a u6
  have c2213 : ¬v3 ∨ v2 ∨ v28 ∨ v48 ∨ v49 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v6 := by
      rcases c2191 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v47 := by
      rcases c2056 with a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a n4
    have u3 : ¬v46 := by
      rcases c163 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v45 := by
      rcases c160 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v44 := by
      rcases c156 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v43 := by
      rcases c151 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v9 := by
      rcases c2195 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u8 : v1 := by
      rcases c2204 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v29 := by
      rcases c2212 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u10 : ¬v33 := by
      rcases c107 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : ¬v30 := by
      rcases c104 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v32 := by
      rcases c106 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v31 := by
      rcases c105 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v34 := by
      rcases c108 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v35 := by
      rcases c109 with a|a
      · exact absurd u9 a
      · exact a
    have u16 : ¬v37 := by
      rcases c2146 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a u5
      · exact absurd a u4
    have u17 : ¬v42 := by
      rcases c1153 with a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u6
      · exact absurd a n3
      · exact absurd a n4
    have u18 : ¬v41 := by
      rcases c2200 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    have u19 : ¬v38 := by
      rcases c1342 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u20 : ¬v24 := by
      rcases c1034 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u16
      · exact absurd a u19
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
    have u21 : ¬v39 := by
      rcases c2058 with a|a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u19
      · exact absurd a u4
      · exact absurd a u3
    have u22 : v4 := by
      rcases c1011 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u8 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u11
      · exact absurd a u13
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd a n4
    have u23 : ¬v7 := by
      rcases c13 with a|a|a|a
      · exact absurd u8 a
      · exact absurd u22 a
      · exact a
      · exact absurd n0 a
    have u24 : ¬v5 := by
      rcases c11 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd n0 a
      · exact absurd u22 a
    have u25 : ¬v13 := by
      rcases c1221 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a n4
    have u26 : v23 := by
      rcases c1868 with a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a n1
      · exact a
      · exact absurd a u20
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u15
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd a u5
      · exact absurd a n4
    have u27 : ¬v12 := by
      rcases c1155 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n1
      · exact absurd a u23
      · exact absurd a u6
      · exact absurd a n4
    have u28 : v27 := by
      rcases c1260 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u1
      · exact absurd a u23
      · exact absurd a u27
      · exact absurd a u25
      · exact absurd a n2
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd a u18
      · exact absurd a u17
      · exact absurd a n3
      · exact absurd a n4
    rcases c91 with a|a
    · exact absurd u28 a
    · exact absurd u26 a
  have c2214 : v37 ∨ v2 ∨ v9 ∨ ¬v27 ∨ v30 ∨ v44 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v22 := by
      rcases c86 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : ¬v24 := by
      rcases c95 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v23 := by
      rcases c91 with a|a
      · exact absurd n3 a
      · exact a
    have u4 : v8 := by
      rcases c2210 with a|a|a|a|a|a|a
      · exact absurd n3 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a n0
      · exact absurd a n5
    have u5 : v10 := by
      rcases c2045 with a|a|a|a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd a n1
      · exact absurd a n2
      · exact a
      · exact absurd a u1
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd a n0
      · exact absurd a n5
    rcases c41 with a|a
    · exact absurd u4 a
    · exact absurd u5 a
  have c2215 : v11 ∨ v2 ∨ v3 ∨ v6 ∨ v9 ∨ ¬v10 ∨ v12 ∨ v17 ∨ v18 ∨ v20 ∨ v44 ∨ v45 ∨ v46 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v13 := by
      rcases c53 with a|a
      · exact absurd n5 a
      · exact a
    rcases c423 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n9
    · exact absurd a n8
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n6
    · exact absurd a n4
    · exact absurd a n7
    · exact absurd n5 a
    · exact absurd a n10
    · exact absurd a n11
    · exact absurd a n12
  exact ⟨c2167, c2190, c2191, c2192, c2193, c2194, c2200, c2204, c2205, c2206, c2213, c2214, c2215⟩
