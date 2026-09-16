import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 410-clause unsatisfiable core of minimal-cover pattern 1, contradictory.
156 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem qcore001_false
    (v1 v2 v3 v7 v8 v9 v10 v11 v13 v18 v19 v21 v24 v28 v29 v31 v32 v64 v66 v67 v69 v70 v71 v73 v76 v79 v80 v83 v84 v85 v86 v87 v88 v90 v93 v94 v95 v96 v97 v98 v102 v103 v104 v105 v106 v124 v125 v126 v130 v131 v132 v133 v135 v136 v137 v139 v142 v145 v148 v149 v150 v151 v152 v153 v157 v158 v159 v160 v161 v179 v180 v181 v182 v185 v186 v187 v188 v190 v191 v192 v194 v195 v197 v202 v203 v204 v205 v206 v224 v225 v226 v230 v231 v232 v233 v235 v236 v237 v239 v240 v242 v260 v261 v262 v266 v267 v269 v271 v272 v273 v278 v330 v331 v332 v335 v336 v339 v345 v346 v347 v349 v352 v355 v356 v358 v361 : Prop)
    (c1 : v3 ∨ v1 ∨ v90 ∨ v2 ∨ v79 ∨ ¬v80)
    (c2 : ¬v24 ∨ ¬v2 ∨ ¬v79 ∨ ¬v145 ∨ ¬v90 ∨ v13)
    (c3 : v1 ∨ v2 ∨ ¬v97 ∨ ¬v10 ∨ v79 ∨ v87)
    (c4 : ¬v21 ∨ v1 ∨ v13 ∨ ¬v152 ∨ v79 ∨ v87)
    (c5 : ¬v13 ∨ ¬v2 ∨ ¬v79 ∨ ¬v97 ∨ v31 ∨ v152)
    (c6 : v7 ∨ ¬v1 ∨ ¬v8 ∨ v84 ∨ v85 ∨ v130)
    (c7 : v1 ∨ ¬v84 ∨ ¬v85 ∨ ¬v130 ∨ ¬v7 ∨ v8)
    (c8 : ¬v19 ∨ ¬v185 ∨ ¬v85 ∨ ¬v130 ∨ v8 ∨ v64)
    (c9 : v19 ∨ ¬v8 ∨ v85 ∨ ¬v64 ∨ v130 ∨ v185)
    (c10 : v132 ∨ ¬v1 ∨ ¬v84 ∨ ¬v87 ∨ v10 ∨ ¬v7)
    (c11 : ¬v132 ∨ v1 ∨ ¬v10 ∨ v7 ∨ v84 ∨ v87)
    (c12 : v18 ∨ ¬v66 ∨ v7 ∨ ¬v187 ∨ v84 ∨ v132)
    (c13 : ¬v21 ∨ ¬v187 ∨ ¬v87 ∨ ¬v132 ∨ v10 ∨ v66)
    (c14 : ¬v1 ∨ v8 ∨ v9 ∨ ¬v85 ∨ v86 ∨ v135)
    (c15 : v70 ∨ ¬v19 ∨ ¬v8 ∨ v136 ∨ v85 ∨ ¬v191)
    (c16 : v21 ∨ ¬v136 ∨ ¬v10 ∨ ¬v191 ∨ v70 ∨ v87)
    (c17 : ¬v11 ∨ ¬v10 ∨ ¬v142 ∨ ¬v88 ∨ v1 ∨ v87)
    (c18 : v24 ∨ v90 ∨ ¬v204 ∨ v2 ∨ ¬v29 ∨ v95)
    (c19 : ¬v3 ∨ ¬v2 ∨ ¬v9 ∨ ¬v105 ∨ ¬v90 ∨ v96)
    (c20 : ¬v66 ∨ ¬v28 ∨ ¬v94 ∨ v7 ∨ v132 ∨ v232)
    (c21 : ¬v67 ∨ v28 ∨ ¬v11 ∨ ¬v7 ∨ v2 ∨ ¬v32)
    (c22 : v29 ∨ ¬v31 ∨ ¬v10 ∨ ¬v8 ∨ v2 ∨ ¬v70)
    (c23 : ¬v98 ∨ ¬v95 ∨ ¬v8 ∨ v2 ∨ ¬v137 ∨ v11)
    (c24 : ¬v2 ∨ v97 ∨ ¬v139 ∨ ¬v9 ∨ v10 ∨ v96)
    (c25 : ¬v7 ∨ v131 ∨ v9 ∨ ¬v130 ∨ v8 ∨ v135)
    (c26 : ¬v9 ∨ v7 ∨ ¬v135 ∨ ¬v8 ∨ ¬v131 ∨ v130)
    (c27 : v69 ∨ ¬v345 ∨ v64 ∨ v8 ∨ ¬v130 ∨ v135)
    (c28 : ¬v8 ∨ ¬v64 ∨ ¬v135 ∨ ¬v69 ∨ v130 ∨ v345)
    (c29 : ¬v66 ∨ ¬v346 ∨ ¬v130 ∨ ¬v132 ∨ ¬v7 ∨ v64)
    (c30 : v132 ∨ v10 ∨ ¬v139 ∨ ¬v7 ∨ ¬v9 ∨ v131)
    (c31 : v66 ∨ ¬v352 ∨ ¬v10 ∨ ¬v142 ∨ v76 ∨ v132)
    (c32 : v73 ∨ v69 ∨ ¬v355 ∨ ¬v135 ∨ v9 ∨ v139)
    (c33 : ¬v73 ∨ ¬v70 ∨ ¬v355 ∨ ¬v139 ∨ v10 ∨ v136)
    (c34 : v71 ∨ v70 ∨ v8 ∨ v10 ∨ ¬v11 ∨ ¬v76)
    (c35 : ¬v71 ∨ ¬v70 ∨ ¬v10 ∨ ¬v8 ∨ v11 ∨ v76)
    (c36 : v32 ∨ v13 ∨ ¬v149 ∨ v28 ∨ ¬v233 ∨ v153)
    (c37 : ¬v28 ∨ ¬v32 ∨ ¬v153 ∨ ¬v13 ∨ v149 ∨ v233)
    (c38 : ¬v13 ∨ v21 ∨ v19 ∨ ¬v150 ∨ v152 ∨ v191)
    (c39 : ¬v70 ∨ v346 ∨ ¬v64 ∨ ¬v19 ∨ v185 ∨ ¬v191)
    (c40 : ¬v67 ∨ ¬v66 ∨ ¬v187 ∨ ¬v352 ∨ ¬v18 ∨ v188)
    (c41 : v31 ∨ v66 ∨ ¬v239 ∨ v73 ∨ v232 ∨ v349)
    (c42 : ¬v31 ∨ v236 ∨ ¬v76 ∨ v358 ∨ v242 ∨ v70)
    (c43 : v32 ∨ ¬v237 ∨ ¬v76 ∨ ¬v71 ∨ v242 ∨ v358)
    (c44 : ¬v32 ∨ ¬v242 ∨ v76 ∨ ¬v358 ∨ v237 ∨ v71)
    (c45 : ¬v73 ∨ ¬v361 ∨ v31 ∨ ¬v239 ∨ ¬v242 ∨ v76)
    (c46 : ¬v70 ∨ v355 ∨ ¬v69 ∨ ¬v345 ∨ v346 ∨ v64)
    (c47 : v70 ∨ ¬v346 ∨ ¬v355 ∨ ¬v345 ∨ v64 ∨ ¬v69)
    (c48 : v67 ∨ v352 ∨ ¬v76 ∨ ¬v347 ∨ ¬v71 ∨ v358)
    (c49 : ¬v93 ∨ v102 ∨ ¬v83 ∨ v79 ∨ v80 ∨ ¬v90)
    (c50 : v93 ∨ ¬v90 ∨ ¬v148 ∨ ¬v79 ∨ ¬v145 ∨ v202)
    (c51 : v95 ∨ ¬v90 ∨ ¬v150 ∨ ¬v79 ∨ ¬v145 ∨ v204)
    (c52 : v104 ∨ ¬v80 ∨ v90 ∨ ¬v145 ∨ v159 ∨ v204)
    (c53 : v79 ∨ ¬v83 ∨ ¬v149 ∨ ¬v148 ∨ ¬v179 ∨ v84)
    (c54 : v180 ∨ v79 ∨ v85 ∨ v148 ∨ v150 ∨ ¬v83)
    (c55 : v93 ∨ v125 ∨ ¬v83 ∨ ¬v180 ∨ ¬v225 ∨ v148)
    (c56 : ¬v79 ∨ v85 ∨ ¬v149 ∨ v150 ∨ v84 ∨ v185)
    (c57 : v79 ∨ ¬v84 ∨ ¬v150 ∨ ¬v185 ∨ ¬v85 ∨ v149)
    (c58 : v94 ∨ v130 ∨ v84 ∨ ¬v230 ∨ ¬v149 ∨ v185)
    (c59 : ¬v94 ∨ ¬v130 ∨ ¬v84 ∨ ¬v185 ∨ v149 ∨ v230)
    (c60 : ¬v151 ∨ v79 ∨ ¬v85 ∨ ¬v150 ∨ ¬v190 ∨ v86)
    (c61 : ¬v96 ∨ ¬v151 ∨ v86 ∨ ¬v235 ∨ ¬v190 ∨ v135)
    (c62 : v96 ∨ v151 ∨ ¬v135 ∨ ¬v86 ∨ v190 ∨ v235)
    (c63 : ¬v191 ∨ ¬v87 ∨ v152 ∨ ¬v85 ∨ ¬v79 ∨ ¬v150)
    (c64 : v191 ∨ v79 ∨ ¬v152 ∨ v85 ∨ v150 ∨ v87)
    (c65 : ¬v97 ∨ ¬v95 ∨ ¬v150 ∨ ¬v236 ∨ ¬v79 ∨ v152)
    (c66 : v97 ∨ ¬v136 ∨ ¬v152 ∨ v87 ∨ ¬v191 ∨ v236)
    (c67 : ¬v192 ∨ v79 ∨ ¬v88 ∨ v85 ∨ v150 ∨ v153)
    (c68 : v237 ∨ v98 ∨ ¬v88 ∨ v153 ∨ v192 ∨ ¬v137)
    (c69 : v151 ∨ v194 ∨ v152 ∨ ¬v79 ∨ v86 ∨ ¬v87)
    (c70 : ¬v151 ∨ ¬v152 ∨ ¬v86 ∨ ¬v194 ∨ v79 ∨ v87)
    (c71 : ¬v96 ∨ ¬v151 ∨ ¬v194 ∨ ¬v86 ∨ v139 ∨ v239)
    (c72 : v88 ∨ ¬v79 ∨ v153 ∨ v152 ∨ ¬v87 ∨ ¬v197)
    (c73 : v102 ∨ v80 ∨ v84 ∨ ¬v83 ∨ v103 ∨ v124)
    (c74 : ¬v125 ∨ ¬v104 ∨ ¬v102 ∨ ¬v85 ∨ ¬v80 ∨ v83)
    (c75 : ¬v181 ∨ v126 ∨ v83 ∨ v102 ∨ v157 ∨ v262)
    (c76 : v158 ∨ ¬v269 ∨ v84 ∨ v103 ∨ ¬v133 ∨ v188)
    (c77 : v273 ∨ ¬v159 ∨ ¬v104 ∨ v85 ∨ v192 ∨ ¬v137)
    (c78 : v105 ∨ v80 ∨ v87 ∨ ¬v86 ∨ v106 ∨ v139)
    (c79 : ¬v161 ∨ ¬v160 ∨ ¬v194 ∨ ¬v86 ∨ v80 ∨ v87)
    (c80 : ¬v180 ∨ ¬v85 ∨ v83 ∨ ¬v185 ∨ ¬v84 ∨ v179)
    (c81 : v130 ∨ v84 ∨ ¬v330 ∨ ¬v179 ∨ v124 ∨ v185)
    (c82 : v330 ∨ ¬v130 ∨ ¬v124 ∨ ¬v185 ∨ v179 ∨ ¬v84)
    (c83 : v131 ∨ v130 ∨ v84 ∨ ¬v135 ∨ ¬v86 ∨ v85)
    (c84 : ¬v131 ∨ ¬v84 ∨ ¬v85 ∨ ¬v130 ∨ v86 ∨ v135)
    (c85 : ¬v345 ∨ v130 ∨ ¬v135 ∨ v85 ∨ v185 ∨ v190)
    (c86 : v136 ∨ v346 ∨ v85 ∨ v130 ∨ v185 ∨ ¬v191)
    (c87 : ¬v136 ∨ ¬v346 ∨ ¬v132 ∨ ¬v187 ∨ ¬v87 ∨ v191)
    (c88 : ¬v137 ∨ ¬v347 ∨ v85 ∨ v130 ∨ v185 ∨ v192)
    (c89 : v133 ∨ v132 ∨ ¬v88 ∨ v87 ∨ ¬v142 ∨ v84)
    (c90 : ¬v352 ∨ v187 ∨ v87 ∨ ¬v142 ∨ v132 ∨ v197)
    (c91 : ¬v188 ∨ ¬v352 ∨ ¬v142 ∨ ¬v133 ∨ ¬v88 ∨ v197)
    (c92 : v355 ∨ ¬v139 ∨ ¬v135 ∨ ¬v86 ∨ v190 ∨ ¬v194)
    (c93 : ¬v136 ∨ ¬v191 ∨ ¬v355 ∨ ¬v194 ∨ v87 ∨ v139)
    (c94 : v192 ∨ v191 ∨ ¬v85 ∨ ¬v197 ∨ ¬v87 ∨ v88)
    (c95 : ¬v192 ∨ ¬v191 ∨ ¬v88 ∨ v85 ∨ v87 ∨ v197)
    (c96 : ¬v136 ∨ ¬v142 ∨ v358 ∨ v87 ∨ v197 ∨ ¬v191)
    (c97 : v137 ∨ ¬v142 ∨ v358 ∨ ¬v88 ∨ v197 ∨ v192)
    (c98 : ¬v102 ∨ ¬v90 ∨ ¬v203 ∨ ¬v103 ∨ v202 ∨ v260)
    (c99 : v103 ∨ ¬v124 ∨ ¬v203 ∨ v94 ∨ ¬v224 ∨ v260)
    (c100 : ¬v225 ∨ ¬v93 ∨ ¬v202 ∨ ¬v102 ∨ v125 ∨ v261)
    (c101 : ¬v262 ∨ ¬v102 ∨ ¬v202 ∨ ¬v105 ∨ ¬v90 ∨ v205)
    (c102 : v104 ∨ v90 ∨ ¬v204 ∨ v103 ∨ v203 ∨ v266)
    (c103 : ¬v125 ∨ ¬v93 ∨ ¬v130 ∨ ¬v124 ∨ ¬v95 ∨ v94)
    (c104 : v130 ∨ ¬v330 ∨ ¬v230 ∨ v224 ∨ v124 ∨ ¬v94)
    (c105 : ¬v126 ∨ ¬v335 ∨ ¬v226 ∨ ¬v235 ∨ v96 ∨ v135)
    (c106 : v95 ∨ v232 ∨ ¬v230 ∨ ¬v94 ∨ v236 ∨ v97)
    (c107 : v232 ∨ ¬v349 ∨ v94 ∨ v131 ∨ ¬v132 ∨ v231)
    (c108 : ¬v96 ∨ ¬v239 ∨ ¬v131 ∨ v349 ∨ v139 ∨ ¬v231)
    (c109 : v98 ∨ ¬v94 ∨ v97 ∨ ¬v242 ∨ ¬v233 ∨ v232)
    (c110 : ¬v95 ∨ v236 ∨ v97 ∨ ¬v235 ∨ v96 ∨ v239)
    (c111 : v355 ∨ v96 ∨ ¬v239 ∨ ¬v235 ∨ v135 ∨ ¬v139)
    (c112 : ¬v97 ∨ ¬v236 ∨ ¬v355 ∨ ¬v139 ∨ ¬v239 ∨ v136)
    (c113 : ¬v103 ∨ v124 ∨ ¬v260 ∨ v130 ∨ v266 ∨ v330)
    (c114 : v126 ∨ v262 ∨ ¬v124 ∨ v260 ∨ v102 ∨ v331)
    (c115 : v126 ∨ ¬v105 ∨ v131 ∨ ¬v267 ∨ ¬v331 ∨ v262)
    (c116 : ¬v105 ∨ v103 ∨ ¬v271 ∨ v267 ∨ v266 ∨ v104)
    (c117 : v105 ∨ ¬v345 ∨ v271 ∨ ¬v267 ∨ v135 ∨ v131)
    (c118 : v126 ∨ v125 ∨ ¬v130 ∨ ¬v124 ∨ v131 ∨ v135)
    (c119 : ¬v345 ∨ ¬v330 ∨ v124 ∨ ¬v331 ∨ ¬v130 ∨ v131)
    (c120 : ¬v335 ∨ v125 ∨ ¬v330 ∨ ¬v345 ∨ ¬v130 ∨ v135)
    (c121 : ¬v125 ∨ v335 ∨ ¬v135 ∨ v130 ∨ v330 ∨ v345)
    (c122 : ¬v349 ∨ ¬v126 ∨ ¬v331 ∨ ¬v139 ∨ ¬v339 ∨ v131)
    (c123 : ¬v335 ∨ ¬v126 ∨ ¬v355 ∨ ¬v139 ∨ ¬v339 ∨ v135)
    (c124 : ¬v349 ∨ ¬v346 ∨ ¬v345 ∨ ¬v132 ∨ ¬v130 ∨ v131)
    (c125 : v349 ∨ ¬v355 ∨ v139 ∨ ¬v135 ∨ v345 ∨ ¬v131)
    (c126 : v137 ∨ v136 ∨ v130 ∨ ¬v142 ∨ v132 ∨ ¬v133)
    (c127 : ¬v145 ∨ v226 ∨ ¬v205 ∨ ¬v148 ∨ v202 ∨ ¬v151)
    (c128 : v145 ∨ ¬v226 ∨ ¬v202 ∨ v148 ∨ v151 ∨ v205)
    (c129 : ¬v157 ∨ ¬v181 ∨ ¬v226 ∨ ¬v148 ∨ v202 ∨ v262)
    (c130 : v145 ∨ ¬v230 ∨ ¬v150 ∨ ¬v149 ∨ ¬v204 ∨ v203)
    (c131 : v145 ∨ ¬v205 ∨ v149 ∨ v231 ∨ ¬v203 ∨ ¬v151)
    (c132 : ¬v160 ∨ ¬v205 ∨ ¬v267 ∨ ¬v186 ∨ ¬v151 ∨ v231)
    (c133 : ¬v145 ∨ v151 ∨ v150 ∨ ¬v204 ∨ v205 ∨ v235)
    (c134 : ¬v205 ∨ v145 ∨ ¬v151 ∨ ¬v235 ∨ ¬v150 ∨ v204)
    (c135 : v278 ∨ ¬v206 ∨ ¬v242 ∨ ¬v152 ∨ v197 ∨ ¬v161)
    (c136 : v186 ∨ ¬v331 ∨ v179 ∨ v149 ∨ ¬v224 ∨ v231)
    (c137 : v151 ∨ v231 ∨ v150 ∨ ¬v230 ∨ ¬v149 ∨ v235)
    (c138 : ¬v231 ∨ ¬v151 ∨ v149 ∨ ¬v150 ∨ ¬v235 ∨ v230)
    (c139 : v150 ∨ ¬v235 ∨ ¬v345 ∨ ¬v185 ∨ ¬v190 ∨ v230)
    (c140 : v235 ∨ v190 ∨ ¬v230 ∨ ¬v150 ∨ v185 ∨ v345)
    (c141 : ¬v235 ∨ ¬v190 ∨ ¬v150 ∨ v345 ∨ v230 ∨ ¬v185)
    (c142 : ¬v236 ∨ ¬v232 ∨ ¬v230 ∨ ¬v152 ∨ ¬v149 ∨ v150)
    (c143 : ¬v236 ∨ v346 ∨ ¬v230 ∨ v150 ∨ v185 ∨ ¬v191)
    (c144 : v236 ∨ ¬v346 ∨ v191 ∨ ¬v185 ∨ v230 ∨ ¬v150)
    (c145 : v237 ∨ v233 ∨ ¬v230 ∨ ¬v149 ∨ v150 ∨ v153)
    (c146 : ¬v233 ∨ ¬v237 ∨ ¬v153 ∨ ¬v150 ∨ v149 ∨ v230)
    (c147 : ¬v349 ∨ ¬v187 ∨ ¬v186 ∨ ¬v231 ∨ ¬v149 ∨ v232)
    (c148 : v349 ∨ ¬v194 ∨ ¬v186 ∨ v239 ∨ ¬v231 ∨ v151)
    (c149 : v186 ∨ ¬v349 ∨ ¬v151 ∨ ¬v239 ∨ v194 ∨ v231)
    (c150 : v187 ∨ v232 ∨ ¬v194 ∨ ¬v152 ∨ v239 ∨ v349)
    (c151 : v233 ∨ v232 ∨ ¬v149 ∨ v153 ∨ ¬v242 ∨ ¬v152)
    (c152 : v151 ∨ ¬v190 ∨ v152 ∨ ¬v150 ∨ v194 ∨ v191)
    (c153 : ¬v236 ∨ v150 ∨ v152 ∨ v151 ∨ v235 ∨ v239)
    (c154 : ¬v191 ∨ v236 ∨ ¬v355 ∨ v190 ∨ v235 ∨ v150)
    (c155 : v151 ∨ v239 ∨ ¬v355 ∨ v190 ∨ v235 ∨ ¬v194)
    (c156 : ¬v151 ∨ v235 ∨ v190 ∨ v239 ∨ ¬v194 ∨ v355)
    (c157 : v192 ∨ v191 ∨ ¬v152 ∨ v153 ∨ v150 ∨ v197)
    (c158 : ¬v237 ∨ ¬v236 ∨ ¬v242 ∨ ¬v152 ∨ v150 ∨ v153)
    (c159 : v237 ∨ v236 ∨ ¬v150 ∨ v191 ∨ ¬v192 ∨ v358)
    (c160 : ¬v236 ∨ ¬v191 ∨ v358 ∨ ¬v152 ∨ v197 ∨ ¬v242)
    (c161 : ¬v240 ∨ v151 ∨ ¬v239 ∨ ¬v152 ∨ ¬v242 ∨ v153)
    (c162 : ¬v361 ∨ v239 ∨ v194 ∨ v152 ∨ ¬v197 ∨ v242)
    (c163 : ¬v194 ∨ ¬v197 ∨ v152 ∨ v361 ∨ ¬v239 ∨ v242)
    (c164 : ¬v194 ∨ ¬v239 ∨ ¬v152 ∨ ¬v242 ∨ v197 ∨ v361)
    (c165 : v331 ∨ ¬v179 ∨ ¬v267 ∨ ¬v260 ∨ v186 ∨ ¬v158)
    (c166 : ¬v181 ∨ ¬v186 ∨ ¬v331 ∨ ¬v267 ∨ v160 ∨ v262)
    (c167 : v159 ∨ v190 ∨ ¬v271 ∨ v185 ∨ v266 ∨ v345)
    (c168 : ¬v159 ∨ ¬v345 ∨ v271 ∨ ¬v185 ∨ ¬v190 ∨ ¬v266)
    (c169 : v160 ∨ v190 ∨ ¬v271 ∨ v267 ∨ v186 ∨ v345)
    (c170 : ¬v272 ∨ ¬v191 ∨ ¬v355 ∨ ¬v271 ∨ ¬v159 ∨ v190)
    (c171 : ¬v273 ∨ v192 ∨ v358 ∨ ¬v159 ∨ ¬v191 ∨ ¬v272)
    (c172 : v186 ∨ ¬v331 ∨ v179 ∨ ¬v345 ∨ ¬v185 ∨ ¬v330)
    (c173 : v181 ∨ ¬v335 ∨ ¬v186 ∨ ¬v345 ∨ ¬v190 ∨ v331)
    (c174 : ¬v336 ∨ v180 ∨ ¬v330 ∨ ¬v185 ∨ ¬v346 ∨ v191)
    (c175 : v187 ∨ v182 ∨ ¬v346 ∨ ¬v332 ∨ v191 ∨ v336)
    (c176 : v332 ∨ v331 ∨ ¬v179 ∨ v349 ∨ ¬v187 ∨ v186)
    (c177 : ¬v191 ∨ v346 ∨ ¬v355 ∨ v190 ∨ v345 ∨ v185)
    (c178 : ¬v346 ∨ v355 ∨ ¬v190 ∨ v191 ∨ ¬v185 ∨ ¬v345)
    (c179 : v187 ∨ ¬v194 ∨ v349 ∨ ¬v191 ∨ ¬v346 ∨ v355)
    (c180 : v187 ∨ ¬v346 ∨ ¬v355 ∨ v191 ∨ v194 ∨ v349)
    (c181 : v347 ∨ ¬v356 ∨ ¬v345 ∨ ¬v190 ∨ ¬v185 ∨ ¬v192)
    (c182 : ¬v358 ∨ ¬v347 ∨ ¬v346 ∨ ¬v191 ∨ v185 ∨ v192)
    (c183 : ¬v195 ∨ v356 ∨ ¬v190 ∨ v194 ∨ v355 ∨ v361)
    (c184 : ¬v358 ∨ ¬v355 ∨ v361 ∨ ¬v197 ∨ v194 ∨ v191)
    (c185 : v195 ∨ v356 ∨ ¬v197 ∨ ¬v192 ∨ v358 ∨ v361)
    (c186 : ¬v330 ∨ ¬v260 ∨ ¬v266 ∨ ¬v224 ∨ v203 ∨ v230)
    (c187 : ¬v330 ∨ v224 ∨ ¬v203 ∨ ¬v266 ∨ v230 ∨ v260)
    (c188 : v226 ∨ v231 ∨ ¬v205 ∨ v202 ∨ ¬v224 ∨ ¬v203)
    (c189 : ¬v262 ∨ ¬v267 ∨ ¬v205 ∨ ¬v203 ∨ v202 ∨ v260)
    (c190 : ¬v331 ∨ v267 ∨ ¬v224 ∨ ¬v203 ∨ v260 ∨ v231)
    (c191 : ¬v262 ∨ ¬v335 ∨ ¬v226 ∨ ¬v235 ∨ ¬v205 ∨ v271)
    (c192 : ¬v235 ∨ v203 ∨ v205 ∨ ¬v230 ∨ ¬v231 ∨ ¬v204)
    (c193 : ¬v266 ∨ ¬v271 ∨ v204 ∨ ¬v205 ∨ ¬v267 ∨ ¬v203)
    (c194 : ¬v235 ∨ ¬v271 ∨ ¬v204 ∨ ¬v230 ∨ v266 ∨ v345)
    (c195 : ¬v345 ∨ ¬v271 ∨ ¬v205 ∨ v231 ∨ v235 ∨ v267)
    (c196 : v272 ∨ v236 ∨ v235 ∨ ¬v271 ∨ ¬v204 ∨ v355)
    (c197 : v273 ∨ v356 ∨ v235 ∨ ¬v271 ∨ ¬v204 ∨ v237)
    (c198 : v225 ∨ ¬v331 ∨ v224 ∨ v226 ∨ v330 ∨ v335)
    (c199 : v330 ∨ ¬v345 ∨ ¬v224 ∨ ¬v331 ∨ v230 ∨ v231)
    (c200 : ¬v335 ∨ ¬v226 ∨ ¬v331 ∨ ¬v235 ∨ ¬v345 ∨ v231)
    (c201 : v331 ∨ v339 ∨ ¬v231 ∨ v226 ∨ v239 ∨ v349)
    (c202 : ¬v349 ∨ ¬v239 ∨ ¬v331 ∨ ¬v339 ∨ ¬v226 ∨ v231)
    (c203 : ¬v335 ∨ v339 ∨ ¬v355 ∨ ¬v235 ∨ ¬v226 ∨ ¬v239)
    (c204 : ¬v236 ∨ ¬v232 ∨ ¬v230 ∨ ¬v231 ∨ v235 ∨ v239)
    (c205 : ¬v232 ∨ ¬v231 ∨ v349 ∨ ¬v230 ∨ v345 ∨ ¬v346)
    (c206 : ¬v232 ∨ ¬v346 ∨ ¬v345 ∨ v230 ∨ v231 ∨ v349)
    (c207 : ¬v236 ∨ v355 ∨ v346 ∨ ¬v345 ∨ ¬v235 ∨ v230)
    (c208 : v236 ∨ ¬v346 ∨ ¬v355 ∨ ¬v345 ∨ v230 ∨ ¬v235)
    (c209 : ¬v236 ∨ v346 ∨ v235 ∨ v345 ∨ ¬v230 ∨ v355)
    (c210 : ¬v356 ∨ ¬v361 ∨ ¬v355 ∨ v235 ∨ ¬v239 ∨ v240)
    (c211 : ¬v358 ∨ v236 ∨ v361 ∨ v242 ∨ v355 ∨ v239)
    (c212 : ¬v236 ∨ v239 ∨ ¬v355 ∨ v242 ∨ v358 ∨ v361)
    (c213 : ¬v331 ∨ ¬v345 ∨ ¬v330 ∨ v267 ∨ ¬v266 ∨ v260)
    (c214 : v331 ∨ ¬v267 ∨ v266 ∨ v330 ∨ ¬v260 ∨ v345)
    (c215 : ¬v261 ∨ v335 ∨ v266 ∨ ¬v271 ∨ v330 ∨ v345)
    (c216 : v262 ∨ v335 ∨ ¬v271 ∨ ¬v331 ∨ ¬v267 ∨ v345)
    (c217 : v269 ∨ ¬v278 ∨ ¬v352 ∨ ¬v273 ∨ ¬v358 ∨ v347)
    (c218 : v336 ∨ ¬v349 ∨ ¬v355 ∨ ¬v332 ∨ v339 ∨ v346)
    (c219 : ¬v7 ∨ ¬v64 ∨ v8 ∨ v130)
    (c220 : v7 ∨ ¬v8 ∨ v64 ∨ ¬v130)
    (c221 : ¬v69 ∨ ¬v8 ∨ v9 ∨ v135)
    (c222 : ¬v9 ∨ v69 ∨ ¬v135 ∨ v8)
    (c223 : v11 ∨ ¬v76 ∨ v142 ∨ ¬v10)
    (c224 : v76 ∨ ¬v11 ∨ ¬v142 ∨ v10)
    (c225 : ¬v31 ∨ ¬v13 ∨ v152 ∨ v21)
    (c226 : v28 ∨ ¬v233 ∨ ¬v32 ∨ v67)
    (c227 : v96 ∨ ¬v151 ∨ ¬v86 ∨ v79)
    (c228 : ¬v80 ∨ ¬v105 ∨ v86 ∨ v160)
    (c229 : ¬v83 ∨ ¬v124 ∨ v84 ∨ v179)
    (c230 : v124 ∨ ¬v84 ∨ v83 ∨ ¬v179)
    (c231 : ¬v135 ∨ v86 ∨ ¬v85 ∨ v190)
    (c232 : ¬v86 ∨ v85 ∨ ¬v190 ∨ v135)
    (c233 : v194 ∨ v87 ∨ ¬v86 ∨ ¬v139)
    (c234 : ¬v194 ∨ ¬v87 ∨ v86 ∨ v139)
    (c235 : ¬v142 ∨ v88 ∨ v197 ∨ ¬v87)
    (c236 : v87 ∨ ¬v88 ∨ ¬v197 ∨ v142)
    (c237 : ¬v93 ∨ v90 ∨ ¬v202 ∨ v102)
    (c238 : ¬v106 ∨ ¬v272 ∨ v104 ∨ v136)
    (c239 : v148 ∨ ¬v224 ∨ ¬v149 ∨ v179)
    (c240 : v230 ∨ ¬v149 ∨ v150 ∨ ¬v185)
    (c241 : v149 ∨ ¬v230 ∨ ¬v150 ∨ v185)
    (c242 : v242 ∨ ¬v197 ∨ v153 ∨ ¬v152)
    (c243 : ¬v242 ∨ ¬v153 ∨ v197 ∨ v152)
    (c244 : v161 ∨ ¬v159 ∨ v272 ∨ ¬v191)
    (c245 : ¬v182 ∨ v181 ∨ ¬v339 ∨ v194)
    (c246 : v355 ∨ v191 ∨ ¬v190 ∨ ¬v194)
    (c247 : v224 ∨ v202 ∨ ¬v260 ∨ ¬v203)
    (c248 : ¬v230 ∨ ¬v203 ∨ v204 ∨ v266)
    (c249 : v203 ∨ ¬v204 ∨ v230 ∨ ¬v266)
    (c250 : ¬v204 ∨ ¬v235 ∨ v205 ∨ v271)
    (c251 : v272 ∨ v206 ∨ ¬v236 ∨ ¬v204)
    (c252 : v231 ∨ ¬v235 ∨ ¬v230 ∨ v345)
    (c253 : ¬v231 ∨ ¬v345 ∨ v235 ∨ v230)
    (c254 : v267 ∨ v345 ∨ ¬v266 ∨ ¬v271)
    (c255 : ¬v336 ∨ v339 ∨ v335 ∨ ¬v355)
    (c256 : ¬v13 ∨ v1 ∨ ¬v2 ∨ v79)
    (c257 : v13 ∨ v2 ∨ ¬v79 ∨ ¬v1)
    (c258 : ¬v24 ∨ ¬v3 ∨ v2 ∨ v90)
    (c259 : v3 ∨ ¬v2 ∨ ¬v90 ∨ v24)
    (c260 : ¬v80 ∨ ¬v90 ∨ v79 ∨ v145)
    (c261 : v90 ∨ v80 ∨ ¬v79 ∨ ¬v145)
    (c262 : ¬v335 ∨ v330 ∨ ¬v331 ∨ v345)
    (c263 : v331 ∨ v335 ∨ ¬v345 ∨ ¬v330)
    (c264 : ¬v339 ∨ v331 ∨ v349 ∨ ¬v332)
    (c265 : v332 ∨ v339 ∨ ¬v331 ∨ ¬v349)
    (c266 : v332 ∨ v349 ∨ ¬v339 ∨ ¬v331)
    (c267 : ¬v346 ∨ ¬v349 ∨ v345 ∨ v355)
    (c268 : v346 ∨ v349 ∨ ¬v355 ∨ ¬v345)
    (c269 : ¬v347 ∨ v346 ∨ ¬v352 ∨ v358)
    (c270 : v352 ∨ ¬v358 ∨ ¬v346 ∨ v347)
    (c271 : v7 ∨ v64 ∨ v8 ∨ v130)
    (c272 : v7 ∨ ¬v130 ∨ v8 ∨ v64)
    (c273 : v7 ∨ ¬v64 ∨ v8 ∨ v130)
    (c274 : v7 ∨ ¬v64 ∨ v8 ∨ ¬v130)
    (c275 : v7 ∨ ¬v8 ∨ v64 ∨ v130)
    (c276 : v7 ∨ ¬v130 ∨ ¬v8 ∨ ¬v64)
    (c277 : ¬v7 ∨ v8 ∨ v64 ∨ v130)
    (c278 : ¬v64 ∨ ¬v7 ∨ ¬v130 ∨ v8)
    (c279 : ¬v7 ∨ ¬v8 ∨ v130 ∨ v64)
    (c280 : ¬v7 ∨ ¬v130 ∨ ¬v8 ∨ v64)
    (c281 : ¬v7 ∨ ¬v8 ∨ v130 ∨ ¬v64)
    (c282 : ¬v7 ∨ ¬v64 ∨ ¬v8 ∨ ¬v130)
    (c283 : v9 ∨ v8 ∨ ¬v135 ∨ v69)
    (c284 : ¬v69 ∨ v9 ∨ ¬v135 ∨ v8)
    (c285 : ¬v9 ∨ ¬v69 ∨ ¬v135 ∨ v8)
    (c286 : v69 ∨ ¬v8 ∨ v135 ∨ v9)
    (c287 : ¬v8 ∨ ¬v9 ∨ v69 ∨ v135)
    (c288 : ¬v69 ∨ ¬v9 ∨ ¬v8 ∨ v135)
    (c289 : v10 ∨ v11 ∨ v142 ∨ v76)
    (c290 : v10 ∨ v11 ∨ ¬v142 ∨ v76)
    (c291 : v10 ∨ ¬v76 ∨ v11 ∨ v142)
    (c292 : ¬v76 ∨ v11 ∨ ¬v142 ∨ v10)
    (c293 : v10 ∨ ¬v11 ∨ v142 ∨ v76)
    (c294 : ¬v76 ∨ ¬v11 ∨ ¬v142 ∨ v10)
    (c295 : ¬v10 ∨ v11 ∨ v76 ∨ v142)
    (c296 : v11 ∨ ¬v76 ∨ ¬v142 ∨ ¬v10)
    (c297 : ¬v10 ∨ ¬v11 ∨ v76 ∨ v142)
    (c298 : ¬v10 ∨ ¬v11 ∨ ¬v76 ∨ v142)
    (c299 : v84 ∨ v83 ∨ v124 ∨ v179)
    (c300 : v124 ∨ ¬v179 ∨ v84 ∨ v83)
    (c301 : ¬v124 ∨ v83 ∨ v84 ∨ v179)
    (c302 : ¬v124 ∨ ¬v179 ∨ v83 ∨ v84)
    (c303 : ¬v84 ∨ v83 ∨ v124 ∨ v179)
    (c304 : ¬v124 ∨ ¬v84 ∨ ¬v179 ∨ v83)
    (c305 : v84 ∨ ¬v83 ∨ v179 ∨ v124)
    (c306 : ¬v124 ∨ ¬v179 ∨ v84 ∨ ¬v83)
    (c307 : ¬v84 ∨ ¬v83 ∨ v124 ∨ v179)
    (c308 : ¬v84 ∨ ¬v179 ∨ ¬v83 ∨ v124)
    (c309 : ¬v84 ∨ ¬v124 ∨ v179 ∨ ¬v83)
    (c310 : ¬v124 ∨ ¬v179 ∨ ¬v84 ∨ ¬v83)
    (c311 : ¬v130 ∨ v84 ∨ ¬v85 ∨ v185)
    (c312 : v130 ∨ ¬v84 ∨ ¬v185 ∨ v85)
    (c313 : v135 ∨ v85 ∨ v86 ∨ v190)
    (c314 : v135 ∨ v85 ∨ ¬v190 ∨ v86)
    (c315 : ¬v135 ∨ v85 ∨ v86 ∨ v190)
    (c316 : ¬v135 ∨ ¬v190 ∨ v85 ∨ v86)
    (c317 : v135 ∨ v85 ∨ ¬v86 ∨ v190)
    (c318 : v85 ∨ ¬v86 ∨ ¬v190 ∨ ¬v135)
    (c319 : v135 ∨ v86 ∨ v190 ∨ ¬v85)
    (c320 : ¬v135 ∨ ¬v190 ∨ v86 ∨ ¬v85)
    (c321 : v135 ∨ ¬v86 ∨ v190 ∨ ¬v85)
    (c322 : ¬v86 ∨ v135 ∨ ¬v190 ∨ ¬v85)
    (c323 : ¬v135 ∨ ¬v86 ∨ ¬v85 ∨ v190)
    (c324 : ¬v135 ∨ ¬v86 ∨ ¬v190 ∨ ¬v85)
    (c325 : v194 ∨ v139 ∨ v87 ∨ v86)
    (c326 : ¬v194 ∨ v87 ∨ v86 ∨ v139)
    (c327 : v194 ∨ ¬v139 ∨ v86 ∨ v87)
    (c328 : ¬v194 ∨ ¬v139 ∨ v86 ∨ v87)
    (c329 : v139 ∨ v194 ∨ v86 ∨ ¬v87)
    (c330 : ¬v194 ∨ ¬v139 ∨ ¬v87 ∨ v86)
    (c331 : v139 ∨ v194 ∨ ¬v86 ∨ v87)
    (c332 : ¬v139 ∨ ¬v194 ∨ ¬v86 ∨ v87)
    (c333 : v194 ∨ ¬v87 ∨ v139 ∨ ¬v86)
    (c334 : ¬v194 ∨ ¬v87 ∨ ¬v86 ∨ v139)
    (c335 : ¬v139 ∨ ¬v86 ∨ ¬v87 ∨ v194)
    (c336 : ¬v194 ∨ ¬v139 ∨ ¬v87 ∨ ¬v86)
    (c337 : v142 ∨ v88 ∨ v87 ∨ v197)
    (c338 : v88 ∨ v87 ∨ ¬v197 ∨ v142)
    (c339 : v87 ∨ v88 ∨ ¬v142 ∨ v197)
    (c340 : ¬v142 ∨ v87 ∨ ¬v197 ∨ v88)
    (c341 : v142 ∨ v87 ∨ ¬v88 ∨ v197)
    (c342 : ¬v142 ∨ ¬v88 ∨ ¬v197 ∨ v87)
    (c343 : v142 ∨ v88 ∨ ¬v87 ∨ v197)
    (c344 : ¬v87 ∨ ¬v142 ∨ ¬v197 ∨ v88)
    (c345 : ¬v88 ∨ ¬v87 ∨ v142 ∨ v197)
    (c346 : ¬v88 ∨ ¬v87 ∨ ¬v197 ∨ v142)
    (c347 : ¬v87 ∨ ¬v88 ∨ v197 ∨ ¬v142)
    (c348 : ¬v87 ∨ ¬v142 ∨ ¬v88 ∨ ¬v197)
    (c349 : ¬v224 ∨ v149 ∨ v179 ∨ v148)
    (c350 : v148 ∨ ¬v224 ∨ ¬v179 ∨ v149)
    (c351 : v148 ∨ v224 ∨ ¬v149 ∨ v179)
    (c352 : v148 ∨ ¬v179 ∨ ¬v149 ∨ ¬v224)
    (c353 : ¬v148 ∨ ¬v224 ∨ ¬v179 ∨ v149)
    (c354 : ¬v148 ∨ v179 ∨ ¬v149 ∨ v224)
    (c355 : ¬v148 ∨ ¬v224 ∨ ¬v149 ∨ v179)
    (c356 : ¬v148 ∨ ¬v179 ∨ ¬v149 ∨ v224)
    (c357 : v185 ∨ v150 ∨ v149 ∨ v230)
    (c358 : v150 ∨ ¬v230 ∨ v185 ∨ v149)
    (c359 : v150 ∨ v149 ∨ ¬v185 ∨ v230)
    (c360 : v149 ∨ ¬v185 ∨ v150 ∨ ¬v230)
    (c361 : v149 ∨ v230 ∨ ¬v150 ∨ v185)
    (c362 : ¬v185 ∨ ¬v230 ∨ ¬v150 ∨ v149)
    (c363 : ¬v149 ∨ v150 ∨ v185 ∨ v230)
    (c364 : v150 ∨ ¬v230 ∨ ¬v149 ∨ ¬v185)
    (c365 : v230 ∨ ¬v149 ∨ ¬v150 ∨ v185)
    (c366 : ¬v230 ∨ ¬v150 ∨ ¬v149 ∨ v185)
    (c367 : v230 ∨ ¬v185 ∨ ¬v150 ∨ ¬v149)
    (c368 : ¬v150 ∨ ¬v185 ∨ ¬v230 ∨ ¬v149)
    (c369 : v242 ∨ v152 ∨ v197 ∨ v153)
    (c370 : ¬v242 ∨ v152 ∨ v153 ∨ v197)
    (c371 : v152 ∨ ¬v197 ∨ v153 ∨ ¬v242)
    (c372 : v242 ∨ ¬v153 ∨ v197 ∨ v152)
    (c373 : ¬v153 ∨ v152 ∨ ¬v197 ∨ ¬v242)
    (c374 : v242 ∨ ¬v152 ∨ v197 ∨ v153)
    (c375 : ¬v242 ∨ ¬v197 ∨ ¬v152 ∨ v153)
    (c376 : v242 ∨ v197 ∨ ¬v152 ∨ ¬v153)
    (c377 : ¬v242 ∨ ¬v153 ∨ ¬v152 ∨ v197)
    (c378 : v242 ∨ ¬v152 ∨ ¬v153 ∨ ¬v197)
    (c379 : ¬v242 ∨ ¬v197 ∨ ¬v153 ∨ ¬v152)
    (c380 : v202 ∨ v260 ∨ v203 ∨ v224)
    (c381 : v202 ∨ ¬v260 ∨ v203 ∨ v224)
    (c382 : v202 ∨ v224 ∨ ¬v203 ∨ v260)
    (c383 : ¬v224 ∨ ¬v260 ∨ ¬v203 ∨ v202)
    (c384 : v260 ∨ v203 ∨ ¬v202 ∨ v224)
    (c385 : v224 ∨ ¬v203 ∨ ¬v202 ∨ v260)
    (c386 : v224 ∨ ¬v260 ∨ ¬v203 ∨ ¬v202)
    (c387 : ¬v224 ∨ v260 ∨ ¬v203 ∨ ¬v202)
    (c388 : ¬v224 ∨ ¬v260 ∨ ¬v203 ∨ ¬v202)
    (c389 : v230 ∨ v203 ∨ v266 ∨ v204)
    (c390 : v203 ∨ ¬v266 ∨ v230 ∨ v204)
    (c391 : ¬v230 ∨ v203 ∨ v204 ∨ v266)
    (c392 : ¬v230 ∨ v203 ∨ ¬v266 ∨ v204)
    (c393 : v230 ∨ ¬v204 ∨ v266 ∨ v203)
    (c394 : ¬v230 ∨ ¬v204 ∨ v203 ∨ ¬v266)
    (c395 : v230 ∨ ¬v203 ∨ v204 ∨ v266)
    (c396 : ¬v230 ∨ ¬v203 ∨ v204 ∨ ¬v266)
    (c397 : ¬v204 ∨ ¬v203 ∨ v230 ∨ v266)
    (c398 : v230 ∨ ¬v204 ∨ ¬v266 ∨ ¬v203)
    (c399 : ¬v230 ∨ ¬v204 ∨ ¬v203 ∨ v266)
    (c400 : ¬v230 ∨ ¬v266 ∨ ¬v204 ∨ ¬v203)
    (c401 : v204 ∨ v235 ∨ v271 ∨ v205)
    (c402 : ¬v271 ∨ v205 ∨ v204 ∨ v235)
    (c403 : v271 ∨ ¬v235 ∨ v204 ∨ v205)
    (c404 : ¬v235 ∨ ¬v271 ∨ v205 ∨ v204)
    (c405 : v235 ∨ ¬v205 ∨ v204 ∨ v271)
    (c406 : ¬v205 ∨ ¬v235 ∨ ¬v271 ∨ v204)
    (c407 : ¬v204 ∨ v205 ∨ v235 ∨ v271)
    (c408 : ¬v204 ∨ ¬v205 ∨ v235 ∨ v271)
    (c409 : ¬v205 ∨ ¬v271 ∨ ¬v204 ∨ v235)
    (c410 : ¬v205 ∨ ¬v235 ∨ ¬v204 ∨ v271)
    : False := by
  have c411 : v205 ∨ v235 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v204 := by
      rcases c401 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c407 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c412 : ¬v205 ∨ v235 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v204 := by
      rcases c405 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c408 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c413 : v235 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v205 := by
      rcases c412 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c411 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c414 : ¬v149 ∨ ¬v150 ∨ v185 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v230 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c366 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c415 : v266 ∨ v203 ∨ v204 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v230 := by
      rcases c389 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c391 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c416 : ¬v150 ∨ v185 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v149 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd a n1
    rcases c414 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
  have c417 : ¬v202 ∨ ¬v203 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v224 := by
      rcases c385 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c387 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c418 : v205 ∨ ¬v235 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v204 := by
      rcases c403 with a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
    rcases c250 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c419 : ¬v204 ∨ ¬v203 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c400 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c398 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c420 : v205 ∨ v204 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v235 := by
      rcases c404 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c402 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
  have c421 : v204 ∨ ¬v203 ∨ ¬v266 ∨ ¬v267 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v205 := by
      rcases c193 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd n4 a
      · exact absurd a n0
      · exact a
      · exact absurd n3 a
      · exact absurd n1 a
    rcases c420 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n4 a
  have c422 : ¬v203 ∨ ¬v266 ∨ ¬v267 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v204 := by
      rcases c419 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c421 with a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n3 a
  have c423 : v204 ∨ v203 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c392 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c390 with a|a|a|a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd a n0
  have c424 : ¬v204 ∨ v203 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c394 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
    rcases c249 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n2 a
  have c425 : v203 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v204 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c424 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c426 : ¬v271 ∨ ¬v266 ∨ ¬v267 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v203 := by
      rcases c422 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c425 with a|a
    · exact absurd a u1
    · exact absurd n1 a
  have c427 : ¬v204 ∨ ¬v203 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c399 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c397 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n2
  have c428 : ¬v266 ∨ ¬v271 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v267 := by
      rcases c426 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c254 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd n1 a
  have c429 : v204 ∨ ¬v203 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c248 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c395 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c430 : ¬v203 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v204 := by
      rcases c427 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c429 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c431 : v266 ∨ v204 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v203 := by
      rcases c415 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    rcases c430 with a|a
    · exact absurd u1 a
    · exact absurd a n0
  have c432 : v202 ∨ ¬v203 ∨ ¬v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v224 := by
      rcases c247 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c383 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c433 : ¬v202 ∨ ¬v203 ∨ ¬v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v224 := by
      rcases c386 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c388 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c434 : ¬v260 ∨ ¬v203 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v202 := by
      rcases c432 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c433 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c435 : v84 ∨ v83 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v124 := by
      rcases c301 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c299 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c436 : v124 ∨ ¬v83 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v84 := by
      rcases c307 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c305 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
  have c437 : ¬v85 ∨ ¬v86 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v135 := by
      rcases c321 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
    rcases c323 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c438 : ¬v85 ∨ v86 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v135 := by
      rcases c231 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c319 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
  have c439 : v84 ∨ ¬v124 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v83 := by
      rcases c229 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c435 with a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
  have c440 : v197 ∨ v152 ∨ v153 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v242 := by
      rcases c369 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c370 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c441 : v150 ∨ v185 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v149 := by
      rcases c357 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c363 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c442 : v185 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v150 := by
      rcases c416 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c441 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c443 : v149 ∨ ¬v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v150 := by
      rcases c360 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
    rcases c362 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd a n0
  have c444 : ¬v149 ∨ ¬v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v150 := by
      rcases c368 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c364 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c445 : ¬v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v149 := by
      rcases c444 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c443 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c446 : ¬v153 ∨ ¬v152 ∨ v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v242 := by
      rcases c377 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c376 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c447 : v149 ∨ v185 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v150 := by
      rcases c241 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c358 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c448 : ¬v266 ∨ ¬v203 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v204 := by
      rcases c396 with a|a|a|a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c419 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c449 : ¬v266 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd n0 a
    rcases c448 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
  have c450 : ¬v149 ∨ ¬v185 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v150 := by
      rcases c240 with a|a|a|a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c367 with a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c454 : v85 ∨ v86 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v135 := by
      rcases c313 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c315 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c455 : v84 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v83 := by
      rcases c435 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    have u2 : ¬v124 := by
      rcases c439 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    rcases c436 with a|a|a
    · exact absurd a u2
    · exact absurd u1 a
    · exact absurd a n1
  have c456 : ¬v230 ∨ v149 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd n0 a
    rcases c447 with a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
  have c457 : ¬v197 ∨ ¬v152 ∨ ¬v153 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v242 := by
      rcases c379 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c378 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c458 : ¬v152 ∨ ¬v153 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v197 := by
      rcases c457 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c446 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c459 : v86 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v85 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c438 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c460 : v83 ∨ v84 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v124 := by
      rcases c302 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    rcases c300 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c461 : ¬v142 ∨ ¬v88 ∨ ¬v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v87 := by
      rcases c348 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c342 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u1
  have c462 : ¬v88 ∨ ¬v87 ∨ ¬v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v142 := by
      rcases c346 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c461 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c463 : ¬v83 ∨ ¬v84 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v124 := by
      rcases c310 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c308 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a u1
  have c464 : ¬v185 ∨ ¬v149 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd n0 a
      · exact a
    rcases c450 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c465 : v83 ∨ ¬v84 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v124 := by
      rcases c304 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c230 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
  have c466 : ¬v84 ∨ ¬v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v83 := by
      rcases c465 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c463 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c467 : v224 ∨ ¬v149 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v148 := by
      rcases c354 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
    rcases c351 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
  have c468 : ¬v224 ∨ ¬v149 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v148 := by
      rcases c355 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c239 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c469 : v179 ∨ ¬v149 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v224 := by
      rcases c468 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c467 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
  have c470 : v197 ∨ ¬v87 ∨ ¬v88 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v142 := by
      rcases c347 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact a
    rcases c345 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n0
  have c471 : ¬v87 ∨ ¬v88 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v197 := by
      rcases c462 with a|a|a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact a
    rcases c470 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c473 : v87 ∨ v86 ∨ v139 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c326 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c325 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c474 : v203 ∨ v230 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v204 := by
      rcases c393 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c389 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
  have c475 : v230 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v203 := by
      rcases c430 with a|a
      · exact a
      · exact absurd a n1
    rcases c474 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c476 : ¬v190 ∨ ¬v150 ∨ ¬v185 ∨ v230 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v235 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd n2 a
    have u2 : v266 := by
      rcases c475 with a|a
      · exact absurd a n3
      · exact a
    have u3 : v271 := by
      rcases c413 with a|a
      · exact absurd a u1
      · exact a
    rcases c428 with a|a|a
    · exact absurd u2 a
    · exact absurd u3 a
    · exact absurd a n4
  have c477 : v135 ∨ v85 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v86 := by
      rcases c232 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c314 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
  have c478 : v197 ∨ v87 ∨ v88 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v142 := by
      rcases c337 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c339 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n0
  have c479 : v87 ∨ v88 ∨ v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v197 := by
      rcases c478 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c338 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n2
  have c480 : v139 ∨ ¬v86 ∨ ¬v87 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v194 := by
      rcases c333 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c334 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c481 : ¬v139 ∨ ¬v86 ∨ ¬v87 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c336 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c335 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a u1
  have c482 : ¬v86 ∨ ¬v87 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v139 := by
      rcases c481 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c480 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c483 : v86 ∨ v85 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v190 := by
      rcases c316 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c459 with a|a
    · exact absurd a n0
    · exact absurd a u1
  have c484 : v135 ∨ v85 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v86 := by
      rcases c317 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c313 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c485 : v135 ∨ v85 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v190 := by
      rcases c477 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    rcases c484 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
  have c486 : v190 ∨ ¬v85 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v86 := by
      rcases c459 with a|a
      · exact a
      · exact absurd a n0
    rcases c437 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c487 : ¬v135 ∨ ¬v85 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v86 := by
      rcases c320 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c324 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c488 : ¬v185 ∨ ¬v190 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u2
    rcases c476 with a|a|a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd a u2
    · exact absurd a n2
  have c489 : ¬v87 ∨ v88 ∨ ¬v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v197 := by
      rcases c344 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c235 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n0 a
  have c490 : v87 ∨ v86 ∨ ¬v139 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c328 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c327 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c491 : v87 ∨ v86 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v139 := by
      rcases c490 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    rcases c473 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a u1
  have c492 : v76 ∨ v11 ∨ v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v10 := by
      rcases c295 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c289 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c493 : ¬v9 ∨ ¬v8 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v69 := by
      rcases c288 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c287 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd a n2
  have c494 : ¬v76 ∨ v11 ∨ v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v10 := by
      rcases c223 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
      · exact a
    rcases c291 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c495 : v11 ∨ v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v76 := by
      rcases c494 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c492 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c496 : v64 ∨ v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v7 := by
      rcases c271 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c277 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c497 : ¬v64 ∨ v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v7 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c219 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c498 : v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v64 := by
      rcases c496 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c497 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c499 : v9 ∨ ¬v8 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v69 := by
      rcases c286 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n0
    rcases c221 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c500 : ¬v8 ∨ v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v9 := by
      rcases c493 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c499 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c501 : v185 ∨ ¬v85 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v230 := by
      rcases c442 with a|a
      · exact absurd a n0
      · exact a
    have u2 : v190 := by
      rcases c486 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v135 := by
      rcases c487 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u2 a
    have u4 : v149 := by
      rcases c456 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u8 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd u6 a
    rcases c311 with a|a|a|a
    · exact absurd u7 a
    · exact absurd a u8
    · exact absurd n1 a
    · exact absurd a n0
  have c502 : ¬v64 ∨ v8 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v7 := by
      rcases c274 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
    rcases c278 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c503 : ¬v10 ∨ ¬v11 ∨ v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v76 := by
      rcases c297 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    rcases c298 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n2
  have c504 : v124 ∨ ¬v84 ∨ v179 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v83 := by
      rcases c436 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c303 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
  have c505 : ¬v242 ∨ ¬v152 ∨ ¬v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v153 := by
      rcases c458 with a|a
      · exact absurd n1 a
      · exact a
    rcases c375 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u1
  have c506 : v235 ∨ v230 ∨ ¬v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v271 := by
      rcases c413 with a|a
      · exact absurd a n0
      · exact a
    have u2 : v266 := by
      rcases c475 with a|a
      · exact absurd a n1
      · exact a
    have u3 : ¬v231 := by
      rcases c253 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : ¬v267 := by
      rcases c426 with a|a|a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact a
    have u5 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : ¬v205 := by
      rcases c195 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a u4
    have u7 : ¬v204 := by
      rcases c398 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
    rcases c420 with a|a|a
    · exact absurd a u6
    · exact absurd a u7
    · exact absurd u1 a
  have c507 : v148 ∨ v149 ∨ ¬v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v179 := by
      rcases c349 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c350 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd a n1
  have c508 : v153 ∨ ¬v152 ∨ ¬v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v242 := by
      rcases c505 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c242 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd n1 a
  have c509 : ¬v152 ∨ ¬v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v153 := by
      rcases c458 with a|a
      · exact absurd n0 a
      · exact a
    rcases c508 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c510 : ¬v331 ∨ ¬v1 ∨ v19 ∨ ¬v79 ∨ v86 ∨ v131 ∨ v135 ∨ ¬v139 ∨ ¬v190 ∨ v194 ∨ ¬v339 ∨ ¬v345 ∨ ¬v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v85 := by
      rcases c485 with a|a
      · exact absurd a n6
      · exact a
    have u3 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a n6
    have u4 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u1 a
      · exact a
    have u5 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u2 a
    have u6 : v130 := by
      rcases c498 with a|a
      · exact absurd a u3
      · exact a
    have u7 : v9 := by
      rcases c14 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a u3
      · exact a
      · exact absurd u2 a
      · exact absurd a n4
      · exact absurd a n6
    have u8 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u1 a
      · exact absurd a u4
      · exact a
    have u9 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u5 a
      · exact absurd a u10
    have u12 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u6 a
    have u13 : v11 := by
      rcases c495 with a|a
      · exact a
      · exact absurd a u8
    have u14 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd u1 a
      · exact a
    have u15 : v266 := by
      rcases c475 with a|a
      · exact absurd a u10
      · exact a
    have u16 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n11 a
    have u17 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u3
      · exact absurd a u12
    have u18 : ¬v10 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u8
    have u19 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : v132 := by
      rcases c30 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd n7 a
      · exact absurd u17 a
      · exact absurd u7 a
      · exact absurd a n5
    have u22 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd u2 a
      · exact absurd n3 a
      · exact absurd u11 a
    have u23 : v151 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd a n9
      · exact absurd a u19
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd u1 a
    have u24 : ¬v204 := by
      rcases c398 with a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd u15 a
      · exact absurd u20 a
    have u25 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v96 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a n4
      · exact absurd u16 a
      · exact absurd n8 a
      · exact absurd a n6
    have u27 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u9
      · exact absurd u11 a
      · exact absurd u16 a
      · exact absurd a u10
    have u28 : ¬v202 := by
      rcases c417 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u25
    have u29 : v224 := by
      rcases c382 with a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u20 a
      · exact absurd a u25
    have u30 : v148 := by
      rcases c507 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u29 a
    have u31 : ¬v179 := by
      rcases c353 with a|a|a|a
      · exact absurd u30 a
      · exact absurd u29 a
      · exact a
      · exact absurd a u9
    have u32 : v330 := by
      rcases c199 with a|a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd u29 a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd a u27
    have u33 : v267 := by
      rcases c190 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u29 a
      · exact absurd u20 a
      · exact absurd a u25
      · exact absurd a u27
    have u34 : v186 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u31
      · exact absurd n11 a
      · exact absurd u5 a
      · exact absurd u32 a
    have u35 : ¬v271 := by
      rcases c426 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u33 a
    have u36 : v205 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u35
    have u37 : v105 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd a u35
      · exact absurd u33 a
      · exact absurd a n6
      · exact absurd a n5
    have u38 : ¬v160 := by
      rcases c132 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u33 a
      · exact absurd u34 a
      · exact absurd u23 a
      · exact absurd a u27
    have u39 : v145 := by
      rcases c131 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd a u9
      · exact absurd a u27
      · exact absurd u20 a
      · exact absurd u23 a
    have u40 : ¬v262 := by
      rcases c189 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u36 a
      · exact absurd u20 a
      · exact absurd a u28
      · exact absurd a u25
    have u41 : v126 := by
      rcases c115 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a n5
      · exact absurd u33 a
      · exact absurd n0 a
      · exact absurd a u40
    have u42 : ¬v80 := by
      rcases c228 with a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a n4
      · exact absurd a u38
    have u43 : ¬v349 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd n0 a
      · exact absurd n7 a
      · exact absurd n10 a
      · exact absurd a n5
    have u44 : v90 := by
      rcases c261 with a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd n3 a
      · exact absurd u39 a
    have u45 : v346 := by
      rcases c268 with a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd n12 a
      · exact absurd n11 a
    have u46 : v95 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u11 a
      · exact absurd n3 a
      · exact absurd u39 a
      · exact absurd a u24
    have u47 : v187 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd n12 a
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd a u43
    have u48 : v236 := by
      rcases c208 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd n12 a
      · exact absurd n11 a
      · exact absurd a u10
      · exact absurd u16 a
    have u49 : ¬v66 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u6 a
      · exact absurd u21 a
      · exact absurd u17 a
      · exact absurd a u12
    have u50 : ¬v21 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u1 a
      · exact absurd u21 a
      · exact absurd a u18
      · exact absurd a u49
    have u51 : ¬v97 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd u46 a
      · exact absurd u11 a
      · exact absurd u48 a
      · exact absurd n3 a
      · exact absurd a u19
    have u52 : ¬v13 := by
      rcases c38 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd a n2
      · exact absurd u11 a
      · exact absurd a u19
      · exact absurd a u22
    have u53 : ¬v2 := by
      rcases c24 with a|a|a|a|a|a
      · exact a
      · exact absurd a u51
      · exact absurd n7 a
      · exact absurd u7 a
      · exact absurd a u18
      · exact absurd a u26
    rcases c257 with a|a|a|a
    · exact absurd a u52
    · exact absurd a u53
    · exact absurd n3 a
    · exact absurd n1 a
  have c511 : v194 ∨ ¬v86 ∨ v87 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v139 := by
      rcases c331 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    rcases c233 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd u1 a
  have c512 : v152 ∨ v197 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v153 := by
      rcases c243 with a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c440 with a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
  have c513 : ¬v69 ∨ v8 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v9 := by
      rcases c285 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c284 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
  have c514 : v69 ∨ v8 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v9 := by
      rcases c222 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c283 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
  have c515 : v8 ∨ ¬v135 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v69 := by
      rcases c514 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c513 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c516 : v64 ∨ ¬v8 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v7 := by
      rcases c220 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
    rcases c280 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c517 : ¬v64 ∨ ¬v8 ∨ ¬v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v7 := by
      rcases c282 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c276 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c518 : ¬v130 ∨ ¬v8 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v64 := by
      rcases c517 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c516 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c519 : ¬v179 ∨ v149 ∨ ¬v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v148 := by
      rcases c507 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    rcases c353 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c520 : ¬v179 ∨ v149 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v230 := by
      rcases c456 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v266 := by
      rcases c475 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v202 := by
      rcases c417 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u4
    have u6 : v224 := by
      rcases c382 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u3 a
      · exact absurd a u4
    rcases c519 with a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd u6 a
  have c521 : ¬v185 ∨ v85 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u2
    have u5 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u4
    rcases c312 with a|a|a|a
    · exact absurd a u5
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd a n1
  have c522 : v202 ∨ v203 ∨ v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v260 := by
      rcases c381 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    rcases c380 with a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
  have c523 : ¬v235 ∨ ¬v230 ∨ ¬v231 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v266 := by
      rcases c449 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v203 := by
      rcases c430 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v204 := by
      rcases c431 with a|a
      · exact absurd a u1
      · exact a
    have u4 : ¬v271 := by
      rcases c194 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n3
    have u5 : v205 := by
      rcases c192 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd a u2
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u3 a
    rcases c410 with a|a|a|a
    · exact absurd u5 a
    · exact absurd n0 a
    · exact absurd u3 a
    · exact absurd a u4
  have c524 : ¬v235 ∨ ¬v230 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v231 := by
      rcases c252 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c523 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n2
  have c525 : v153 ∨ v197 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v152 := by
      rcases c440 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n0
    rcases c374 with a|a|a|a
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c526 : ¬v239 ∨ v153 ∨ ¬v194 ∨ v197 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v242 := by
      rcases c525 with a|a|a
      · exact absurd a n1
      · exact absurd a n3
      · exact a
    have u2 : v152 := by
      rcases c440 with a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
    rcases c164 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd u2 a
    · exact absurd u1 a
    · exact absurd a n3
    · exact absurd a n4
  have c527 : v152 ∨ ¬v153 ∨ v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v242 := by
      rcases c512 with a|a|a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    rcases c372 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
  have c528 : ¬v153 ∨ v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v152 := by
      rcases c527 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c458 with a|a
    · exact absurd u1 a
    · exact absurd n0 a
  have c529 : v197 ∨ ¬v194 ∨ ¬v239 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v153 := by
      rcases c528 with a|a
      · exact a
      · exact absurd a n0
    rcases c526 with a|a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n3
  have c530 : ¬v235 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v230 := by
      rcases c524 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
    have u2 : v185 := by
      rcases c442 with a|a
      · exact a
      · exact absurd a u1
    have u3 : ¬v190 := by
      rcases c488 with a|a|a
      · exact absurd u2 a
      · exact a
      · exact absurd a n1
    have u4 : v85 := by
      rcases c521 with a|a
      · exact absurd u2 a
      · exact a
    rcases c486 with a|a
    · exact absurd a u3
    · exact absurd u4 a
  have c531 : ¬v345 ∨ v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v85 := by
      rcases c486 with a|a
      · exact absurd a n1
      · exact a
    have u2 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u1
    have u3 : ¬v185 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u4 a
    rcases c85 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u5
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a u3
    · exact absurd a n1
  have c532 : ¬v135 ∨ ¬v190 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v85 := by
      rcases c487 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    have u2 : v86 := by
      rcases c483 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
    rcases c318 with a|a|a|a
    · exact absurd a u1
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c533 : v349 ∨ ¬v139 ∨ ¬v239 ∨ ¬v345 ∨ ¬v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v346 := by
      rcases c268 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n4 a
      · exact absurd n3 a
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd n3 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
    have u8 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u9 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u7
    have u12 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u8 a
    have u13 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u6 a
      · exact absurd a u10
    have u14 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u9
    have u15 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd n3 a
    have u16 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u11 a
      · exact a
    have u17 : ¬v194 := by
      rcases c330 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u11 a
      · exact absurd a u7
    have u18 : v69 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd a u12
      · exact absurd a u5
      · exact absurd u8 a
      · exact absurd a u3
    have u19 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u12
    have u20 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u14
    have u21 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u11 a
      · exact absurd a u16
      · exact a
    have u22 : v1 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd u19 a
      · exact absurd a u5
    have u23 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a u7
      · exact absurd a u3
    have u24 : v79 := by
      rcases c57 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u13 a
      · exact absurd u6 a
      · exact absurd u4 a
      · exact absurd a u9
    have u25 : v11 := by
      rcases c495 with a|a
      · exact a
      · exact absurd a u21
    have u26 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd u11 a
      · exact a
    have u27 : v9 := by
      rcases c25 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd a u23
      · exact a
      · exact absurd u8 a
      · exact absurd a u5
      · exact absurd a u3
    have u28 : ¬v10 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u21
    have u29 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u26 a
    have u30 : v132 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u20 a
      · exact absurd u11 a
      · exact absurd a u28
      · exact absurd u19 a
    have u31 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u29
      · exact absurd u4 a
      · exact absurd u24 a
      · exact absurd u13 a
    have u32 : v151 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u29
      · exact absurd u13 a
      · exact absurd a u17
      · exact absurd a u31
    have u33 : v236 := by
      rcases c144 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u31
      · exact absurd u6 a
      · exact absurd a u10
      · exact absurd u13 a
    have u34 : ¬v96 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a u7
      · exact absurd u15 a
      · exact absurd u2 a
      · exact absurd a u3
    have u35 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a u9
      · exact absurd u13 a
      · exact absurd u15 a
      · exact absurd a u10
    have u36 : v187 := by
      rcases c180 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact absurd a u31
      · exact absurd a u17
      · exact absurd a n0
    have u37 : v70 := by
      rcases c47 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact absurd n3 a
      · exact absurd a u12
      · exact absurd u18 a
    have u38 : ¬v232 := by
      rcases c206 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd n3 a
      · exact absurd a u10
      · exact absurd a u35
      · exact absurd a n0
    have u39 : ¬v66 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact absurd u30 a
      · exact absurd u19 a
      · exact absurd a u12
    have u40 : ¬v136 := by
      rcases c87 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u30 a
      · exact absurd u36 a
      · exact absurd u11 a
      · exact absurd a u31
    have u41 : ¬v21 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u11 a
      · exact absurd u30 a
      · exact absurd a u28
      · exact absurd a u39
    have u42 : ¬v73 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a u28
      · exact absurd a u40
    have u43 : v31 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd n2 a
      · exact absurd a u42
      · exact absurd a u38
      · exact absurd a n0
    have u44 : ¬v97 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a u40
    have u45 : ¬v13 := by
      rcases c225 with a|a|a|a
      · exact absurd u43 a
      · exact a
      · exact absurd a u29
      · exact absurd a u41
    have u46 : v2 := by
      rcases c257 with a|a|a|a
      · exact absurd a u45
      · exact a
      · exact absurd u24 a
      · exact absurd u22 a
    rcases c24 with a|a|a|a|a|a
    · exact absurd u46 a
    · exact absurd a u44
    · exact absurd n1 a
    · exact absurd u27 a
    · exact absurd a u28
    · exact absurd a u34
  have c534 : v339 ∨ ¬v226 ∨ ¬v239 ∨ ¬v345 ∨ ¬v349 ∨ ¬v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v190 := by
      rcases c531 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v85 := by
      rcases c485 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd u3 a
    have u7 : v130 := by
      rcases c498 with a|a
      · exact absurd a u4
      · exact a
    have u8 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u6
    have u11 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
    have u12 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u8
    have u13 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n3 a
    have u14 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u11
    have u16 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u12
    have u17 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u10 a
      · exact absurd a u14
      · exact a
    have u18 : v1 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact absurd a u4
    have u19 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u2
    have u20 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u12
    have u21 : v11 := by
      rcases c495 with a|a
      · exact a
      · exact absurd a u17
    have u22 : v330 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u20 a
      · exact absurd u5 a
      · exact absurd a u12
      · exact absurd u16 a
    have u23 : ¬v10 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u17
    have u24 : v132 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u16 a
      · exact absurd u10 a
      · exact absurd a u23
      · exact absurd u15 a
    have u25 : ¬v346 := by
      rcases c124 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd n3 a
      · exact absurd u24 a
      · exact absurd u7 a
      · exact absurd a u19
    have u26 : ¬v335 := by
      rcases c203 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n5 a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd n2 a
    have u27 : v331 := by
      rcases c263 with a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd n3 a
      · exact absurd u22 a
    have u28 : ¬v336 := by
      rcases c255 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u26
      · exact absurd n5 a
    have u29 : v332 := by
      rcases c265 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u27 a
      · exact absurd n4 a
    rcases c218 with a|a|a|a|a|a
    · exact absurd a u28
    · exact absurd n4 a
    · exact absurd n5 a
    · exact absurd u29 a
    · exact absurd a n0
    · exact absurd a u25
  have c535 : v226 ∨ ¬v150 ∨ ¬v151 ∨ v202 ∨ v204 ∨ ¬v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v266 := by
      rcases c431 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v230 := by
      rcases c449 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v224 := by
      rcases c382 with a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u2 a
      · exact absurd a u4
    have u6 : v185 := by
      rcases c442 with a|a
      · exact a
      · exact absurd a u3
    have u7 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u6 a
      · exact a
    have u8 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u7
      · exact absurd n1 a
      · exact absurd n5 a
      · exact absurd a u3
    have u9 : ¬v205 := by
      rcases c188 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u8
      · exact a
      · exact absurd a n3
      · exact absurd u5 a
      · exact absurd u2 a
    have u10 : v271 := by
      rcases c403 with a|a|a|a
      · exact a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a u9
    rcases c420 with a|a|a
    · exact absurd a u9
    · exact absurd a n4
    · exact absurd u10 a
  have c536 : ¬v267 ∨ ¬v2 ∨ v31 ∨ ¬v97 ∨ ¬v151 ∨ ¬v186 ∨ ¬v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : v190 := by
      rcases c531 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v85 := by
      rcases c485 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd u3 a
    have u7 : v130 := by
      rcases c498 with a|a
      · exact absurd a u4
      · exact a
    have u8 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u6
    have u11 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
    have u12 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u9
    have u13 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u8
    have u14 : v266 := by
      rcases c475 with a|a
      · exact absurd a u9
      · exact a
    have u15 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n6 a
    have u16 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u10 a
      · exact a
    have u17 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u11
    have u18 : v79 := by
      rcases c60 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact a
      · exact absurd u3 a
      · exact absurd u12 a
      · exact absurd u1 a
      · exact absurd a u6
    have u19 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u13
    have u20 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : ¬v96 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u6
      · exact absurd u15 a
      · exact absurd u1 a
      · exact absurd a u2
    have u22 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd a u8
      · exact absurd u12 a
      · exact absurd u15 a
      · exact absurd a u9
    have u23 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u10 a
      · exact absurd a u16
      · exact a
    have u24 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u2
    have u25 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u23
      · exact absurd a u16
      · exact absurd u10 a
      · exact a
    have u26 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u25 a
    have u27 : ¬v271 := by
      rcases c426 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n0 a
    have u28 : v205 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u27
    have u29 : v105 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u27
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u24
    have u30 : ¬v160 := by
      rcases c132 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact absurd a u22
    have u31 : v145 := by
      rcases c131 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u8
      · exact absurd a u22
      · exact absurd u20 a
      · exact absurd n4 a
    have u32 : ¬v80 := by
      rcases c228 with a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u6
      · exact absurd a u30
    have u33 : v90 := by
      rcases c261 with a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u18 a
      · exact absurd u31 a
    have u34 : ¬v13 := by
      rcases c5 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a u26
    have u35 : v9 := by
      rcases c25 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd a u24
      · exact a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a u2
    have u36 : ¬v3 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u35 a
      · exact absurd u29 a
      · exact absurd u33 a
      · exact absurd a u21
    have u37 : ¬v24 := by
      rcases c2 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u18 a
      · exact absurd u31 a
      · exact absurd u33 a
      · exact absurd a u34
    rcases c259 with a|a|a|a
    · exact absurd a u36
    · exact absurd n1 a
    · exact absurd u33 a
    · exact absurd a u37
  have c537 : v271 ∨ v90 ∨ ¬v151 ∨ v231 ∨ ¬v335 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v235 := by
      rcases c413 with a|a
      · exact a
      · exact absurd a n0
    have u2 : v345 := by
      rcases c530 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : v205 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
    have u4 : v190 := by
      rcases c531 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v204 := by
      rcases c410 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
    have u6 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v266 := by
      rcases c431 with a|a
      · exact a
      · exact absurd a u5
    have u8 : v85 := by
      rcases c485 with a|a
      · exact absurd a u6
      · exact a
    have u9 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u6
    have u10 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v230 := by
      rcases c449 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u4 a
      · exact absurd u8 a
    have u14 : v130 := by
      rcases c498 with a|a
      · exact absurd a u9
      · exact a
    have u15 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v150 := by
      rcases c139 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact absurd u4 a
      · exact absurd a u11
    have u18 : ¬v159 := by
      rcases c168 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd u4 a
      · exact absurd u7 a
    have u19 : ¬v96 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a u6
    have u20 : ¬v202 := by
      rcases c417 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u15
    have u21 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u16
    have u22 : v145 := by
      rcases c131 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u16
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd n2 a
    have u23 : v79 := by
      rcases c60 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd u8 a
      · exact absurd u17 a
      · exact absurd u4 a
      · exact absurd a u13
    have u24 : v226 := by
      rcases c535 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n2 a
      · exact absurd a u20
      · exact absurd a u5
      · exact absurd u1 a
    have u25 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u21
    have u26 : v80 := by
      rcases c261 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
    have u27 : ¬v331 := by
      rcases c200 with a|a|a|a|a|a
      · exact absurd n4 a
      · exact absurd u24 a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n3
    have u28 : ¬v126 := by
      rcases c105 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u24 a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u6
    have u29 : ¬v262 := by
      rcases c191 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u24 a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a n0
    have u30 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u8 a
      · exact absurd u14 a
      · exact absurd a u13
      · exact absurd a u6
    have u31 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u21
    have u32 : v104 := by
      rcases c52 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n1
      · exact absurd u22 a
      · exact absurd a u18
      · exact absurd a u5
    have u33 : ¬v83 := by
      rcases c309 with a|a|a|a
      · exact absurd u25 a
      · exact absurd u31 a
      · exact absurd a u21
      · exact a
    have u34 : v125 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u14 a
      · exact absurd u31 a
      · exact absurd a u30
      · exact absurd a u6
    have u35 : v102 := by
      rcases c114 with a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u29
      · exact absurd u31 a
      · exact absurd a u15
      · exact a
      · exact absurd a u27
    rcases c74 with a|a|a|a|a|a
    · exact absurd u34 a
    · exact absurd u32 a
    · exact absurd u35 a
    · exact absurd u8 a
    · exact absurd u26 a
    · exact absurd a u33
  have c538 : ¬v271 ∨ v204 ∨ ¬v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v205 := by
      rcases c420 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c406 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c539 : ¬v242 ∨ v152 ∨ ¬v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v153 := by
      rcases c371 with a|a|a|a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
      · exact absurd n0 a
    rcases c373 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n0 a
  have c540 : ¬v239 ∨ v152 ∨ ¬v194 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v197 := by
      rcases c529 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a n3
    have u2 : ¬v242 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
    rcases c163 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a u2
  have c541 : ¬v151 ∨ v79 ∨ ¬v86 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : v194 := by
      rcases c511 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
    have u3 : ¬v139 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n2 a
      · exact absurd a u1
    have u4 : ¬v152 := by
      rcases c70 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd a u1
    have u5 : ¬v239 := by
      rcases c540 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd a n3
    have u6 : v96 := by
      rcases c227 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c71 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd u2 a
    · exact absurd n2 a
    · exact absurd a u3
    · exact absurd a u5
  have c542 : ¬v239 ∨ ¬v194 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v152 := by
      rcases c540 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    have u2 : ¬v197 := by
      rcases c509 with a|a
      · exact absurd u1 a
      · exact a
    rcases c529 with a|a|a|a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c543 : ¬v152 ∨ v145 ∨ v345 ∨ v355 ∨ v358 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v197 := by
      rcases c509 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v153 := by
      rcases c458 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a n2
    have u4 : v242 := by
      rcases c525 with a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
    have u5 : v271 := by
      rcases c413 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v266 := by
      rcases c428 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
    have u7 : v230 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u6
    have u8 : ¬v203 := by
      rcases c430 with a|a
      · exact a
      · exact absurd a u6
    have u9 : v204 := by
      rcases c431 with a|a
      · exact absurd a u6
      · exact a
    have u10 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : v149 := by
      rcases c456 with a|a
      · exact absurd u7 a
      · exact a
    have u12 : ¬v205 := by
      rcases c409 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u9 a
      · exact absurd a u3
    have u13 : ¬v150 := by
      rcases c130 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u7 a
      · exact a
      · exact absurd u11 a
      · exact absurd u9 a
      · exact absurd a u8
    have u14 : ¬v85 := by
      rcases c501 with a|a
      · exact absurd a u10
      · exact a
    have u15 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u11 a
    have u16 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u14
    have u17 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v83 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u15 a
    have u19 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd u16 a
      · exact a
    have u20 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v86 := by
      rcases c483 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u16 a
    have u22 : ¬v79 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd a u17
      · exact absurd a u10
    have u23 : ¬v124 := by
      rcases c306 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u17
      · exact absurd u18 a
    have u24 : ¬v148 := by
      rcases c53 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd u18 a
      · exact absurd u11 a
      · exact a
      · exact absurd u15 a
      · exact absurd a u17
    have u25 : v159 := by
      rcases c167 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a u6
      · exact absurd a n2
    have u26 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u20 a
    have u27 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd u21 a
      · exact a
    have u28 : ¬v330 := by
      rcases c81 with a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u17
      · exact a
      · exact absurd u15 a
      · exact absurd a u23
      · exact absurd a u10
    have u29 : ¬v224 := by
      rcases c352 with a|a|a|a
      · exact absurd a u24
      · exact absurd u15 a
      · exact absurd u11 a
      · exact a
    have u30 : v194 := by
      rcases c511 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u27
    have u31 : v191 := by
      rcases c64 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd n0 a
      · exact absurd a u14
      · exact absurd a u13
      · exact absurd a u27
    have u32 : ¬v139 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u21 a
      · exact absurd a u27
    have u33 : v88 := by
      rcases c478 with a|a|a
      · exact absurd a u1
      · exact absurd a u27
      · exact a
    have u34 : v202 := by
      rcases c522 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u29
    have u35 : ¬v236 := by
      rcases c160 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd u4 a
    have u36 : ¬v192 := by
      rcases c95 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u33 a
      · exact absurd a u14
      · exact absurd a u27
      · exact absurd a u1
    have u37 : v142 := by
      rcases c341 with a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u33 a
      · exact absurd a u1
    have u38 : v260 := by
      rcases c384 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u34 a
      · exact absurd a u29
    have u39 : v272 := by
      rcases c196 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u3
      · exact absurd u5 a
      · exact absurd u9 a
      · exact absurd a n3
    have u40 : v137 := by
      rcases c97 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a n4
      · exact absurd u33 a
      · exact absurd a u1
      · exact absurd a u36
    have u41 : ¬v136 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a n4
      · exact absurd a u27
      · exact absurd a u1
      · exact absurd u31 a
    have u42 : ¬v103 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u38 a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u28
    have u43 : ¬v273 := by
      rcases c171 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a n4
      · exact absurd u25 a
      · exact absurd u31 a
      · exact absurd u39 a
    have u44 : ¬v104 := by
      rcases c77 with a|a|a|a|a|a
      · exact absurd a u43
      · exact absurd u25 a
      · exact a
      · exact absurd a u14
      · exact absurd a u36
      · exact absurd u40 a
    have u45 : v90 := by
      rcases c102 with a|a|a|a|a|a
      · exact absurd a u44
      · exact a
      · exact absurd u9 a
      · exact absurd a u42
      · exact absurd a u8
      · exact absurd a u6
    have u46 : ¬v106 := by
      rcases c238 with a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd a u44
      · exact absurd a u41
    have u47 : ¬v80 := by
      rcases c260 with a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd a u22
      · exact absurd a n1
    have u48 : v105 := by
      rcases c78 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd a u27
      · exact absurd u21 a
      · exact absurd a u46
      · exact absurd a u32
    have u49 : v102 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd a u17
      · exact absurd u18 a
      · exact absurd a u42
      · exact absurd a u23
    have u50 : v267 := by
      rcases c116 with a|a|a|a|a|a
      · exact absurd u48 a
      · exact absurd a u42
      · exact absurd u5 a
      · exact a
      · exact absurd a u6
      · exact absurd a u44
    have u51 : ¬v262 := by
      rcases c101 with a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd u34 a
      · exact absurd u48 a
      · exact absurd u45 a
      · exact absurd a u12
    have u52 : v331 := by
      rcases c214 with a|a|a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd u38 a
      · exact absurd a n2
    have u53 : ¬v335 := by
      rcases c262 with a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u52 a
      · exact absurd a n2
    rcases c216 with a|a|a|a|a|a
    · exact absurd a u51
    · exact absurd a u53
    · exact absurd u5 a
    · exact absurd u52 a
    · exact absurd u50 a
    · exact absurd a n2
  have c544 : ¬v88 ∨ v87 ∨ v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v197 := by
      rcases c236 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c341 with a|a|a|a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
  have c545 : v142 ∨ v87 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v88 := by
      rcases c544 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c479 with a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n0
  have c546 : ¬v355 ∨ v79 ∨ v345 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v271 := by
      rcases c413 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v266 := by
      rcases c428 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
    have u4 : v230 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u3
    have u5 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v85 := by
      rcases c501 with a|a
      · exact absurd a u5
      · exact a
    have u7 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u6
    have u8 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd u7 a
      · exact a
    have u9 : v86 := by
      rcases c483 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u7 a
    have u10 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd u9 a
      · exact a
    have u11 : v194 := by
      rcases c511 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u10
    have u12 : ¬v151 := by
      rcases c541 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u9 a
      · exact absurd a n3
    have u13 : v239 := by
      rcases c155 with a|a|a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd a u1
      · exact absurd u11 a
    rcases c542 with a|a|a
    · exact absurd u13 a
    · exact absurd u11 a
    · exact absurd a n3
  have c547 : v79 ∨ ¬v355 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v345 := by
      rcases c546 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u5 a
      · exact a
    have u7 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u5 a
      · exact absurd a u7
    have u9 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u6
    have u10 : ¬v84 := by
      rcases c57 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact absurd u4 a
      · exact absurd a u6
    rcases c455 with a|a
    · exact absurd a u10
    · exact absurd a u9
  have c548 : ¬v79 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v149 := by
      rcases c456 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v85 := by
      rcases c501 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v345 := by
      rcases c531 with a|a
      · exact a
      · exact absurd a u7
    have u9 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a u8
    have u10 : ¬v150 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd a u9
      · exact absurd a u7
      · exact absurd n1 a
      · exact a
      · exact absurd a u1
      · exact absurd a u8
    rcases c56 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd a u10
    · exact absurd a u6
    · exact absurd a u1
  have c549 : v79 ∨ ¬v85 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
      · exact absurd a u3
    have u5 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u2
    have u6 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u5
    rcases c57 with a|a|a|a|a|a
    · exact absurd a n0
    · exact absurd u6 a
    · exact absurd u4 a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a u2
  have c550 : ¬v194 ∨ v86 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a n1
    have u2 : ¬v139 := by
      rcases c330 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    rcases c234 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a u2
  have c551 : v355 ∨ ¬v85 ∨ ¬v150 ∨ v191 ∨ ¬v235 ∨ v356 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v190 := by
      rcases c486 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v345 := by
      rcases c530 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v346 := by
      rcases c178 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd u2 a
      · exact absurd u3 a
    have u7 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u5
    have u9 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u5
    have u10 : ¬v236 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd u3 a
      · exact absurd n4 a
      · exact absurd a u7
    have u11 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v139 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u5
      · exact absurd u8 a
    have u13 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u8 a
      · exact absurd a u11
      · exact a
    have u14 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u13
      · exact absurd a u11
      · exact absurd u8 a
      · exact a
    have u15 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : v192 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd u8 a
      · exact absurd a u11
    have u17 : ¬v242 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u14 a
    have u18 : v151 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd a n3
    have u19 : ¬v96 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u5
      · exact absurd n4 a
      · exact absurd u1 a
      · exact absurd a u4
    have u20 : ¬v239 := by
      rcases c111 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd a u19
      · exact a
      · exact absurd n4 a
      · exact absurd a u4
      · exact absurd u12 a
    have u21 : ¬v361 := by
      rcases c162 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd a u17
    have u22 : ¬v358 := by
      rcases c211 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u21
      · exact absurd a u17
      · exact absurd a n0
      · exact absurd a u20
    have u23 : ¬v195 := by
      rcases c183 with a|a|a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a n0
      · exact absurd a u21
    rcases c185 with a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a n5
    · exact absurd u14 a
    · exact absurd u16 a
    · exact absurd a u22
    · exact absurd a u21
  have c552 : v355 ∨ ¬v85 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v190 := by
      rcases c486 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v79 := by
      rcases c549 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u1 a
      · exact absurd n1 a
    have u6 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v230 := by
      rcases c445 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v345 := by
      rcases c488 with a|a|a
      · exact absurd u2 a
      · exact absurd u1 a
      · exact a
    have u9 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u5
    have u10 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u5
    have u11 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd a u7
    have u12 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u8 a
    have u13 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u9 a
      · exact a
    have u14 : v139 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u5
      · exact absurd u9 a
    have u15 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u9 a
      · exact absurd a u13
      · exact a
    have u16 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u15
      · exact absurd a u13
      · exact absurd u9 a
      · exact a
    have u17 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u16 a
    have u18 : ¬v242 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u16 a
    have u19 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd u11 a
    have u20 : v239 := by
      rcases c162 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd a u18
    have u21 : v151 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd a u10
      · exact absurd a u19
    have u22 : v96 := by
      rcases c111 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u20 a
      · exact absurd u12 a
      · exact absurd a u4
      · exact absurd u14 a
    rcases c61 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd u21 a
    · exact absurd a u5
    · exact absurd u12 a
    · exact absurd u1 a
    · exact absurd a u4
  have c553 : v194 ∨ ¬v79 ∨ v86 ∨ v94 ∨ v131 ∨ ¬v150 ∨ ¬v330 ∨ ¬v345 ∨ ¬v355 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : ¬v230 := by
      rcases c548 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a n2
    have u3 : v190 := by
      rcases c531 with a|a
      · exact absurd n7 a
      · exact a
    have u4 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n7 a
    have u5 : v185 := by
      rcases c442 with a|a
      · exact a
      · exact absurd a u1
    have u6 : v266 := by
      rcases c475 with a|a
      · exact absurd a u1
      · exact a
    have u7 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : v139 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd u2 a
    have u9 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v85 := by
      rcases c521 with a|a
      · exact absurd u5 a
      · exact a
    have u12 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u2 a
      · exact absurd a u7
      · exact a
    have u14 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u9
    have u15 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u10
    have u16 : ¬v204 := by
      rcases c398 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u6 a
      · exact absurd u12 a
    have u17 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u13
      · exact absurd a u7
      · exact absurd u2 a
      · exact a
    have u19 : v130 := by
      rcases c498 with a|a
      · exact absurd a u14
      · exact a
    have u20 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u15
    have u21 : ¬v271 := by
      rcases c538 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u4 a
    have u22 : ¬v202 := by
      rcases c417 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u17
    have u23 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u19 a
    have u25 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u15
    have u26 : v205 := by
      rcases c403 with a|a|a|a
      · exact absurd a u21
      · exact absurd u4 a
      · exact absurd a u16
      · exact a
    have u27 : v224 := by
      rcases c382 with a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u12 a
      · exact absurd a u17
    have u28 : ¬v242 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u18 a
    have u29 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u23
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd n5 a
    have u30 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u24
    have u31 : ¬v19 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd u19 a
      · exact absurd a u14
      · exact absurd a u24
    have u32 : v148 := by
      rcases c507 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u27 a
    have u33 : v151 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u23
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a u29
    have u34 : v1 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u11 a
      · exact absurd u19 a
      · exact absurd u30 a
      · exact absurd a u14
    have u35 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u10
      · exact absurd n5 a
      · exact absurd u4 a
      · exact absurd a u1
    have u36 : v145 := by
      rcases c134 with a|a|a|a|a|a
      · exact absurd u26 a
      · exact a
      · exact absurd u33 a
      · exact absurd u4 a
      · exact absurd n5 a
      · exact absurd a u16
    have u37 : v239 := by
      rcases c162 with a|a|a|a|a|a
      · exact absurd n9 a
      · exact a
      · exact absurd a n0
      · exact absurd a u23
      · exact absurd u18 a
      · exact absurd a u28
    have u38 : v349 := by
      rcases c533 with a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u37 a
      · exact absurd n7 a
      · exact absurd n8 a
    have u39 : v226 := by
      rcases c127 with a|a|a|a|a|a
      · exact absurd u36 a
      · exact a
      · exact absurd u26 a
      · exact absurd u32 a
      · exact absurd a u22
      · exact absurd u33 a
    have u40 : v339 := by
      rcases c534 with a|a|a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u37 a
      · exact absurd n7 a
      · exact absurd u38 a
      · exact absurd n8 a
    have u41 : ¬v331 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u31
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n4
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd u40 a
      · exact absurd n7 a
      · exact absurd n8 a
    have u42 : v335 := by
      rcases c263 with a|a|a|a
      · exact absurd a u41
      · exact a
      · exact absurd n7 a
      · exact absurd n6 a
    have u43 : v125 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd u42 a
      · exact a
      · exact absurd n6 a
      · exact absurd n7 a
      · exact absurd u19 a
      · exact absurd a u9
    have u44 : v90 := by
      rcases c537 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u33 a
      · exact absurd a u35
      · exact absurd u42 a
    have u45 : v93 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u32 a
      · exact absurd n1 a
      · exact absurd u36 a
      · exact absurd a u22
    have u46 : v95 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd n5 a
      · exact absurd n1 a
      · exact absurd u36 a
      · exact absurd a u16
    rcases c103 with a|a|a|a|a|a
    · exact absurd u43 a
    · exact absurd u45 a
    · exact absurd u19 a
    · exact absurd u25 a
    · exact absurd u46 a
    · exact absurd a n3
  have c555 : ¬v361 ∨ ¬v85 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v190 := by
      rcases c486 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v355 := by
      rcases c552 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u3 : v79 := by
      rcases c549 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd n1 a
    have u5 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd n1 a
    have u7 : ¬v230 := by
      rcases c548 with a|a
      · exact absurd u3 a
      · exact a
    have u8 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : v345 := by
      rcases c488 with a|a|a
      · exact absurd u4 a
      · exact absurd u1 a
      · exact a
    have u10 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u5
    have u11 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u6
    have u12 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u7
    have u13 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u8
    have u14 : v130 := by
      rcases c498 with a|a
      · exact absurd a u10
      · exact a
    have u15 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u13
    have u16 : ¬v94 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u15 a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u7
    have u17 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u5
    have u18 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u13
    have u19 : ¬v330 := by
      rcases c553 with a|a|a|a|a|a|a|a|a|a
      · exact absurd a u11
      · exact absurd u3 a
      · exact absurd a u6
      · exact absurd a u16
      · exact absurd a u17
      · exact absurd u12 a
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
      · exact absurd n0 a
    rcases c82 with a|a|a|a|a|a
    · exact absurd a u19
    · exact absurd u14 a
    · exact absurd u18 a
    · exact absurd u4 a
    · exact absurd a u13
    · exact absurd u15 a
  have c556 : ¬v197 ∨ v87 ∨ ¬v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v88 := by
      rcases c340 with a|a|a|a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
    rcases c461 with a|a|a
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c557 : ¬v7 ∨ ¬v8 ∨ v130 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v64 := by
      rcases c281 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
    rcases c279 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
  have c558 : ¬v331 ∨ ¬v135 ∨ v145 ∨ v148 ∨ ¬v179 ∨ ¬v202 ∨ v203 ∨ v226 ∨ v330 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v149 := by
      rcases c520 with a|a
      · exact absurd n4 a
      · exact a
    have u4 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd n4 a
    have u5 : v83 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n4 a
    have u6 : ¬v266 := by
      rcases c425 with a|a
      · exact absurd a n6
      · exact a
    have u7 : ¬v345 := by
      rcases c531 with a|a
      · exact a
      · exact absurd a u1
    have u8 : ¬v85 := by
      rcases c486 with a|a
      · exact absurd a u1
      · exact a
    have u9 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v185 := by
      rcases c464 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v224 := by
      rcases c352 with a|a|a|a
      · exact absurd a n3
      · exact absurd n4 a
      · exact absurd u3 a
      · exact a
    have u12 : v230 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u6
    have u13 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a u7
    have u14 : ¬v150 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd a u13
      · exact absurd a u1
      · exact absurd u12 a
      · exact a
      · exact absurd a u10
      · exact absurd a u7
    have u15 : ¬v79 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v271 := by
      rcases c413 with a|a
      · exact absurd a u13
      · exact a
    have u17 : ¬v335 := by
      rcases c262 with a|a|a|a
      · exact a
      · exact absurd a n8
      · exact absurd n0 a
      · exact absurd a u7
    have u18 : ¬v125 := by
      rcases c121 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a u9
      · exact absurd a n8
      · exact absurd a u7
    have u19 : v225 := by
      rcases c198 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u11
      · exact absurd a n7
      · exact absurd a n8
      · exact absurd a u17
    have u20 : v180 := by
      rcases c54 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u8
      · exact absurd a n3
      · exact absurd a u14
      · exact absurd u5 a
    have u21 : ¬v261 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd u16 a
      · exact absurd a n8
      · exact absurd a u7
    have u22 : v93 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u5 a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact absurd a n3
    have u23 : ¬v102 := by
      rcases c100 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u22 a
      · exact absurd n5 a
      · exact a
      · exact absurd a u18
      · exact absurd a u21
    have u24 : v90 := by
      rcases c237 with a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd n5 a
      · exact absurd a u23
    have u25 : ¬v80 := by
      rcases c260 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u15
      · exact absurd a n2
    rcases c49 with a|a|a|a|a|a
    · exact absurd u22 a
    · exact absurd a u23
    · exact absurd u5 a
    · exact absurd a u15
    · exact absurd a u25
    · exact absurd u24 a
  have c559 : ¬v236 ∨ ¬v131 ∨ ¬v135 ∨ v145 ∨ ¬v194 ∨ v224 ∨ ¬v231 ∨ v239 ∨ v330 ∨ v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v86 := by
      rcases c550 with a|a
      · exact absurd n4 a
      · exact a
    have u2 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : ¬v345 := by
      rcases c531 with a|a
      · exact a
      · exact absurd a u2
    have u5 : ¬v85 := by
      rcases c486 with a|a
      · exact absurd a u2
      · exact a
    have u6 : v142 := by
      rcases c545 with a|a
      · exact a
      · exact absurd a u3
    have u7 : ¬v197 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u6 a
    have u8 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a u4
    have u9 : ¬v185 := by
      rcases c521 with a|a
      · exact a
      · exact absurd a u5
    have u10 : ¬v153 := by
      rcases c528 with a|a
      · exact a
      · exact absurd a u7
    have u11 : v271 := by
      rcases c413 with a|a
      · exact absurd a u8
      · exact a
    have u12 : ¬v151 := by
      rcases c156 with a|a|a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u2
      · exact absurd a n7
      · exact absurd n4 a
      · exact absurd a n9
    have u13 : v230 := by
      rcases c442 with a|a
      · exact absurd a u9
      · exact a
    have u14 : v152 := by
      rcases c440 with a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd a u10
    have u15 : ¬v266 := by
      rcases c428 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u4
    have u16 : v149 := by
      rcases c456 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : v346 := by
      rcases c209 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a u8
      · exact absurd a u4
      · exact absurd u13 a
      · exact absurd a n9
    have u18 : ¬v232 := by
      rcases c204 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u13 a
      · exact absurd n6 a
      · exact absurd a u8
      · exact absurd a n7
    have u19 : ¬v203 := by
      rcases c430 with a|a
      · exact a
      · exact absurd a u15
    have u20 : v204 := by
      rcases c431 with a|a
      · exact absurd a u15
      · exact a
    have u21 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u16 a
    have u22 : ¬v349 := by
      rcases c267 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd a u4
      · exact absurd a n9
    have u23 : v202 := by
      rcases c522 with a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a n5
    have u24 : ¬v205 := by
      rcases c409 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u20 a
      · exact absurd a u8
    have u25 : ¬v148 := by
      rcases c356 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u16 a
      · exact absurd a n5
    have u26 : ¬v186 := by
      rcases c148 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd n4 a
      · exact a
      · exact absurd a n7
      · exact absurd n6 a
      · exact absurd a u12
    have u27 : v187 := by
      rcases c150 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd n4 a
      · exact absurd u14 a
      · exact absurd a n7
      · exact absurd a u22
    have u28 : ¬v226 := by
      rcases c128 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd u23 a
      · exact absurd a u25
      · exact absurd a u12
      · exact absurd a u24
    have u29 : ¬v331 := by
      rcases c558 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u25
      · exact absurd u21 a
      · exact absurd u23 a
      · exact absurd a u19
      · exact absurd a u28
      · exact absurd a n8
    have u30 : v332 := by
      rcases c176 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u21 a
      · exact absurd a u22
      · exact absurd u27 a
      · exact absurd a u26
    have u31 : v339 := by
      rcases c201 with a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd n6 a
      · exact absurd a u28
      · exact absurd a n7
      · exact absurd a u22
    rcases c264 with a|a|a|a
    · exact absurd u31 a
    · exact absurd a u29
    · exact absurd a u22
    · exact absurd u30 a
  have c560 : ¬v11 ∨ v10 ∨ ¬v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v76 := by
      rcases c224 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c294 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n1
  have c561 : v11 ∨ v10 ∨ ¬v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v76 := by
      rcases c292 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c290 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c562 : v10 ∨ ¬v142 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v11 := by
      rcases c560 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c561 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
  have c563 : ¬v346 ∨ v345 ∨ v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v271 := by
      rcases c413 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v266 := by
      rcases c428 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
    have u4 : v230 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u3
    have u5 : v204 := by
      rcases c431 with a|a
      · exact absurd a u3
      · exact a
    have u6 : ¬v79 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v149 := by
      rcases c456 with a|a
      · exact absurd u4 a
      · exact a
    have u9 : ¬v205 := by
      rcases c409 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u5 a
      · exact absurd a u1
    have u10 : ¬v85 := by
      rcases c549 with a|a
      · exact absurd a u6
      · exact a
    have u11 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u10
    have u13 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd u11 a
    have u14 : v83 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u11 a
    have u15 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : v86 := by
      rcases c483 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u12 a
    have u17 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v124 := by
      rcases c306 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u13
      · exact absurd u14 a
    have u19 : ¬v148 := by
      rcases c53 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u14 a
      · exact absurd u8 a
      · exact a
      · exact absurd u11 a
      · exact absurd a u13
    have u20 : ¬v150 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u15
      · exact absurd u4 a
      · exact a
      · exact absurd a u7
      · exact absurd a n1
    have u21 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd u16 a
      · exact a
    have u22 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : ¬v224 := by
      rcases c352 with a|a|a|a
      · exact absurd a u19
      · exact absurd u11 a
      · exact absurd u8 a
      · exact a
    have u24 : v194 := by
      rcases c511 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u21
    have u25 : v142 := by
      rcases c545 with a|a
      · exact a
      · exact absurd a u21
    have u26 : ¬v7 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u22
    have u27 : v94 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a u7
    have u28 : v131 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd u16 a
      · exact absurd a u10
    have u29 : ¬v330 := by
      rcases c104 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u4 a
      · exact absurd a u23
      · exact absurd a u18
      · exact absurd u27 a
    have u30 : ¬v139 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u16 a
      · exact absurd a u21
    have u31 : v10 := by
      rcases c562 with a|a
      · exact a
      · exact absurd u25 a
    have u32 : ¬v197 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u25 a
    have u33 : ¬v1 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u26
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
      · exact absurd a u10
      · exact absurd a u22
    have u34 : v88 := by
      rcases c478 with a|a|a
      · exact absurd a u32
      · exact absurd a u21
      · exact a
    have u35 : ¬v153 := by
      rcases c528 with a|a
      · exact a
      · exact absurd a u32
    have u36 : ¬v132 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd u31 a
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd a u21
    have u37 : ¬v11 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact absurd u34 a
      · exact absurd a u33
      · exact absurd a u21
    have u38 : ¬v192 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u34 a
      · exact absurd a u10
      · exact absurd a u20
      · exact absurd a u35
    have u39 : v152 := by
      rcases c440 with a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd a u35
    have u40 : v242 := by
      rcases c525 with a|a|a
      · exact absurd a u35
      · exact absurd a u32
      · exact a
    have u41 : v133 := by
      rcases c89 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd u34 a
      · exact absurd a u21
      · exact absurd u25 a
      · exact absurd a u13
    have u42 : ¬v76 := by
      rcases c296 with a|a|a|a
      · exact absurd a u37
      · exact a
      · exact absurd u25 a
      · exact absurd u31 a
    have u43 : ¬v151 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u16 a
      · exact absurd u24 a
      · exact absurd a u6
      · exact absurd a u21
    have u44 : v191 := by
      rcases c157 with a|a|a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd u39 a
      · exact absurd a u35
      · exact absurd a u20
      · exact absurd a u32
    have u45 : v231 := by
      rcases c137 with a|a|a|a|a|a
      · exact absurd a u43
      · exact a
      · exact absurd a u20
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a u1
    have u46 : ¬v145 := by
      rcases c133 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd a u20
      · exact absurd u5 a
      · exact absurd a u9
      · exact absurd a u1
    have u47 : ¬v349 := by
      rcases c267 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u48 : v96 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd u12 a
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a u1
    have u49 : v187 := by
      rcases c179 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u47
      · exact absurd u44 a
      · exact absurd n0 a
      · exact absurd a n2
    have u50 : ¬v239 := by
      rcases c108 with a|a|a|a|a|a
      · exact absurd u48 a
      · exact a
      · exact absurd u28 a
      · exact absurd a u47
      · exact absurd a u30
      · exact absurd u45 a
    have u51 : v358 := by
      rcases c543 with a|a|a|a|a
      · exact absurd u39 a
      · exact absurd a u46
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    have u52 : ¬v232 := by
      rcases c205 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd a u47
      · exact absurd u4 a
      · exact absurd a n1
      · exact absurd n0 a
    have u53 : ¬v236 := by
      rcases c559 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u12 a
      · exact absurd a u46
      · exact absurd u24 a
      · exact absurd a u23
      · exact absurd u45 a
      · exact absurd a u50
      · exact absurd a u29
      · exact absurd a n2
    have u54 : ¬v347 := by
      rcases c182 with a|a|a|a|a|a
      · exact absurd u51 a
      · exact a
      · exact absurd n0 a
      · exact absurd u44 a
      · exact absurd a u7
      · exact absurd a u38
    have u55 : v352 := by
      rcases c270 with a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd n0 a
      · exact absurd a u54
    have u56 : ¬v188 := by
      rcases c91 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u25 a
      · exact absurd u41 a
      · exact absurd u34 a
      · exact absurd a u32
    have u57 : v66 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u31 a
      · exact absurd u25 a
      · exact absurd a u42
      · exact absurd a u36
    have u58 : ¬v28 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd u57 a
      · exact a
      · exact absurd u27 a
      · exact absurd a u26
      · exact absurd a u36
      · exact absurd a u52
    have u59 : v233 := by
      rcases c151 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u8 a
      · exact absurd a u35
      · exact absurd u40 a
      · exact absurd u39 a
    have u60 : v18 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd a u26
      · exact absurd u49 a
      · exact absurd a u13
      · exact absurd a u36
    have u61 : ¬v67 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u49 a
      · exact absurd u55 a
      · exact absurd u60 a
      · exact absurd a u56
    have u62 : ¬v32 := by
      rcases c226 with a|a|a|a
      · exact absurd a u58
      · exact absurd u59 a
      · exact a
      · exact absurd a u61
    have u63 : v13 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u62
      · exact a
      · exact absurd u8 a
      · exact absurd a u58
      · exact absurd u59 a
      · exact absurd a u35
    have u64 : ¬v2 := by
      rcases c256 with a|a|a|a
      · exact absurd u63 a
      · exact absurd a u33
      · exact a
      · exact absurd a u6
    have u65 : ¬v97 := by
      rcases c3 with a|a|a|a|a|a
      · exact absurd a u33
      · exact absurd a u64
      · exact a
      · exact absurd u31 a
      · exact absurd a u6
      · exact absurd a u21
    have u66 : ¬v136 := by
      rcases c66 with a|a|a|a|a|a
      · exact absurd a u65
      · exact a
      · exact absurd u39 a
      · exact absurd a u21
      · exact absurd u44 a
      · exact absurd a u53
    have u67 : v137 := by
      rcases c126 with a|a|a|a|a|a
      · exact a
      · exact absurd a u66
      · exact absurd a u22
      · exact absurd u25 a
      · exact absurd a u36
      · exact absurd u41 a
    have u68 : v95 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u4 a
      · exact absurd u27 a
      · exact absurd a u53
      · exact absurd a u65
    have u69 : ¬v98 := by
      rcases c23 with a|a|a|a|a|a
      · exact a
      · exact absurd u68 a
      · exact absurd u17 a
      · exact absurd a u64
      · exact absurd u67 a
      · exact absurd a u37
    rcases c109 with a|a|a|a|a|a
    · exact absurd a u69
    · exact absurd u27 a
    · exact absurd a u65
    · exact absurd u40 a
    · exact absurd u59 a
    · exact absurd a u52
  have c564 : v355 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v271 := by
      rcases c413 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v266 := by
      rcases c428 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n1
    have u4 : v230 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u3
    have u5 : ¬v79 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v149 := by
      rcases c456 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : ¬v85 := by
      rcases c549 with a|a
      · exact absurd a u5
      · exact a
    have u9 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u8
    have u11 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : v86 := by
      rcases c483 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u10 a
    have u14 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v150 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd a u1
      · exact absurd a u12
      · exact absurd u4 a
      · exact a
      · exact absurd a u6
      · exact absurd a n1
    have u16 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd u13 a
      · exact a
    have u17 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u14 a
    have u18 : v142 := by
      rcases c545 with a|a
      · exact a
      · exact absurd a u16
    have u19 : ¬v7 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u17
    have u20 : v10 := by
      rcases c562 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v197 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u18 a
    have u22 : v64 := by
      rcases c275 with a|a|a|a
      · exact absurd a u19
      · exact absurd u14 a
      · exact a
      · exact absurd a u17
    have u23 : ¬v1 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u8
      · exact absurd a u17
    have u24 : v88 := by
      rcases c478 with a|a|a
      · exact absurd a u21
      · exact absurd a u16
      · exact a
    have u25 : ¬v153 := by
      rcases c528 with a|a
      · exact a
      · exact absurd a u21
    have u26 : v19 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u8
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd a u6
    have u27 : ¬v192 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u24 a
      · exact absurd a u8
      · exact absurd a u15
      · exact absurd a u25
    have u28 : v152 := by
      rcases c440 with a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd a u25
    have u29 : v191 := by
      rcases c157 with a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd u28 a
      · exact absurd a u25
      · exact absurd a u15
      · exact absurd a u21
    have u30 : ¬v346 := by
      rcases c563 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    have u31 : ¬v236 := by
      rcases c143 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u4 a
      · exact absurd a u15
      · exact absurd a u6
      · exact absurd u29 a
    have u32 : v136 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u8
      · exact absurd a u17
      · exact absurd a u6
      · exact absurd u29 a
    have u33 : ¬v70 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u22 a
      · exact absurd u26 a
      · exact absurd a u6
      · exact absurd u29 a
    have u34 : v21 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u20 a
      · exact absurd u29 a
      · exact absurd a u33
      · exact absurd a u16
    have u35 : v97 := by
      rcases c66 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u28 a
      · exact absurd a u16
      · exact absurd u29 a
      · exact absurd a u31
    have u36 : v13 := by
      rcases c4 with a|a|a|a|a|a
      · exact absurd u34 a
      · exact absurd a u23
      · exact a
      · exact absurd u28 a
      · exact absurd a u5
      · exact absurd a u16
    have u37 : ¬v2 := by
      rcases c256 with a|a|a|a
      · exact absurd u36 a
      · exact absurd a u23
      · exact a
      · exact absurd a u5
    rcases c3 with a|a|a|a|a|a
    · exact absurd a u23
    · exact absurd a u37
    · exact absurd u35 a
    · exact absurd u20 a
    · exact absurd a u5
    · exact absurd a u16
  have c565 : v345 := by
    by_contra hc
    have u1 : v355 := by
      rcases c564 with a|a
      · exact a
      · exact absurd a hc
    have u2 : ¬v235 := by
      rcases c530 with a|a
      · exact a
      · exact absurd a hc
    have u3 : v271 := by
      rcases c413 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v266 := by
      rcases c428 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a hc
    have u5 : v230 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u4
    have u6 : ¬v79 := by
      rcases c548 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v85 := by
      rcases c549 with a|a
      · exact absurd a u6
      · exact a
    have u8 : v135 := by
      rcases c485 with a|a
      · exact a
      · exact absurd a u7
    have u9 : ¬v190 := by
      rcases c532 with a|a
      · exact absurd u8 a
      · exact a
    have u10 : ¬v203 := by
      rcases c430 with a|a
      · exact a
      · exact absurd a u4
    have u11 : v204 := by
      rcases c431 with a|a
      · exact absurd a u4
      · exact a
    have u12 : ¬v185 := by
      rcases c445 with a|a
      · exact a
      · exact absurd u5 a
    have u13 : v149 := by
      rcases c456 with a|a
      · exact absurd u5 a
      · exact a
    have u14 : v361 := by
      rcases c547 with a|a|a
      · exact absurd a u6
      · exact absurd u1 a
      · exact a
    have u15 : v86 := by
      rcases c483 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u8 a
    have u16 : v8 := by
      rcases c515 with a|a
      · exact a
      · exact absurd u8 a
    have u17 : ¬v205 := by
      rcases c409 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u11 a
      · exact absurd a u2
    have u18 : ¬v150 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd a u2
      · exact absurd a u9
      · exact absurd u5 a
      · exact a
      · exact absurd a u12
      · exact absurd a hc
    have u19 : v159 := by
      rcases c167 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd a hc
    have u20 : v179 := by
      rcases c469 with a|a
      · exact a
      · exact absurd u13 a
    have u21 : ¬v87 := by
      rcases c482 with a|a
      · exact absurd u15 a
      · exact a
    have u22 : ¬v130 := by
      rcases c518 with a|a
      · exact a
      · exact absurd u16 a
    have u23 : ¬v84 := by
      rcases c466 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : v83 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u20 a
    have u25 : v194 := by
      rcases c511 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u21
    have u26 : v142 := by
      rcases c545 with a|a
      · exact a
      · exact absurd a u21
    have u27 : ¬v7 := by
      rcases c557 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u22
    have u28 : v94 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u12
    have u29 : v131 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u23
      · exact absurd u8 a
      · exact absurd u15 a
      · exact absurd a u7
    have u30 : ¬v124 := by
      rcases c306 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd u24 a
    have u31 : ¬v148 := by
      rcases c53 with a|a|a|a|a|a
      · exact absurd a u6
      · exact absurd u24 a
      · exact absurd u13 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
    have u32 : ¬v139 := by
      rcases c332 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u15 a
      · exact absurd a u21
    have u33 : v10 := by
      rcases c562 with a|a
      · exact a
      · exact absurd u26 a
    have u34 : ¬v197 := by
      rcases c556 with a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u26 a
    have u35 : v64 := by
      rcases c275 with a|a|a|a
      · exact absurd a u27
      · exact absurd u16 a
      · exact a
      · exact absurd a u22
    have u36 : ¬v1 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd u16 a
      · exact absurd a u23
      · exact absurd a u7
      · exact absurd a u22
    have u37 : ¬v9 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u8 a
      · exact absurd u16 a
      · exact absurd u29 a
      · exact absurd a u22
    have u38 : ¬v224 := by
      rcases c352 with a|a|a|a
      · exact absurd a u31
      · exact absurd u20 a
      · exact absurd u13 a
      · exact a
    have u39 : v349 := by
      rcases c125 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u32
      · exact absurd u8 a
      · exact absurd a hc
      · exact absurd u29 a
    have u40 : v88 := by
      rcases c478 with a|a|a
      · exact absurd a u34
      · exact absurd a u21
      · exact a
    have u41 : ¬v153 := by
      rcases c528 with a|a
      · exact a
      · exact absurd a u34
    have u42 : v19 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u7
      · exact absurd u35 a
      · exact absurd a u22
      · exact absurd a u12
    have u43 : ¬v69 := by
      rcases c28 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u35 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u22
      · exact absurd a hc
    have u44 : ¬v132 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd u33 a
      · exact absurd a u27
      · exact absurd a u23
      · exact absurd a u21
    have u45 : ¬v330 := by
      rcases c104 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u5 a
      · exact absurd a u38
      · exact absurd a u30
      · exact absurd u28 a
    have u46 : v202 := by
      rcases c522 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u38
    have u47 : ¬v11 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u26 a
      · exact absurd u40 a
      · exact absurd a u36
      · exact absurd a u21
    have u48 : ¬v192 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u40 a
      · exact absurd a u7
      · exact absurd a u18
      · exact absurd a u41
    have u49 : v152 := by
      rcases c440 with a|a|a
      · exact absurd a u34
      · exact a
      · exact absurd a u41
    have u50 : v242 := by
      rcases c525 with a|a|a
      · exact absurd a u41
      · exact absurd a u34
      · exact a
    have u51 : v73 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd u1 a
      · exact absurd u8 a
      · exact absurd a u37
      · exact absurd a u32
    have u52 : v133 := by
      rcases c89 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u40 a
      · exact absurd a u21
      · exact absurd u26 a
      · exact absurd a u23
    have u53 : v260 := by
      rcases c384 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u46 a
      · exact absurd a u38
    have u54 : ¬v76 := by
      rcases c296 with a|a|a|a
      · exact absurd a u47
      · exact a
      · exact absurd u26 a
      · exact absurd u33 a
    have u55 : ¬v151 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd u15 a
      · exact absurd u25 a
      · exact absurd a u6
      · exact absurd a u21
    have u56 : v191 := by
      rcases c157 with a|a|a|a|a|a
      · exact absurd a u48
      · exact a
      · exact absurd u49 a
      · exact absurd a u41
      · exact absurd a u18
      · exact absurd a u34
    have u57 : ¬v103 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u53 a
      · exact absurd a u22
      · exact absurd a u4
      · exact absurd a u45
    have u58 : v231 := by
      rcases c137 with a|a|a|a|a|a
      · exact absurd a u55
      · exact a
      · exact absurd a u18
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u2
    have u59 : v239 := by
      rcases c155 with a|a|a|a|a|a
      · exact absurd a u55
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd u25 a
    have u60 : ¬v145 := by
      rcases c133 with a|a|a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd a u18
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a u2
    have u61 : v236 := by
      rcases c154 with a|a|a|a|a|a
      · exact absurd u56 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u2
      · exact absurd a u18
    have u62 : v346 := by
      rcases c177 with a|a|a|a|a|a
      · exact absurd u56 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a hc
      · exact absurd a u12
    have u63 : ¬v272 := by
      rcases c170 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd u19 a
      · exact absurd a u9
    have u64 : ¬v136 := by
      rcases c93 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u1 a
      · exact absurd u25 a
      · exact absurd a u21
      · exact absurd a u32
    have u65 : ¬v240 := by
      rcases c161 with a|a|a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd u59 a
      · exact absurd u49 a
      · exact absurd u50 a
      · exact absurd a u41
    have u66 : v31 := by
      rcases c45 with a|a|a|a|a|a
      · exact absurd u51 a
      · exact absurd u14 a
      · exact a
      · exact absurd u59 a
      · exact absurd u50 a
      · exact absurd a u54
    have u67 : ¬v226 := by
      rcases c128 with a|a|a|a|a|a
      · exact absurd a u60
      · exact a
      · exact absurd u46 a
      · exact absurd a u31
      · exact absurd a u55
      · exact absurd a u17
    have u68 : ¬v331 := by
      rcases c558 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u60
      · exact absurd a u31
      · exact absurd u20 a
      · exact absurd u46 a
      · exact absurd a u10
      · exact absurd a u67
      · exact absurd a u45
    have u69 : v358 := by
      rcases c160 with a|a|a|a|a|a
      · exact absurd u61 a
      · exact absurd u56 a
      · exact a
      · exact absurd u49 a
      · exact absurd a u34
      · exact absurd u50 a
    have u70 : ¬v232 := by
      rcases c142 with a|a|a|a|a|a
      · exact absurd u61 a
      · exact a
      · exact absurd u5 a
      · exact absurd u49 a
      · exact absurd u13 a
      · exact absurd a u18
    have u71 : v206 := by
      rcases c251 with a|a|a|a
      · exact absurd a u63
      · exact a
      · exact absurd u61 a
      · exact absurd u11 a
    have u72 : ¬v237 := by
      rcases c158 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u50 a
      · exact absurd u49 a
      · exact absurd a u18
      · exact absurd a u41
    have u73 : v161 := by
      rcases c244 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u63
      · exact absurd u56 a
    have u74 : v137 := by
      rcases c126 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd a u22
      · exact absurd u26 a
      · exact absurd a u44
      · exact absurd u52 a
    have u75 : v70 := by
      rcases c15 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u16 a
      · exact absurd a u64
      · exact absurd a u7
      · exact absurd u56 a
    have u76 : ¬v356 := by
      rcases c210 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd u59 a
      · exact absurd a u65
    have u77 : v273 := by
      rcases c197 with a|a|a|a|a|a
      · exact a
      · exact absurd a u76
      · exact absurd a u2
      · exact absurd u3 a
      · exact absurd u11 a
      · exact absurd a u72
    have u78 : v233 := by
      rcases c145 with a|a|a|a|a|a
      · exact absurd a u72
      · exact a
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u18
      · exact absurd a u41
    have u79 : v278 := by
      rcases c135 with a|a|a|a|a|a
      · exact a
      · exact absurd u71 a
      · exact absurd u50 a
      · exact absurd u49 a
      · exact absurd a u34
      · exact absurd u73 a
    have u80 : ¬v347 := by
      rcases c88 with a|a|a|a|a|a
      · exact absurd u74 a
      · exact a
      · exact absurd a u7
      · exact absurd a u22
      · exact absurd a u12
      · exact absurd a u48
    have u81 : v98 := by
      rcases c68 with a|a|a|a|a|a
      · exact absurd a u72
      · exact a
      · exact absurd u40 a
      · exact absurd a u41
      · exact absurd a u48
      · exact absurd u74 a
    have u82 : ¬v71 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd u75 a
      · exact absurd u33 a
      · exact absurd u16 a
      · exact absurd a u47
      · exact absurd a u54
    have u83 : v352 := by
      rcases c270 with a|a|a|a
      · exact a
      · exact absurd u69 a
      · exact absurd u62 a
      · exact absurd a u80
    have u84 : ¬v32 := by
      rcases c44 with a|a|a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd a u54
      · exact absurd u69 a
      · exact absurd a u72
      · exact absurd a u82
    have u85 : ¬v188 := by
      rcases c91 with a|a|a|a|a|a
      · exact a
      · exact absurd u83 a
      · exact absurd u26 a
      · exact absurd u52 a
      · exact absurd u40 a
      · exact absurd a u34
    have u86 : v187 := by
      rcases c90 with a|a|a|a|a|a
      · exact absurd u83 a
      · exact a
      · exact absurd a u21
      · exact absurd u26 a
      · exact absurd a u44
      · exact absurd a u34
    have u87 : v269 := by
      rcases c217 with a|a|a|a|a|a
      · exact a
      · exact absurd u79 a
      · exact absurd u83 a
      · exact absurd u77 a
      · exact absurd u69 a
      · exact absurd a u80
    have u88 : v66 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd u83 a
      · exact absurd u33 a
      · exact absurd u26 a
      · exact absurd a u54
      · exact absurd a u44
    have u89 : ¬v186 := by
      rcases c147 with a|a|a|a|a|a
      · exact absurd u39 a
      · exact absurd u86 a
      · exact a
      · exact absurd u58 a
      · exact absurd u13 a
      · exact absurd a u70
    have u90 : v158 := by
      rcases c76 with a|a|a|a|a|a
      · exact a
      · exact absurd u87 a
      · exact absurd a u23
      · exact absurd a u57
      · exact absurd u52 a
      · exact absurd a u85
    have u91 : ¬v28 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd u88 a
      · exact a
      · exact absurd u28 a
      · exact absurd a u27
      · exact absurd a u44
      · exact absurd a u70
    have u92 : ¬v267 := by
      rcases c165 with a|a|a|a|a|a
      · exact absurd a u68
      · exact absurd u20 a
      · exact a
      · exact absurd u53 a
      · exact absurd a u89
      · exact absurd u90 a
    have u93 : v13 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u84
      · exact a
      · exact absurd u13 a
      · exact absurd a u91
      · exact absurd u78 a
      · exact absurd a u41
    have u94 : v160 := by
      rcases c169 with a|a|a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd u3 a
      · exact absurd a u92
      · exact absurd a u89
      · exact absurd a hc
    have u95 : ¬v2 := by
      rcases c256 with a|a|a|a
      · exact absurd u93 a
      · exact absurd a u36
      · exact a
      · exact absurd a u6
    have u96 : v80 := by
      rcases c79 with a|a|a|a|a|a
      · exact absurd u73 a
      · exact absurd u94 a
      · exact absurd u25 a
      · exact absurd u15 a
      · exact a
      · exact absurd a u21
    have u97 : ¬v95 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u81 a
      · exact a
      · exact absurd u16 a
      · exact absurd a u95
      · exact absurd u74 a
      · exact absurd a u47
    have u98 : v29 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd u66 a
      · exact absurd u33 a
      · exact absurd u16 a
      · exact absurd a u95
      · exact absurd u75 a
    have u99 : ¬v90 := by
      rcases c260 with a|a|a|a
      · exact absurd u96 a
      · exact a
      · exact absurd a u6
      · exact absurd a u60
    have u100 : v3 := by
      rcases c1 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a u99
      · exact absurd a u95
      · exact absurd a u6
      · exact absurd u96 a
    have u101 : v24 := by
      rcases c18 with a|a|a|a|a|a
      · exact a
      · exact absurd a u99
      · exact absurd u11 a
      · exact absurd a u95
      · exact absurd u98 a
      · exact absurd a u97
    rcases c258 with a|a|a|a
    · exact absurd u101 a
    · exact absurd u100 a
    · exact absurd a u95
    · exact absurd a u99
  have c566 : ¬v346 ∨ ¬v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v345 := c565
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v361 := by
      rcases c555 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v79 := by
      rcases c549 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u11 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u6
    have u12 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u6
    have u13 : ¬v230 := by
      rcases c548 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u10 a
    have u16 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u15
    have u17 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v139 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd u11 a
    have u19 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u11 a
      · exact absurd a u17
      · exact a
    have u20 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u9 a
      · exact absurd a u13
    have u21 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u14
    have u22 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u11 a
      · exact a
    have u23 : v11 := by
      rcases c495 with a|a
      · exact a
      · exact absurd a u19
    have u24 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u21
    have u25 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u22 a
    have u26 : ¬v10 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u19
    have u27 : v1 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact absurd a u5
    have u28 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u3
    have u29 : ¬v242 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u22 a
    have u30 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u25
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd u20 a
    have u31 : v132 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u24 a
      · exact absurd u11 a
      · exact absurd a u26
      · exact absurd u16 a
    have u32 : v236 := by
      rcases c144 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u30
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd u20 a
    have u33 : ¬v349 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd u31 a
      · exact absurd u10 a
      · exact absurd a u28
    have u34 : ¬v358 := by
      rcases c184 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u7
      · exact absurd u22 a
      · exact absurd a u12
      · exact absurd a u30
    have u35 : ¬v239 := by
      rcases c533 with a|a|a|a|a
      · exact absurd a u33
      · exact absurd u18 a
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    rcases c212 with a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd a u35
    · exact absurd n1 a
    · exact absurd a u29
    · exact absurd a u34
    · exact absurd a u7
  have c567 : ¬v335 := by
    by_contra hc
    have u1 : v345 := c565
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : v79 := by
      rcases c549 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u10 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u6
    have u11 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u6
    have u12 : ¬v230 := by
      rcases c548 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u10 a
      · exact a
    have u15 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u10 a
      · exact absurd a u14
      · exact a
    have u16 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u1 a
    have u17 : v266 := by
      rcases c475 with a|a
      · exact absurd a u12
      · exact a
    have u18 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u8 a
      · exact absurd a u12
    have u19 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u13
    have u20 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u10 a
      · exact a
    have u21 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u17 a
    have u22 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u19
    have u23 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u20 a
    have u24 : ¬v204 := by
      rcases c398 with a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u17 a
      · exact absurd u21 a
    have u25 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u21 a
    have u26 : ¬v94 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u22 a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a u12
    have u27 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u19
    have u28 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u23
      · exact absurd u4 a
      · exact absurd u7 a
      · exact absurd u18 a
    have u29 : ¬v271 := by
      rcases c538 with a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u16 a
    have u30 : ¬v202 := by
      rcases c417 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u25
    have u31 : v330 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u27 a
      · exact absurd u8 a
      · exact absurd a u19
      · exact absurd u22 a
    have u32 : v151 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u23
      · exact absurd u18 a
      · exact absurd a u11
      · exact absurd a u28
    have u33 : v205 := by
      rcases c403 with a|a|a|a
      · exact absurd a u29
      · exact absurd u16 a
      · exact absurd a u24
      · exact a
    have u34 : v224 := by
      rcases c382 with a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd u21 a
      · exact absurd a u25
    have u35 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a u13
      · exact absurd u18 a
      · exact absurd u16 a
      · exact absurd a u12
    have u36 : v145 := by
      rcases c134 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact a
      · exact absurd u32 a
      · exact absurd u16 a
      · exact absurd u18 a
      · exact absurd a u24
    have u37 : v148 := by
      rcases c507 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u34 a
    have u38 : v125 := by
      rcases c120 with a|a|a|a|a|a
      · exact absurd hc a
      · exact a
      · exact absurd u31 a
      · exact absurd u1 a
      · exact absurd u9 a
      · exact absurd a u3
    have u39 : v90 := by
      rcases c537 with a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd u32 a
      · exact absurd a u35
      · exact absurd hc a
    have u40 : v95 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u18 a
      · exact absurd u7 a
      · exact absurd u36 a
      · exact absurd a u24
    have u41 : v93 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u37 a
      · exact absurd u7 a
      · exact absurd u36 a
      · exact absurd a u30
    rcases c103 with a|a|a|a|a|a
    · exact absurd u38 a
    · exact absurd u41 a
    · exact absurd u9 a
    · exact absurd u27 a
    · exact absurd u40 a
    · exact absurd a u26
  have c569 : v339 ∨ ¬v349 ∨ ¬v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v345 := c565
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u8 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u6 a
      · exact a
    have u9 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u8
    have u10 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u9
    have u11 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u9
    have u12 : v330 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact absurd u6 a
      · exact absurd a u9
      · exact absurd u10 a
    have u13 : ¬v335 := c567
    have u14 : v331 := by
      rcases c263 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u1 a
      · exact absurd u12 a
    have u15 : ¬v346 := by
      rcases c566 with a|a
      · exact a
      · exact absurd n2 a
    have u16 : v332 := by
      rcases c265 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u14 a
      · exact absurd n1 a
    have u17 : v336 := by
      rcases c218 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a u15
    rcases c255 with a|a|a|a
    · exact absurd u17 a
    · exact absurd a n0
    · exact absurd a u13
    · exact absurd n2 a
  have c570 : v346 ∨ ¬v355 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v345 := c565
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : v79 := by
      rcases c549 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u10 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u6
    have u11 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u6
    have u12 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u9 a
    have u14 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a u13
    have u15 : v139 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u6
      · exact absurd u10 a
    have u16 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u12
    have u17 : ¬v19 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u4 a
      · exact absurd u9 a
      · exact absurd a u5
      · exact absurd a u13
    have u18 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u16
    have u19 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u16
    have u20 : v1 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u4 a
      · exact absurd u9 a
      · exact absurd u14 a
      · exact absurd a u5
    have u21 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u4 a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u3
    have u22 : v330 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u19 a
      · exact absurd u8 a
      · exact absurd a u16
      · exact absurd u18 a
    have u23 : ¬v335 := c567
    have u24 : v331 := by
      rcases c263 with a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u1 a
      · exact absurd u22 a
    have u25 : ¬v339 := by
      rcases c510 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd u20 a
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd a u6
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd u15 a
      · exact absurd u2 a
      · exact absurd a u11
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u26 : v349 := by
      rcases c268 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
    rcases c569 with a|a|a
    · exact absurd a u25
    · exact absurd u26 a
    · exact absurd n1 a
  have c571 : v346 := by
    by_contra hc
    have u1 : v345 := c565
    have u2 : v190 := by
      rcases c531 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v135 := by
      rcases c532 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : v85 := by
      rcases c485 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v8 := by
      rcases c500 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v86 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u2 a
      · exact absurd u4 a
    have u7 : ¬v361 := by
      rcases c555 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : v79 := by
      rcases c549 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v185 := by
      rcases c501 with a|a
      · exact a
      · exact absurd u4 a
    have u10 : v130 := by
      rcases c498 with a|a
      · exact absurd a u5
      · exact a
    have u11 : v87 := by
      rcases c491 with a|a
      · exact a
      · exact absurd a u6
    have u12 : ¬v194 := by
      rcases c550 with a|a
      · exact a
      · exact absurd a u6
    have u13 : ¬v230 := by
      rcases c548 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : ¬v149 := by
      rcases c464 with a|a
      · exact absurd u9 a
      · exact a
    have u15 : ¬v64 := by
      rcases c502 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u10 a
    have u16 : v7 := by
      rcases c272 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u15
    have u17 : ¬v88 := by
      rcases c471 with a|a
      · exact absurd u11 a
      · exact a
    have u18 : v139 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u6
      · exact absurd u11 a
    have u19 : ¬v142 := by
      rcases c489 with a|a|a
      · exact absurd u11 a
      · exact absurd a u17
      · exact a
    have u20 : v235 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u1 a
    have u21 : v266 := by
      rcases c475 with a|a
      · exact absurd a u13
      · exact a
    have u22 : v150 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u9 a
      · exact absurd a u13
    have u23 : ¬v179 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a u14
    have u24 : v69 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u15
      · exact absurd a u5
      · exact absurd u10 a
      · exact absurd a u3
    have u25 : v197 := by
      rcases c343 with a|a|a|a
      · exact absurd a u19
      · exact absurd a u17
      · exact absurd u11 a
      · exact a
    have u26 : v11 := by
      rcases c495 with a|a
      · exact a
      · exact absurd a u19
    have u27 : v203 := by
      rcases c425 with a|a
      · exact a
      · exact absurd u21 a
    have u28 : v84 := by
      rcases c455 with a|a
      · exact a
      · exact absurd a u23
    have u29 : ¬v152 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u25 a
    have u30 : ¬v10 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u19
    have u31 : ¬v204 := by
      rcases c398 with a|a|a|a
      · exact absurd a u13
      · exact a
      · exact absurd u21 a
      · exact absurd u27 a
    have u32 : ¬v260 := by
      rcases c434 with a|a
      · exact a
      · exact absurd u27 a
    have u33 : v124 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u23
    have u34 : v1 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact absurd a u5
    have u35 : ¬v131 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact absurd a u6
      · exact absurd a u3
    have u36 : ¬v242 := by
      rcases c539 with a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u25 a
    have u37 : v153 := by
      rcases c72 with a|a|a|a|a|a
      · exact absurd a u17
      · exact absurd u8 a
      · exact a
      · exact absurd a u29
      · exact absurd u11 a
      · exact absurd u25 a
    have u38 : ¬v191 := by
      rcases c63 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u29
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd u22 a
    have u39 : v76 := by
      rcases c293 with a|a|a|a
      · exact absurd a u30
      · exact absurd u26 a
      · exact absurd a u19
      · exact a
    have u40 : ¬v271 := by
      rcases c538 with a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u20 a
    have u41 : v330 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u33 a
      · exact absurd u9 a
      · exact absurd a u23
      · exact absurd u28 a
    have u42 : v151 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u29
      · exact absurd u22 a
      · exact absurd a u12
      · exact absurd a u38
    have u43 : v192 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u4 a
      · exact absurd u25 a
      · exact absurd u11 a
      · exact absurd a u17
    have u44 : v205 := by
      rcases c403 with a|a|a|a
      · exact absurd a u40
      · exact absurd u20 a
      · exact absurd a u31
      · exact a
    have u45 : ¬v231 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd a u14
      · exact absurd u22 a
      · exact absurd u20 a
      · exact absurd a u13
    have u46 : ¬v96 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd a u6
      · exact absurd u20 a
      · exact absurd u2 a
      · exact absurd a u3
    have u47 : v145 := by
      rcases c134 with a|a|a|a|a|a
      · exact absurd u44 a
      · exact a
      · exact absurd u42 a
      · exact absurd u20 a
      · exact absurd u22 a
      · exact absurd a u31
    have u48 : ¬v335 := c567
    have u49 : v331 := by
      rcases c263 with a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u1 a
      · exact absurd u41 a
    have u50 : v267 := by
      rcases c213 with a|a|a|a|a|a
      · exact absurd u49 a
      · exact absurd u1 a
      · exact absurd u41 a
      · exact a
      · exact absurd u21 a
      · exact absurd a u32
    have u51 : v186 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd a u23
      · exact absurd u1 a
      · exact absurd u9 a
      · exact absurd u41 a
    have u52 : v105 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u40
      · exact absurd u50 a
      · exact absurd a u3
      · exact absurd a u35
    have u53 : ¬v160 := by
      rcases c132 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u50 a
      · exact absurd u51 a
      · exact absurd u42 a
      · exact absurd a u45
    have u54 : ¬v80 := by
      rcases c228 with a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd a u6
      · exact absurd a u53
    have u55 : v90 := by
      rcases c261 with a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u8 a
      · exact absurd u47 a
    have u56 : v95 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u22 a
      · exact absurd u8 a
      · exact absurd u47 a
      · exact absurd a u31
    have u57 : ¬v355 := by
      rcases c570 with a|a
      · exact absurd a hc
      · exact a
    have u58 : ¬v236 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd a hc
      · exact absurd u1 a
      · exact absurd u20 a
      · exact absurd a u13
    have u59 : ¬v70 := by
      rcases c46 with a|a|a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd u24 a
      · exact absurd u1 a
      · exact absurd a hc
      · exact absurd a u15
    have u60 : ¬v239 := by
      rcases c111 with a|a|a|a|a|a
      · exact absurd a u57
      · exact absurd a u46
      · exact a
      · exact absurd u20 a
      · exact absurd a u3
      · exact absurd u18 a
    have u61 : v356 := by
      rcases c551 with a|a|a|a|a|a
      · exact absurd a u57
      · exact absurd u4 a
      · exact absurd u22 a
      · exact absurd a u38
      · exact absurd u20 a
      · exact a
    have u62 : ¬v358 := by
      rcases c211 with a|a|a|a|a|a
      · exact a
      · exact absurd a u58
      · exact absurd a u7
      · exact absurd a u36
      · exact absurd a u57
      · exact absurd a u60
    have u63 : v237 := by
      rcases c159 with a|a|a|a|a|a
      · exact a
      · exact absurd a u58
      · exact absurd u22 a
      · exact absurd a u38
      · exact absurd u43 a
      · exact absurd a u62
    have u64 : v97 := by
      rcases c110 with a|a|a|a|a|a
      · exact absurd u56 a
      · exact absurd a u58
      · exact a
      · exact absurd u20 a
      · exact absurd a u46
      · exact absurd a u60
    have u65 : v71 := by
      rcases c34 with a|a|a|a|a|a
      · exact a
      · exact absurd a u59
      · exact absurd a u5
      · exact absurd a u30
      · exact absurd u26 a
      · exact absurd u39 a
    have u66 : ¬v31 := by
      rcases c42 with a|a|a|a|a|a
      · exact a
      · exact absurd a u58
      · exact absurd u39 a
      · exact absurd a u62
      · exact absurd a u36
      · exact absurd a u59
    have u67 : v347 := by
      rcases c181 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd u9 a
      · exact absurd u43 a
    have u68 : ¬v233 := by
      rcases c146 with a|a|a|a|a|a
      · exact a
      · exact absurd u63 a
      · exact absurd u37 a
      · exact absurd u22 a
      · exact absurd a u14
      · exact absurd a u13
    have u69 : ¬v2 := by
      rcases c536 with a|a|a|a|a|a|a
      · exact absurd u50 a
      · exact a
      · exact absurd a u66
      · exact absurd u64 a
      · exact absurd u42 a
      · exact absurd u51 a
      · exact absurd u1 a
    have u70 : v32 := by
      rcases c43 with a|a|a|a|a|a
      · exact a
      · exact absurd u63 a
      · exact absurd u39 a
      · exact absurd u65 a
      · exact absurd a u36
      · exact absurd a u62
    have u71 : ¬v352 := by
      rcases c269 with a|a|a|a
      · exact absurd u67 a
      · exact absurd a hc
      · exact a
      · exact absurd a u62
    have u72 : v13 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u69
      · exact absurd u8 a
      · exact absurd u34 a
    have u73 : ¬v28 := by
      rcases c37 with a|a|a|a|a|a
      · exact a
      · exact absurd u70 a
      · exact absurd u37 a
      · exact absurd u72 a
      · exact absurd a u14
      · exact absurd a u68
    have u74 : v67 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd u39 a
      · exact absurd u67 a
      · exact absurd u65 a
      · exact absurd a u62
    rcases c21 with a|a|a|a|a|a
    · exact absurd u74 a
    · exact absurd a u73
    · exact absurd u26 a
    · exact absurd u16 a
    · exact absurd a u69
    · exact absurd u70 a
  have u1 : v345 := c565
  have u2 : v190 := by
    rcases c531 with a|a
    · exact absurd u1 a
    · exact a
  have u3 : ¬v135 := by
    rcases c532 with a|a
    · exact a
    · exact absurd u2 a
  have u4 : v85 := by
    rcases c485 with a|a
    · exact absurd a u3
    · exact a
  have u5 : ¬v86 := by
    rcases c322 with a|a|a|a
    · exact a
    · exact absurd a u3
    · exact absurd u2 a
    · exact absurd u4 a
  have u6 : v79 := by
    rcases c549 with a|a
    · exact a
    · exact absurd u4 a
  have u7 : v185 := by
    rcases c501 with a|a
    · exact a
    · exact absurd u4 a
  have u8 : v87 := by
    rcases c491 with a|a
    · exact a
    · exact absurd a u5
  have u9 : ¬v230 := by
    rcases c548 with a|a
    · exact absurd u6 a
    · exact a
  have u10 : ¬v149 := by
    rcases c464 with a|a
    · exact absurd u7 a
    · exact a
  have u11 : ¬v88 := by
    rcases c471 with a|a
    · exact absurd u8 a
    · exact a
  have u12 : ¬v142 := by
    rcases c489 with a|a|a
    · exact absurd u8 a
    · exact absurd a u11
    · exact a
  have u13 : v150 := by
    rcases c359 with a|a|a|a
    · exact a
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u9
  have u14 : v197 := by
    rcases c343 with a|a|a|a
    · exact absurd a u12
    · exact absurd a u11
    · exact absurd u8 a
    · exact a
  have u15 : ¬v152 := by
    rcases c509 with a|a
    · exact a
    · exact absurd u14 a
  have u16 : ¬v191 := by
    rcases c63 with a|a|a|a|a|a
    · exact a
    · exact absurd u8 a
    · exact absurd a u15
    · exact absurd u4 a
    · exact absurd u6 a
    · exact absurd u13 a
  have u17 : v346 := c571
  have u18 : v355 := by
    rcases c178 with a|a|a|a|a|a
    · exact absurd u17 a
    · exact a
    · exact absurd u2 a
    · exact absurd a u16
    · exact absurd u7 a
    · exact absurd u1 a
  rcases c566 with a|a
  · exact absurd u17 a
  · exact absurd u18 a
