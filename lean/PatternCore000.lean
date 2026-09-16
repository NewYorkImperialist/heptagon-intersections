import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 589-clause unsatisfiable core of forbidden pattern 0, contradictory.
189 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem pcore000_false
    (v145 v146 v147 v148 v149 v150 v151 v153 v154 v155 v158 v159 v160 v161 v162 v163 v164 v165 v166 v167 v169 v170 v171 v174 v185 v186 v187 v188 v189 v190 v191 v192 v193 v195 v197 v199 v200 v201 v202 v203 v204 v205 v206 v207 v208 v209 v210 v211 v212 v213 v214 v215 v216 v217 v218 v219 v220 v221 v222 v223 v224 v225 v226 v227 v229 v230 v231 v233 v234 v235 v236 v237 v238 v239 v240 v241 v242 v243 v244 v245 v246 v247 v248 v249 v250 v251 v252 v253 v254 v255 v256 v257 v258 v259 v260 v261 v265 v266 v267 v271 v272 v273 v274 v275 v276 v277 v278 v279 v280 v281 v282 v283 v284 v285 v286 v287 v288 v289 v290 v291 v293 v294 v295 v297 v299 v300 v301 v302 v303 v304 v305 v306 v307 v308 v309 v310 v311 v315 v316 v320 v321 v322 v323 v324 v325 v326 v327 v328 v329 v330 v331 v335 v338 v339 v341 v343 v345 v346 v347 v348 v349 v350 v352 v354 v355 v356 v357 v358 v360 v361 v362 v363 v364 : Prop)
    (c1 : ¬v147 ∨ v201 ∨ ¬v209 ∨ ¬v200 ∨ ¬v145 ∨ ¬v146)
    (c2 : v147 ∨ v146 ∨ v145 ∨ ¬v201 ∨ v200 ∨ v209)
    (c3 : v146 ∨ v164 ∨ ¬v209 ∨ ¬v245 ∨ ¬v200 ∨ ¬v155)
    (c4 : v164 ∨ v200 ∨ v146 ∨ ¬v155 ∨ v209 ∨ v245)
    (c5 : v146 ∨ ¬v149 ∨ ¬v200 ∨ ¬v211 ∨ ¬v145 ∨ ¬v203)
    (c6 : v158 ∨ ¬v155 ∨ ¬v200 ∨ ¬v145 ∨ ¬v203 ∨ v247)
    (c7 : ¬v166 ∨ v146 ∨ ¬v200 ∨ v211 ∨ ¬v155 ∨ v247)
    (c8 : ¬v167 ∨ ¬v146 ∨ ¬v150 ∨ ¬v159 ∨ v145 ∨ v155)
    (c9 : v167 ∨ v159 ∨ ¬v145 ∨ v146 ∨ v150 ∨ ¬v155)
    (c10 : ¬v212 ∨ v146 ∨ v145 ∨ ¬v150 ∨ v200 ∨ v204)
    (c11 : ¬v213 ∨ ¬v151 ∨ ¬v200 ∨ ¬v146 ∨ ¬v145 ∨ v205)
    (c12 : ¬v160 ∨ ¬v155 ∨ ¬v249 ∨ ¬v200 ∨ ¬v145 ∨ v205)
    (c13 : v161 ∨ ¬v155 ∨ ¬v206 ∨ ¬v200 ∨ ¬v145 ∨ v250)
    (c14 : ¬v153 ∨ ¬v215 ∨ ¬v200 ∨ ¬v146 ∨ ¬v145 ∨ v207)
    (c15 : v155 ∨ v162 ∨ ¬v207 ∨ v145 ∨ v200 ∨ v251)
    (c16 : ¬v162 ∨ v207 ∨ ¬v251 ∨ ¬v200 ∨ ¬v145 ∨ ¬v155)
    (c17 : v154 ∨ ¬v146 ∨ v216 ∨ ¬v208 ∨ ¬v200 ∨ ¬v145)
    (c18 : ¬v216 ∨ ¬v154 ∨ v145 ∨ v146 ∨ v200 ∨ v208)
    (c19 : v163 ∨ ¬v155 ∨ ¬v208 ∨ ¬v200 ∨ ¬v145 ∨ v252)
    (c20 : ¬v148 ∨ v224 ∨ ¬v149 ∨ ¬v145 ∨ v202 ∨ ¬v203)
    (c21 : v148 ∨ v154 ∨ ¬v208 ∨ ¬v229 ∨ ¬v145 ∨ v202)
    (c22 : ¬v145 ∨ v203 ∨ v149 ∨ ¬v150 ∨ v204 ∨ v230)
    (c23 : ¬v230 ∨ ¬v149 ∨ v145 ∨ ¬v203 ∨ ¬v204 ∨ v150)
    (c24 : ¬v266 ∨ ¬v159 ∨ ¬v230 ∨ ¬v204 ∨ v150 ∨ v185)
    (c25 : ¬v188 ∨ ¬v153 ∨ ¬v158 ∨ ¬v149 ∨ ¬v145 ∨ v162)
    (c26 : ¬v233 ∨ ¬v153 ∨ ¬v149 ∨ ¬v203 ∨ ¬v145 ∨ v207)
    (c27 : ¬v189 ∨ ¬v154 ∨ v145 ∨ v149 ∨ v158 ∨ v163)
    (c28 : v234 ∨ v154 ∨ ¬v208 ∨ ¬v149 ∨ ¬v203 ∨ ¬v145)
    (c29 : ¬v234 ∨ ¬v154 ∨ v145 ∨ v149 ∨ v203 ∨ v208)
    (c30 : v151 ∨ ¬v145 ∨ v150 ∨ ¬v204 ∨ v205 ∨ v235)
    (c31 : ¬v151 ∨ ¬v150 ∨ ¬v204 ∨ v145 ∨ v205 ∨ v235)
    (c32 : ¬v190 ∨ ¬v271 ∨ ¬v150 ∨ ¬v159 ∨ ¬v204 ∨ v235)
    (c33 : ¬v192 ∨ v153 ∨ ¬v159 ∨ ¬v150 ∨ v145 ∨ ¬v162)
    (c34 : v192 ∨ ¬v153 ∨ v150 ∨ v162 ∨ ¬v145 ∨ v159)
    (c35 : ¬v193 ∨ v154 ∨ ¬v145 ∨ v150 ∨ ¬v163 ∨ v159)
    (c36 : v154 ∨ v153 ∨ ¬v244 ∨ ¬v208 ∨ ¬v145 ∨ v207)
    (c37 : ¬v154 ∨ v145 ∨ ¬v207 ∨ ¬v153 ∨ v208 ∨ v244)
    (c38 : ¬v216 ∨ v164 ∨ ¬v287 ∨ ¬v146 ∨ v171 ∨ v209)
    (c39 : ¬v294 ∨ v166 ∨ ¬v149 ∨ ¬v230 ∨ v185 ∨ v211)
    (c40 : ¬v189 ∨ ¬v171 ∨ ¬v166 ∨ ¬v154 ∨ ¬v146 ∨ v149)
    (c41 : v212 ∨ v213 ∨ ¬v151 ∨ v150 ∨ ¬v146 ∨ v235)
    (c42 : ¬v153 ∨ ¬v170 ∨ ¬v146 ∨ ¬v192 ∨ ¬v167 ∨ v150)
    (c43 : v301 ∨ v237 ∨ ¬v212 ∨ v150 ∨ ¬v192 ∨ ¬v167)
    (c44 : ¬v171 ∨ v193 ∨ ¬v150 ∨ ¬v154 ∨ ¬v146 ∨ v167)
    (c45 : ¬v154 ∨ v146 ∨ ¬v150 ∨ ¬v216 ∨ ¬v238 ∨ v212)
    (c46 : ¬v171 ∨ ¬v216 ∨ ¬v244 ∨ ¬v308 ∨ v154 ∨ v199)
    (c47 : ¬v148 ∨ ¬v154 ∨ ¬v150 ∨ ¬v238 ∨ ¬v225 ∨ v229)
    (c48 : ¬v151 ∨ ¬v235 ∨ ¬v230 ∨ ¬v231 ∨ ¬v149 ∨ v150)
    (c49 : ¬v231 ∨ ¬v150 ∨ ¬v235 ∨ ¬v151 ∨ v149 ∨ v230)
    (c50 : ¬v190 ∨ ¬v235 ∨ v150 ∨ ¬v230 ∨ v185 ∨ v345)
    (c51 : v345 ∨ ¬v190 ∨ ¬v185 ∨ ¬v150 ∨ v230 ∨ ¬v235)
    (c52 : v188 ∨ v347 ∨ ¬v149 ∨ ¬v230 ∨ v185 ∨ v233)
    (c53 : ¬v234 ∨ ¬v154 ∨ ¬v150 ∨ ¬v238 ∨ v149 ∨ v230)
    (c54 : v189 ∨ v348 ∨ v149 ∨ v230 ∨ ¬v185 ∨ v234)
    (c55 : ¬v354 ∨ v188 ∨ ¬v244 ∨ ¬v153 ∨ v199 ∨ v233)
    (c56 : v189 ∨ v354 ∨ ¬v154 ∨ v244 ∨ v234 ∨ ¬v199)
    (c57 : ¬v238 ∨ ¬v154 ∨ ¬v150 ∨ ¬v153 ∨ v237 ∨ v244)
    (c58 : v195 ∨ ¬v363 ∨ v240 ∨ ¬v244 ∨ v199 ∨ ¬v153)
    (c59 : v165 ∨ v166 ∨ ¬v247 ∨ v155 ∨ v246 ∨ v288)
    (c60 : ¬v158 ∨ v155 ∨ ¬v247 ∨ ¬v159 ∨ v248 ∨ v266)
    (c61 : v301 ∨ v167 ∨ ¬v248 ∨ ¬v192 ∨ v159 ∨ ¬v273)
    (c62 : ¬v163 ∨ v155 ∨ ¬v252 ∨ ¬v274 ∨ ¬v159 ∨ v248)
    (c63 : v170 ∨ v171 ∨ ¬v252 ∨ v155 ∨ v251 ∨ v308)
    (c64 : v170 ∨ v199 ∨ v162 ∨ ¬v308 ∨ ¬v251 ∨ v280)
    (c65 : ¬v171 ∨ v199 ∨ ¬v308 ∨ ¬v163 ∨ v252 ∨ v280)
    (c66 : ¬v186 ∨ v160 ∨ ¬v190 ∨ ¬v158 ∨ v159 ∨ v185)
    (c67 : v159 ∨ v190 ∨ ¬v185 ∨ v266 ∨ v271 ∨ v345)
    (c68 : ¬v346 ∨ v191 ∨ ¬v266 ∨ v185 ∨ v159 ∨ v272)
    (c69 : v347 ∨ ¬v192 ∨ ¬v273 ∨ ¬v266 ∨ v185 ∨ v159)
    (c70 : ¬v347 ∨ v192 ∨ ¬v185 ∨ ¬v159 ∨ v266 ∨ v273)
    (c71 : v193 ∨ ¬v348 ∨ ¬v266 ∨ v185 ∨ v159 ∨ v274)
    (c72 : v187 ∨ ¬v197 ∨ ¬v158 ∨ v162 ∨ ¬v161 ∨ v188)
    (c73 : v197 ∨ ¬v364 ∨ v162 ∨ ¬v278 ∨ v199 ∨ v280)
    (c74 : ¬v174 ∨ v320 ∨ ¬v167 ∨ ¬v190 ∨ v283 ∨ ¬v299)
    (c75 : v322 ∨ v301 ∨ v174 ∨ v283 ∨ ¬v167 ∨ ¬v192)
    (c76 : v193 ∨ ¬v323 ∨ ¬v302 ∨ v174 ∨ ¬v167 ∨ v283)
    (c77 : v352 ∨ v297 ∨ ¬v170 ∨ v188 ∨ v306 ∨ ¬v197)
    (c78 : ¬v191 ∨ ¬v192 ∨ v169 ∨ ¬v197 ∨ ¬v167 ∨ ¬v170)
    (c79 : ¬v169 ∨ v307 ∨ ¬v308 ∨ ¬v170 ∨ v306 ∨ v171)
    (c80 : v348 ∨ ¬v193 ∨ ¬v185 ∨ v347 ∨ v192 ∨ v360)
    (c81 : ¬v350 ∨ ¬v187 ∨ ¬v349 ∨ ¬v352 ∨ v186 ∨ v188)
    (c82 : ¬v254 ∨ ¬v201 ∨ ¬v203 ∨ ¬v245 ∨ ¬v200 ∨ v247)
    (c83 : v211 ∨ v200 ∨ ¬v247 ∨ v209 ∨ v245 ∨ v282)
    (c84 : ¬v245 ∨ ¬v211 ∨ ¬v282 ∨ ¬v209 ∨ ¬v200 ∨ v247)
    (c85 : v245 ∨ ¬v209 ∨ ¬v200 ∨ v211 ∨ ¬v282 ∨ v247)
    (c86 : v219 ∨ ¬v201 ∨ ¬v204 ∨ ¬v200 ∨ ¬v212 ∨ v209)
    (c87 : v212 ∨ ¬v209 ∨ ¬v283 ∨ ¬v200 ∨ v245 ∨ v248)
    (c88 : ¬v219 ∨ v201 ∨ ¬v283 ∨ ¬v255 ∨ ¬v209 ∨ v245)
    (c89 : v219 ∨ v209 ∨ ¬v245 ∨ v255 ∨ ¬v201 ∨ v283)
    (c90 : ¬v220 ∨ ¬v201 ∨ v205 ∨ ¬v200 ∨ v209 ∨ v213)
    (c91 : v256 ∨ ¬v201 ∨ v205 ∨ ¬v245 ∨ ¬v249 ∨ ¬v200)
    (c92 : v201 ∨ v200 ∨ ¬v205 ∨ ¬v256 ∨ v245 ∨ v249)
    (c93 : ¬v213 ∨ v200 ∨ v249 ∨ ¬v284 ∨ v245 ∨ v209)
    (c94 : v220 ∨ v201 ∨ ¬v209 ∨ v245 ∨ v256 ∨ v284)
    (c95 : ¬v214 ∨ v200 ∨ ¬v250 ∨ ¬v245 ∨ v209 ∨ v285)
    (c96 : v214 ∨ v209 ∨ v285 ∨ v200 ∨ v245 ∨ ¬v250)
    (c97 : ¬v201 ∨ v222 ∨ v207 ∨ ¬v209 ∨ ¬v200 ∨ ¬v215)
    (c98 : v258 ∨ ¬v201 ∨ ¬v251 ∨ ¬v245 ∨ v207 ∨ ¬v200)
    (c99 : ¬v258 ∨ v200 ∨ v201 ∨ ¬v207 ∨ v245 ∨ v251)
    (c100 : v215 ∨ ¬v245 ∨ ¬v251 ∨ ¬v209 ∨ ¬v200 ∨ v286)
    (c101 : ¬v259 ∨ ¬v201 ∨ ¬v208 ∨ ¬v245 ∨ ¬v200 ∨ v252)
    (c102 : v209 ∨ v216 ∨ ¬v252 ∨ v200 ∨ v245 ∨ v287)
    (c103 : ¬v216 ∨ ¬v245 ∨ ¬v209 ∨ ¬v287 ∨ ¬v200 ∨ v252)
    (c104 : v259 ∨ v223 ∨ v201 ∨ v245 ∨ ¬v209 ∨ v287)
    (c105 : v202 ∨ v203 ∨ ¬v200 ∨ ¬v246 ∨ v247 ∨ v260)
    (c106 : ¬v203 ∨ ¬v202 ∨ ¬v247 ∨ ¬v260 ∨ v200 ∨ v246)
    (c107 : v225 ∨ v212 ∨ v204 ∨ ¬v202 ∨ v200 ∨ v210)
    (c108 : ¬v261 ∨ v202 ∨ ¬v200 ∨ ¬v204 ∨ ¬v246 ∨ ¬v248)
    (c109 : v261 ∨ v204 ∨ v246 ∨ v200 ∨ ¬v202 ∨ v248)
    (c110 : v203 ∨ v200 ∨ ¬v230 ∨ v204 ∨ ¬v211 ∨ v212)
    (c111 : v212 ∨ ¬v211 ∨ ¬v230 ∨ ¬v204 ∨ ¬v200 ∨ ¬v203)
    (c112 : v266 ∨ ¬v248 ∨ ¬v203 ∨ ¬v204 ∨ v247 ∨ ¬v200)
    (c113 : ¬v266 ∨ v200 ∨ v203 ∨ v204 ∨ v248 ∨ ¬v247)
    (c114 : v211 ∨ ¬v247 ∨ v230 ∨ ¬v294 ∨ v203 ∨ v266)
    (c115 : ¬v266 ∨ ¬v211 ∨ v294 ∨ ¬v203 ∨ v247 ∨ ¬v230)
    (c116 : ¬v295 ∨ ¬v200 ∨ ¬v249 ∨ v211 ∨ v213 ∨ v247)
    (c117 : ¬v213 ∨ ¬v212 ∨ ¬v204 ∨ ¬v200 ∨ v205 ∨ v235)
    (c118 : v271 ∨ ¬v205 ∨ v204 ∨ ¬v200 ∨ v249 ∨ v248)
    (c119 : v200 ∨ ¬v248 ∨ ¬v249 ∨ ¬v204 ∨ ¬v271 ∨ v205)
    (c120 : ¬v213 ∨ ¬v299 ∨ ¬v249 ∨ ¬v271 ∨ v205 ∨ v235)
    (c121 : ¬v272 ∨ ¬v200 ∨ ¬v206 ∨ ¬v248 ∨ ¬v204 ∨ v250)
    (c122 : ¬v237 ∨ v200 ∨ v204 ∨ v215 ∨ v212 ∨ ¬v207)
    (c123 : v237 ∨ ¬v215 ∨ ¬v212 ∨ ¬v200 ∨ v207 ∨ ¬v204)
    (c124 : v273 ∨ ¬v248 ∨ v207 ∨ ¬v200 ∨ ¬v251 ∨ ¬v204)
    (c125 : ¬v273 ∨ v200 ∨ v204 ∨ v248 ∨ ¬v207 ∨ v251)
    (c126 : ¬v238 ∨ ¬v212 ∨ ¬v208 ∨ ¬v204 ∨ ¬v200 ∨ v216)
    (c127 : ¬v274 ∨ ¬v248 ∨ ¬v200 ∨ ¬v208 ∨ ¬v204 ∨ v252)
    (c128 : v274 ∨ v204 ∨ ¬v252 ∨ v200 ∨ v208 ∨ v248)
    (c129 : ¬v302 ∨ ¬v238 ∨ ¬v212 ∨ ¬v248 ∨ ¬v204 ∨ v274)
    (c130 : v200 ∨ v207 ∨ v276 ∨ ¬v205 ∨ v251 ∨ v249)
    (c131 : ¬v277 ∨ v200 ∨ ¬v208 ∨ ¬v205 ∨ ¬v252 ∨ v249)
    (c132 : v241 ∨ v277 ∨ ¬v249 ∨ v205 ∨ ¬v305 ∨ v213)
    (c133 : ¬v277 ∨ ¬v213 ∨ ¬v241 ∨ ¬v205 ∨ v249 ∨ v305)
    (c134 : ¬v200 ∨ v206 ∨ ¬v278 ∨ ¬v251 ∨ v207 ∨ v250)
    (c135 : v215 ∨ v207 ∨ ¬v242 ∨ ¬v278 ∨ ¬v251 ∨ v306)
    (c136 : v200 ∨ v206 ∨ v279 ∨ ¬v208 ∨ ¬v250 ∨ ¬v252)
    (c137 : v225 ∨ v217 ∨ ¬v202 ∨ v204 ∨ v219 ∨ v201)
    (c138 : v253 ∨ v202 ∨ ¬v201 ∨ ¬v204 ∨ v255 ∨ v261)
    (c139 : ¬v217 ∨ ¬v227 ∨ ¬v221 ∨ ¬v206 ∨ ¬v201 ∨ v202)
    (c140 : ¬v217 ∨ ¬v223 ∨ ¬v229 ∨ ¬v208 ∨ ¬v201 ∨ v202)
    (c141 : ¬v254 ∨ ¬v218 ∨ ¬v201 ∨ ¬v315 ∨ ¬v219 ∨ v255)
    (c142 : v256 ∨ ¬v201 ∨ ¬v204 ∨ v205 ∨ v255 ∨ ¬v271)
    (c143 : ¬v257 ∨ ¬v201 ∨ ¬v204 ∨ ¬v206 ∨ v255 ∨ v272)
    (c144 : v258 ∨ ¬v201 ∨ ¬v204 ∨ v207 ∨ v255 ∨ ¬v273)
    (c145 : ¬v220 ∨ ¬v201 ∨ ¬v223 ∨ ¬v208 ∨ ¬v241 ∨ v205)
    (c146 : v256 ∨ ¬v201 ∨ ¬v208 ∨ v205 ∨ v259 ∨ v277)
    (c147 : v221 ∨ v222 ∨ ¬v327 ∨ ¬v201 ∨ ¬v258 ∨ v257)
    (c148 : v221 ∨ v257 ∨ ¬v278 ∨ ¬v327 ∨ ¬v206 ∨ v242)
    (c149 : ¬v222 ∨ ¬v258 ∨ ¬v278 ∨ ¬v327 ∨ v207 ∨ v242)
    (c150 : v258 ∨ ¬v201 ∨ ¬v208 ∨ v207 ∨ v259 ∨ v280)
    (c151 : v223 ∨ v259 ∨ ¬v208 ∨ ¬v244 ∨ v280 ∨ v329)
    (c152 : v330 ∨ ¬v266 ∨ ¬v230 ∨ ¬v203 ∨ v260 ∨ ¬v224)
    (c153 : v225 ∨ ¬v330 ∨ v204 ∨ ¬v261 ∨ v230 ∨ v266)
    (c154 : v330 ∨ ¬v225 ∨ ¬v230 ∨ ¬v204 ∨ v261 ∨ ¬v266)
    (c155 : v234 ∨ ¬v224 ∨ ¬v202 ∨ v208 ∨ v229 ∨ v203)
    (c156 : v335 ∨ ¬v225 ∨ ¬v235 ∨ v204 ∨ v271 ∨ ¬v261)
    (c157 : ¬v225 ∨ v238 ∨ ¬v202 ∨ v208 ∨ v229 ∨ v204)
    (c158 : ¬v338 ∨ v225 ∨ v202 ∨ ¬v229 ∨ v261 ∨ v265)
    (c159 : ¬v238 ∨ v225 ∨ ¬v204 ∨ v261 ∨ v274 ∨ v338)
    (c160 : v341 ∨ ¬v265 ∨ ¬v241 ∨ v208 ∨ v229 ∨ ¬v277)
    (c161 : v227 ∨ ¬v243 ∨ ¬v208 ∨ ¬v229 ∨ v202 ∨ ¬v206)
    (c162 : v231 ∨ ¬v205 ∨ ¬v235 ∨ v204 ∨ v230 ∨ v203)
    (c163 : ¬v231 ∨ ¬v203 ∨ ¬v230 ∨ ¬v204 ∨ v205 ∨ v235)
    (c164 : v271 ∨ ¬v345 ∨ v204 ∨ v230 ∨ v266 ∨ ¬v235)
    (c165 : ¬v234 ∨ v238 ∨ v204 ∨ v208 ∨ v203 ∨ v230)
    (c166 : ¬v356 ∨ ¬v237 ∨ ¬v271 ∨ ¬v273 ∨ ¬v204 ∨ v235)
    (c167 : v357 ∨ v238 ∨ v235 ∨ ¬v204 ∨ v274 ∨ ¬v271)
    (c168 : v273 ∨ v272 ∨ ¬v278 ∨ v207 ∨ ¬v204 ∨ ¬v206)
    (c169 : ¬v273 ∨ ¬v208 ∨ ¬v280 ∨ ¬v207 ∨ ¬v204 ∨ v274)
    (c170 : ¬v274 ∨ ¬v273 ∨ ¬v280 ∨ ¬v207 ∨ v204 ∨ v208)
    (c171 : v360 ∨ v238 ∨ ¬v208 ∨ ¬v244 ∨ v280 ∨ v274)
    (c172 : ¬v240 ∨ ¬v361 ∨ ¬v276 ∨ ¬v239 ∨ v205 ∨ v275)
    (c173 : v243 ∨ ¬v206 ∨ ¬v278 ∨ v279 ∨ v242 ∨ v364)
    (c174 : v207 ∨ ¬v244 ∨ ¬v242 ∨ ¬v278 ∨ v280 ∨ v364)
    (c175 : ¬v210 ∨ ¬v211 ∨ ¬v281 ∨ v209 ∨ v282 ∨ v288)
    (c176 : v218 ∨ v209 ∨ ¬v282 ∨ v281 ∨ v217 ∨ v309)
    (c177 : v218 ∨ v211 ∨ v309 ∨ ¬v282 ∨ ¬v288 ∨ ¬v224)
    (c178 : ¬v311 ∨ ¬v220 ∨ ¬v281 ∨ ¬v217 ∨ ¬v209 ∨ v284)
    (c179 : ¬v210 ∨ ¬v216 ∨ ¬v281 ∨ v209 ∨ v287 ∨ v293)
    (c180 : ¬v216 ∨ ¬v287 ∨ ¬v281 ∨ v209 ∨ v210 ∨ v293)
    (c181 : v212 ∨ ¬v209 ∨ v294 ∨ ¬v282 ∨ v283 ∨ v211)
    (c182 : v209 ∨ ¬v211 ∨ v294 ∨ ¬v282 ∨ ¬v212 ∨ v283)
    (c183 : ¬v212 ∨ ¬v211 ∨ ¬v283 ∨ ¬v294 ∨ v209 ∨ v282)
    (c184 : ¬v316 ∨ ¬v218 ∨ ¬v282 ∨ v220 ∨ ¬v284 ∨ v209)
    (c185 : ¬v299 ∨ v284 ∨ ¬v209 ∨ v213 ∨ v283 ∨ ¬v212)
    (c186 : ¬v213 ∨ v209 ∨ ¬v283 ∨ ¬v212 ∨ v284 ∨ v299)
    (c187 : ¬v321 ∨ ¬v285 ∨ ¬v219 ∨ ¬v221 ∨ v209 ∨ v283)
    (c188 : ¬v300 ∨ ¬v236 ∨ ¬v212 ∨ ¬v219 ∨ v283 ∨ v321)
    (c189 : v322 ∨ v209 ∨ ¬v219 ∨ v283 ∨ v286 ∨ v222)
    (c190 : ¬v216 ∨ ¬v284 ∨ ¬v209 ∨ ¬v305 ∨ ¬v287 ∨ v213)
    (c191 : ¬v213 ∨ v284 ∨ v216 ∨ v209 ∨ v287 ∨ v305)
    (c192 : ¬v216 ∨ ¬v215 ∨ ¬v286 ∨ v209 ∨ v287 ∨ v308)
    (c193 : ¬v222 ∨ ¬v215 ∨ v286 ∨ ¬v244 ∨ ¬v308 ∨ v329)
    (c194 : v224 ∨ v225 ∨ ¬v211 ∨ v210 ∨ v212 ∨ v230)
    (c195 : v224 ∨ ¬v330 ∨ ¬v294 ∨ ¬v211 ∨ v230 ∨ v288)
    (c196 : v225 ∨ v226 ∨ ¬v235 ∨ v212 ∨ v210 ∨ ¬v213)
    (c197 : v225 ∨ ¬v289 ∨ v210 ∨ ¬v338 ∨ v229 ∨ v293)
    (c198 : ¬v226 ∨ v241 ∨ v210 ∨ ¬v216 ∨ v229 ∨ ¬v213)
    (c199 : v295 ∨ v211 ∨ v299 ∨ v294 ∨ v213 ∨ ¬v212)
    (c200 : v345 ∨ v295 ∨ v231 ∨ v211 ∨ v294 ∨ ¬v230)
    (c201 : v345 ∨ v295 ∨ v231 ∨ v235 ∨ ¬v299 ∨ v213)
    (c202 : v355 ∨ ¬v299 ∨ ¬v239 ∨ ¬v303 ∨ v213 ∨ v235)
    (c203 : v355 ∨ v213 ∨ v239 ∨ v299 ∨ v303 ∨ ¬v235)
    (c204 : v241 ∨ v238 ∨ ¬v235 ∨ v212 ∨ ¬v216 ∨ ¬v213)
    (c205 : ¬v213 ∨ v212 ∨ v216 ∨ v299 ∨ v302 ∨ v305)
    (c206 : v357 ∨ ¬v241 ∨ ¬v305 ∨ v213 ∨ v235 ∨ ¬v299)
    (c207 : ¬v357 ∨ v241 ∨ v299 ∨ ¬v235 ∨ ¬v213 ∨ v305)
    (c208 : ¬v240 ∨ ¬v239 ∨ v361 ∨ ¬v303 ∨ v304 ∨ v213)
    (c209 : v241 ∨ ¬v362 ∨ ¬v305 ∨ ¬v239 ∨ ¬v303 ∨ v213)
    (c210 : v330 ∨ ¬v225 ∨ ¬v315 ∨ ¬v230 ∨ v310 ∨ ¬v219)
    (c211 : v311 ∨ ¬v218 ∨ v217 ∨ v309 ∨ v220 ∨ v316)
    (c212 : v225 ∨ ¬v238 ∨ ¬v229 ∨ v217 ∨ ¬v219 ∨ ¬v223)
    (c213 : v316 ∨ ¬v220 ∨ ¬v320 ∨ ¬v235 ∨ ¬v231 ∨ v345)
    (c214 : v219 ∨ v237 ∨ v235 ∨ ¬v322 ∨ v320 ∨ v356)
    (c215 : v338 ∨ v341 ∨ v229 ∨ ¬v238 ∨ v241 ∨ v357)
    (c216 : v354 ∨ v233 ∨ ¬v244 ∨ ¬v237 ∨ ¬v347 ∨ v360)
    (c217 : ¬v348 ∨ ¬v238 ∨ ¬v360 ∨ ¬v354 ∨ v234 ∨ v244)
    (c218 : ¬v234 ∨ v348 ∨ ¬v244 ∨ v238 ∨ v354 ∨ v360)
    (c219 : v236 ∨ ¬v358 ∨ v242 ∨ ¬v239 ∨ ¬v355 ∨ ¬v361)
    (c220 : v360 ∨ v356 ∨ ¬v244 ∨ ¬v237 ∨ v240 ∨ v363)
    (c221 : v360 ∨ ¬v241 ∨ v363 ∨ ¬v244 ∨ v238 ∨ ¬v357)
    (c222 : v290 ∨ ¬v245 ∨ ¬v246 ∨ ¬v249 ∨ v281 ∨ ¬v284)
    (c223 : ¬v290 ∨ v245 ∨ ¬v281 ∨ v246 ∨ v249 ∨ v284)
    (c224 : v311 ∨ ¬v284 ∨ v281 ∨ ¬v245 ∨ ¬v253 ∨ ¬v256)
    (c225 : ¬v245 ∨ v281 ∨ v246 ∨ ¬v250 ∨ v285 ∨ v291)
    (c226 : v287 ∨ ¬v293 ∨ ¬v245 ∨ v252 ∨ ¬v246 ∨ v281)
    (c227 : v248 ∨ v247 ∨ v294 ∨ ¬v282 ∨ v283 ∨ ¬v245)
    (c228 : ¬v248 ∨ ¬v283 ∨ ¬v247 ∨ ¬v294 ∨ v245 ∨ v282)
    (c229 : ¬v295 ∨ ¬v245 ∨ ¬v249 ∨ ¬v282 ∨ ¬v284 ∨ v247)
    (c230 : v295 ∨ v284 ∨ ¬v247 ∨ v282 ∨ v245 ∨ v249)
    (c231 : ¬v316 ∨ v254 ∨ ¬v282 ∨ ¬v256 ∨ ¬v245 ∨ ¬v284)
    (c232 : v248 ∨ v245 ∨ ¬v299 ∨ ¬v283 ∨ v249 ∨ v284)
    (c233 : v255 ∨ v248 ∨ v271 ∨ ¬v283 ∨ ¬v320 ∨ v299)
    (c234 : ¬v255 ∨ v320 ∨ ¬v271 ∨ ¬v299 ∨ v283 ∨ ¬v248)
    (c235 : v322 ∨ v301 ∨ ¬v248 ∨ v283 ∨ v255 ∨ ¬v273)
    (c236 : ¬v323 ∨ v259 ∨ ¬v245 ∨ ¬v287 ∨ v255 ∨ v283)
    (c237 : v284 ∨ v249 ∨ ¬v250 ∨ v303 ∨ v285 ∨ ¬v245)
    (c238 : v245 ∨ ¬v285 ∨ ¬v249 ∨ ¬v284 ∨ ¬v303 ∨ v250)
    (c239 : v245 ∨ ¬v284 ∨ ¬v251 ∨ ¬v249 ∨ v286 ∨ v304)
    (c240 : v284 ∨ v304 ∨ ¬v286 ∨ v251 ∨ v245 ∨ v249)
    (c241 : ¬v325 ∨ ¬v256 ∨ ¬v284 ∨ ¬v258 ∨ ¬v245 ∨ v286)
    (c242 : v325 ∨ v256 ∨ v249 ∨ ¬v304 ∨ v284 ∨ v276)
    (c243 : ¬v256 ∨ v304 ∨ v276 ∨ v249 ∨ v284 ∨ v325)
    (c244 : ¬v284 ∨ v245 ∨ ¬v287 ∨ ¬v249 ∨ ¬v305 ∨ v252)
    (c245 : ¬v305 ∨ v287 ∨ v249 ∨ v284 ∨ ¬v252 ∨ v245)
    (c246 : v256 ∨ ¬v277 ∨ v284 ∨ v249 ∨ ¬v326 ∨ v305)
    (c247 : ¬v257 ∨ ¬v258 ∨ ¬v278 ∨ ¬v251 ∨ ¬v245 ∨ v250)
    (c248 : ¬v258 ∨ ¬v278 ∨ ¬v286 ∨ ¬v327 ∨ ¬v251 ∨ v306)
    (c249 : v245 ∨ ¬v287 ∨ ¬v286 ∨ ¬v252 ∨ v251 ∨ v308)
    (c250 : v291 ∨ ¬v307 ∨ ¬v246 ∨ v250 ∨ v252 ∨ ¬v293)
    (c251 : v307 ∨ ¬v291 ∨ ¬v252 ∨ v246 ∨ v293 ∨ ¬v250)
    (c252 : ¬v295 ∨ ¬v294 ∨ ¬v248 ∨ ¬v247 ∨ v249 ∨ v299)
    (c253 : v295 ∨ v248 ∨ v247 ∨ v294 ∨ ¬v299 ∨ ¬v249)
    (c254 : ¬v272 ∨ ¬v248 ∨ ¬v249 ∨ ¬v271 ∨ v250 ∨ v275)
    (c255 : ¬v355 ∨ v271 ∨ v249 ∨ ¬v275 ∨ v299 ∨ v303)
    (c256 : v355 ∨ ¬v299 ∨ ¬v249 ∨ ¬v303 ∨ v275 ∨ ¬v271)
    (c257 : v356 ∨ v271 ∨ v276 ∨ ¬v304 ∨ v249 ∨ v299)
    (c258 : ¬v274 ∨ v277 ∨ ¬v249 ∨ ¬v248 ∨ v252 ∨ ¬v271)
    (c259 : ¬v277 ∨ ¬v357 ∨ v249 ∨ v271 ∨ v299 ∨ v305)
    (c260 : ¬v299 ∨ v277 ∨ ¬v249 ∨ v357 ∨ ¬v271 ∨ ¬v305)
    (c261 : v300 ∨ ¬v358 ∨ v250 ∨ ¬v278 ∨ v272 ∨ v306)
    (c262 : ¬v301 ∨ ¬v358 ∨ ¬v278 ∨ ¬v273 ∨ ¬v251 ∨ v306)
    (c263 : v273 ∨ ¬v251 ∨ v252 ∨ ¬v280 ∨ ¬v248 ∨ v274)
    (c264 : ¬v302 ∨ ¬v360 ∨ ¬v280 ∨ ¬v274 ∨ ¬v252 ∨ v308)
    (c265 : v304 ∨ v303 ∨ ¬v251 ∨ v250 ∨ ¬v249 ∨ v306)
    (c266 : v304 ∨ v361 ∨ ¬v249 ∨ v276 ∨ v275 ∨ ¬v303)
    (c267 : ¬v361 ∨ v303 ∨ ¬v250 ∨ v275 ∨ v278 ∨ ¬v306)
    (c268 : ¬v303 ∨ ¬v275 ∨ ¬v306 ∨ ¬v250 ∨ v278 ∨ v361)
    (c269 : v277 ∨ v249 ∨ ¬v252 ∨ ¬v250 ∨ ¬v275 ∨ v279)
    (c270 : ¬v307 ∨ ¬v305 ∨ ¬v252 ∨ ¬v250 ∨ v249 ∨ v303)
    (c271 : ¬v362 ∨ ¬v277 ∨ ¬v305 ∨ ¬v303 ∨ ¬v249 ∨ v275)
    (c272 : ¬v307 ∨ ¬v279 ∨ v362 ∨ ¬v275 ∨ v303 ∨ ¬v250)
    (c273 : v249 ∨ v277 ∨ ¬v252 ∨ v251 ∨ ¬v280 ∨ v276)
    (c274 : ¬v277 ∨ ¬v276 ∨ ¬v251 ∨ ¬v249 ∨ v252 ∨ v280)
    (c275 : v305 ∨ ¬v251 ∨ ¬v249 ∨ v252 ∨ v304 ∨ ¬v308)
    (c276 : ¬v276 ∨ ¬v277 ∨ v363 ∨ v305 ∨ v249 ∨ ¬v304)
    (c277 : ¬v276 ∨ ¬v304 ∨ v363 ∨ v251 ∨ ¬v280 ∨ v308)
    (c278 : v277 ∨ v305 ∨ v363 ∨ ¬v280 ∨ v308 ∨ ¬v252)
    (c279 : ¬v308 ∨ ¬v280 ∨ v364 ∨ v278 ∨ v251 ∨ ¬v306)
    (c280 : ¬v308 ∨ ¬v280 ∨ ¬v278 ∨ ¬v251 ∨ v306 ∨ v364)
    (c281 : ¬v310 ∨ v254 ∨ ¬v315 ∨ v309 ∨ v255 ∨ ¬v253)
    (c282 : ¬v267 ∨ ¬v331 ∨ v254 ∨ v260 ∨ v309 ∨ v316)
    (c283 : v345 ∨ v320 ∨ ¬v315 ∨ ¬v271 ∨ ¬v266 ∨ v255)
    (c284 : ¬v255 ∨ ¬v320 ∨ ¬v345 ∨ v266 ∨ v271 ∨ v315)
    (c285 : ¬v356 ∨ ¬v322 ∨ ¬v273 ∨ ¬v271 ∨ v255 ∨ v320)
    (c286 : ¬v325 ∨ ¬v271 ∨ ¬v276 ∨ ¬v256 ∨ v320 ∨ v356)
    (c287 : ¬v329 ∨ ¬v323 ∨ ¬v322 ∨ ¬v259 ∨ ¬v255 ∨ v258)
    (c288 : v322 ∨ v323 ∨ v255 ∨ v259 ∨ ¬v258 ∨ v329)
    (c289 : ¬v343 ∨ ¬v277 ∨ v279 ∨ ¬v265 ∨ ¬v341 ∨ v362)
    (c290 : v267 ∨ ¬v349 ∨ ¬v355 ∨ ¬v271 ∨ ¬v345 ∨ v275)
    (c291 : v267 ∨ ¬v349 ∨ v276 ∨ v275 ∨ ¬v361 ∨ v350)
    (c292 : v273 ∨ v272 ∨ ¬v278 ∨ ¬v276 ∨ ¬v271 ∨ v275)
    (c293 : ¬v356 ∨ ¬v355 ∨ ¬v276 ∨ ¬v361 ∨ ¬v271 ∨ v275)
    (c294 : ¬v276 ∨ ¬v363 ∨ v360 ∨ v280 ∨ v356 ∨ ¬v273)
    (c295 : ¬v277 ∨ ¬v275 ∨ v361 ∨ v363 ∨ v362 ∨ v276)
    (c296 : ¬v279 ∨ v364 ∨ v275 ∨ v362 ∨ ¬v278 ∨ ¬v361)
    (c297 : ¬v279 ∨ ¬v275 ∨ v278 ∨ v361 ∨ v362 ∨ v364)
    (c298 : v279 ∨ ¬v361 ∨ v278 ∨ ¬v275 ∨ v362 ∨ v364)
    (c299 : ¬v364 ∨ ¬v363 ∨ v280 ∨ v276 ∨ ¬v278 ∨ ¬v361)
    (c300 : ¬v276 ∨ ¬v280 ∨ v278 ∨ v361 ∨ v363 ∨ v364)
    (c301 : v311 ∨ v335 ∨ v284 ∨ v299 ∨ v290 ∨ ¬v320)
    (c302 : ¬v311 ∨ ¬v335 ∨ ¬v299 ∨ ¬v290 ∨ ¬v284 ∨ v320)
    (c303 : ¬v295 ∨ ¬v294 ∨ ¬v299 ∨ ¬v283 ∨ v282 ∨ v284)
    (c304 : v295 ∨ ¬v282 ∨ v299 ∨ v283 ∨ ¬v284 ∨ v294)
    (c305 : ¬v356 ∨ v325 ∨ ¬v284 ∨ v304 ∨ v320 ∨ ¬v299)
    (c306 : v304 ∨ v284 ∨ ¬v306 ∨ v285 ∨ v303 ∨ ¬v286)
    (c307 : ¬v285 ∨ ¬v284 ∨ ¬v304 ∨ v286 ∨ ¬v303 ∨ v306)
    (c308 : ¬v325 ∨ v284 ∨ ¬v286 ∨ ¬v324 ∨ v285 ∨ v327)
    (c309 : v324 ∨ ¬v361 ∨ v303 ∨ v285 ∨ ¬v306 ∨ v327)
    (c310 : v325 ∨ v361 ∨ v286 ∨ v306 ∨ ¬v327 ∨ v304)
    (c311 : ¬v284 ∨ ¬v308 ∨ ¬v304 ∨ ¬v287 ∨ ¬v305 ∨ v286)
    (c312 : ¬v329 ∨ ¬v325 ∨ v363 ∨ ¬v286 ∨ v308 ∨ ¬v304)
    (c313 : v307 ∨ ¬v287 ∨ ¬v306 ∨ v285 ∨ ¬v286 ∨ v308)
    (c314 : v287 ∨ ¬v307 ∨ ¬v285 ∨ ¬v308 ∨ v286 ∨ v306)
    (c315 : ¬v329 ∨ v364 ∨ v286 ∨ ¬v308 ∨ v306 ∨ ¬v327)
    (c316 : ¬v364 ∨ v308 ∨ v329 ∨ ¬v306 ∨ v327 ∨ ¬v286)
    (c317 : v289 ∨ v335 ∨ v290 ∨ v293 ∨ ¬v338 ∨ v341)
    (c318 : v339 ∨ ¬v341 ∨ v362 ∨ v303 ∨ v290 ∨ v305)
    (c319 : v301 ∨ ¬v356 ∨ ¬v345 ∨ ¬v299 ∨ v294 ∨ ¬v347)
    (c320 : v302 ∨ ¬v357 ∨ ¬v294 ∨ v299 ∨ ¬v348 ∨ v345)
    (c321 : ¬v301 ∨ v297 ∨ ¬v308 ∨ ¬v347 ∨ v354 ∨ v360)
    (c322 : ¬v356 ∨ v361 ∨ ¬v303 ∨ ¬v299 ∨ v304 ∨ ¬v355)
    (c323 : ¬v362 ∨ v357 ∨ ¬v305 ∨ ¬v303 ∨ ¬v299 ∨ ¬v355)
    (c324 : v302 ∨ v360 ∨ ¬v308 ∨ ¬v305 ∨ ¬v357 ∨ v363)
    (c325 : ¬v302 ∨ ¬v363 ∨ ¬v360 ∨ v305 ∨ v308 ∨ v357)
    (c326 : v304 ∨ v363 ∨ ¬v303 ∨ v362 ∨ v361 ∨ ¬v305)
    (c327 : ¬v307 ∨ ¬v361 ∨ ¬v306 ∨ v303 ∨ v362 ∨ v364)
    (c328 : v307 ∨ v303 ∨ v362 ∨ v361 ∨ ¬v306 ∨ v364)
    (c329 : v307 ∨ v364 ∨ ¬v303 ∨ v362 ∨ v306 ∨ ¬v361)
    (c330 : ¬v307 ∨ ¬v364 ∨ ¬v362 ∨ ¬v361 ∨ ¬v303 ∨ v306)
    (c331 : ¬v364 ∨ v363 ∨ v361 ∨ v306 ∨ ¬v308 ∨ v304)
    (c332 : ¬v363 ∨ v304 ∨ ¬v361 ∨ v364 ∨ v306 ∨ ¬v308)
    (c333 : ¬v304 ∨ ¬v308 ∨ v361 ∨ v306 ∨ v363 ∨ v364)
    (c334 : ¬v363 ∨ ¬v361 ∨ ¬v306 ∨ v364 ∨ v308 ∨ ¬v304)
    (c335 : ¬v331 ∨ ¬v345 ∨ v309 ∨ ¬v315 ∨ v316 ∨ ¬v330)
    (c336 : v331 ∨ ¬v316 ∨ ¬v309 ∨ v315 ∨ v330 ∨ v345)
    (c337 : ¬v335 ∨ v331 ∨ ¬v345 ∨ v316 ∨ v320 ∨ ¬v311)
    (c338 : v322 ∨ ¬v320 ∨ v356 ∨ ¬v323 ∨ v357 ∨ v360)
    (c339 : v328 ∨ ¬v324 ∨ v327 ∨ ¬v361 ∨ v362 ∨ v364)
    (c340 : v159 ∨ v145 ∨ ¬v150 ∨ ¬v204)
    (c341 : ¬v162 ∨ v153 ∨ ¬v145 ∨ v207)
    (c342 : ¬v165 ∨ v148 ∨ ¬v146 ∨ v210)
    (c343 : v153 ∨ ¬v170 ∨ ¬v146 ∨ v215)
    (c344 : ¬v185 ∨ ¬v149 ∨ v150 ∨ v230)
    (c345 : v185 ∨ ¬v150 ∨ v149 ∨ ¬v230)
    (c346 : ¬v190 ∨ v151 ∨ ¬v150 ∨ v235)
    (c347 : ¬v192 ∨ v237 ∨ v153 ∨ ¬v150)
    (c348 : ¬v199 ∨ v154 ∨ ¬v153 ∨ v244)
    (c349 : v199 ∨ v153 ∨ ¬v244 ∨ ¬v154)
    (c350 : ¬v297 ∨ v188 ∨ v166 ∨ ¬v170)
    (c351 : v170 ∨ ¬v192 ∨ v301 ∨ ¬v167)
    (c352 : ¬v195 ∨ v192 ∨ ¬v190 ∨ v356)
    (c353 : v248 ∨ ¬v200 ∨ v204 ∨ ¬v212)
    (c354 : ¬v202 ∨ v265 ∨ v208 ∨ ¬v229)
    (c355 : ¬v204 ∨ ¬v235 ∨ v205 ∨ v271)
    (c356 : ¬v271 ∨ ¬v205 ∨ v204 ∨ v235)
    (c357 : v206 ∨ ¬v239 ∨ ¬v205 ∨ v275)
    (c358 : v239 ∨ v205 ∨ ¬v275 ∨ ¬v206)
    (c359 : v208 ∨ ¬v243 ∨ ¬v206 ∨ v279)
    (c360 : v208 ∨ ¬v207 ∨ ¬v244 ∨ v280)
    (c361 : v207 ∨ v244 ∨ ¬v280 ∨ ¬v208)
    (c362 : ¬v223 ∨ v287 ∨ ¬v209 ∨ v216)
    (c363 : ¬v213 ∨ v305 ∨ v216 ∨ ¬v241)
    (c364 : v323 ∨ v223 ∨ ¬v219 ∨ ¬v238)
    (c365 : v345 ∨ v231 ∨ ¬v235 ∨ ¬v230)
    (c366 : v238 ∨ ¬v241 ∨ ¬v235 ∨ v357)
    (c367 : v241 ∨ ¬v243 ∨ ¬v239 ∨ v362)
    (c368 : ¬v260 ∨ v247 ∨ ¬v246 ∨ v288)
    (c369 : v246 ∨ ¬v247 ∨ ¬v288 ∨ v260)
    (c370 : v293 ∨ ¬v265 ∨ v252 ∨ ¬v246)
    (c371 : ¬v293 ∨ v265 ∨ ¬v252 ∨ v246)
    (c372 : v303 ∨ ¬v249 ∨ v250 ∨ ¬v275)
    (c373 : ¬v303 ∨ v249 ∨ v275 ∨ ¬v250)
    (c374 : ¬v278 ∨ v251 ∨ v306 ∨ ¬v250)
    (c375 : ¬v251 ∨ v250 ∨ ¬v306 ∨ v278)
    (c376 : v252 ∨ ¬v280 ∨ ¬v251 ∨ v308)
    (c377 : ¬v308 ∨ ¬v252 ∨ v251 ∨ v280)
    (c378 : v277 ∨ ¬v279 ∨ ¬v275 ∨ v362)
    (c379 : v279 ∨ v364 ∨ ¬v278 ∨ ¬v280)
    (c380 : v282 ∨ ¬v288 ∨ ¬v281 ∨ v309)
    (c381 : ¬v309 ∨ v288 ∨ v281 ∨ ¬v282)
    (c382 : v315 ∨ ¬v294 ∨ v283 ∨ ¬v282)
    (c383 : v294 ∨ ¬v315 ∨ v282 ∨ ¬v283)
    (c384 : ¬v320 ∨ v299 ∨ v283 ∨ ¬v284)
    (c385 : ¬v302 ∨ v323 ∨ ¬v283 ∨ v287)
    (c386 : ¬v285 ∨ v286 ∨ ¬v306 ∨ v327)
    (c387 : v285 ∨ ¬v327 ∨ ¬v286 ∨ v306)
    (c388 : ¬v307 ∨ v305 ∨ ¬v303 ∨ v362)
    (c389 : ¬v331 ∨ ¬v311 ∨ v309 ∨ v316)
    (c390 : ¬v356 ∨ ¬v322 ∨ v320 ∨ v325)
    (c391 : v326 ∨ ¬v328 ∨ ¬v324 ∨ v362)
    (c392 : ¬v155 ∨ ¬v146 ∨ v145 ∨ v200)
    (c393 : v155 ∨ v146 ∨ ¬v200 ∨ ¬v145)
    (c394 : ¬v147 ∨ v209 ∨ ¬v164 ∨ v146)
    (c395 : v147 ∨ v164 ∨ ¬v209 ∨ ¬v146)
    (c396 : v147 ∨ v209 ∨ ¬v164 ∨ ¬v146)
    (c397 : ¬v201 ∨ v200 ∨ ¬v209 ∨ v245)
    (c398 : v201 ∨ v209 ∨ ¬v200 ∨ ¬v245)
    (c399 : ¬v331 ∨ v330 ∨ ¬v335 ∨ v345)
    (c400 : v335 ∨ v331 ∨ ¬v345 ∨ ¬v330)
    (c401 : v349 ∨ v346 ∨ ¬v355 ∨ ¬v345)
    (c402 : ¬v354 ∨ ¬v348 ∨ v360 ∨ v347)
    (c403 : v354 ∨ v348 ∨ ¬v360 ∨ ¬v347)
    (c404 : v358 ∨ v356 ∨ ¬v361 ∨ ¬v355)
    (c405 : ¬v357 ∨ v356 ∨ v363 ∨ ¬v360)
    (c406 : ¬v363 ∨ ¬v356 ∨ v360 ∨ v357)
    (c407 : v357 ∨ ¬v356 ∨ ¬v360 ∨ v363)
    (c408 : v341 ∨ ¬v338 ∨ ¬v335 ∨ v357)
    (c409 : ¬v363 ∨ v364 ∨ v361 ∨ ¬v362)
    (c410 : ¬v364 ∨ v362 ∨ v363 ∨ ¬v361)
    (c411 : v343 ∨ ¬v339 ∨ ¬v341 ∨ v362)
    (c412 : v185 ∨ v149 ∨ v230 ∨ v150)
    (c413 : v149 ∨ v150 ∨ ¬v230 ∨ v185)
    (c414 : ¬v185 ∨ v149 ∨ v230 ∨ v150)
    (c415 : ¬v185 ∨ v149 ∨ v150 ∨ ¬v230)
    (c416 : v185 ∨ v149 ∨ v230 ∨ ¬v150)
    (c417 : ¬v185 ∨ ¬v230 ∨ ¬v150 ∨ v149)
    (c418 : v185 ∨ ¬v149 ∨ v230 ∨ v150)
    (c419 : ¬v185 ∨ ¬v230 ∨ v150 ∨ ¬v149)
    (c420 : v185 ∨ ¬v150 ∨ v230 ∨ ¬v149)
    (c421 : ¬v230 ∨ ¬v149 ∨ ¬v150 ∨ v185)
    (c422 : ¬v185 ∨ ¬v150 ∨ ¬v149 ∨ v230)
    (c423 : ¬v185 ∨ ¬v149 ∨ ¬v150 ∨ ¬v230)
    (c424 : v151 ∨ v235 ∨ v150 ∨ v190)
    (c425 : v151 ∨ ¬v235 ∨ v150 ∨ v190)
    (c426 : ¬v190 ∨ v151 ∨ v150 ∨ v235)
    (c427 : ¬v151 ∨ v190 ∨ v150 ∨ v235)
    (c428 : v190 ∨ v151 ∨ ¬v150 ∨ v235)
    (c429 : ¬v190 ∨ ¬v150 ∨ ¬v235 ∨ v151)
    (c430 : ¬v151 ∨ v190 ∨ ¬v150 ∨ v235)
    (c431 : ¬v190 ∨ ¬v151 ∨ ¬v150 ∨ v235)
    (c432 : v153 ∨ v154 ∨ v199 ∨ v244)
    (c433 : ¬v199 ∨ v154 ∨ v153 ∨ v244)
    (c434 : v199 ∨ ¬v154 ∨ v244 ∨ v153)
    (c435 : ¬v199 ∨ ¬v154 ∨ ¬v244 ∨ v153)
    (c436 : v199 ∨ ¬v153 ∨ v244 ∨ v154)
    (c437 : ¬v199 ∨ v154 ∨ ¬v244 ∨ ¬v153)
    (c438 : v199 ∨ ¬v153 ∨ ¬v244 ∨ ¬v154)
    (c439 : ¬v199 ∨ ¬v153 ∨ ¬v154 ∨ ¬v244)
    (c440 : v271 ∨ v205 ∨ v204 ∨ v235)
    (c441 : ¬v271 ∨ v204 ∨ v205 ∨ v235)
    (c442 : v271 ∨ ¬v235 ∨ v205 ∨ v204)
    (c443 : ¬v271 ∨ ¬v235 ∨ v204 ∨ v205)
    (c444 : v271 ∨ ¬v205 ∨ v204 ∨ v235)
    (c445 : ¬v271 ∨ ¬v205 ∨ ¬v235 ∨ v204)
    (c446 : v271 ∨ ¬v204 ∨ v205 ∨ v235)
    (c447 : ¬v271 ∨ ¬v204 ∨ ¬v235 ∨ v205)
    (c448 : v271 ∨ ¬v205 ∨ ¬v204 ∨ v235)
    (c449 : ¬v271 ∨ ¬v205 ∨ ¬v204 ∨ v235)
    (c450 : v271 ∨ ¬v205 ∨ ¬v235 ∨ ¬v204)
    (c451 : ¬v271 ∨ ¬v205 ∨ ¬v235 ∨ ¬v204)
    (c452 : v239 ∨ v205 ∨ v275 ∨ v206)
    (c453 : v206 ∨ v205 ∨ ¬v275 ∨ v239)
    (c454 : v206 ∨ ¬v239 ∨ v205 ∨ v275)
    (c455 : ¬v239 ∨ v205 ∨ ¬v275 ∨ v206)
    (c456 : ¬v206 ∨ v205 ∨ v275 ∨ v239)
    (c457 : ¬v239 ∨ v205 ∨ ¬v275 ∨ ¬v206)
    (c458 : ¬v205 ∨ v206 ∨ v239 ∨ v275)
    (c459 : ¬v239 ∨ v206 ∨ ¬v205 ∨ ¬v275)
    (c460 : ¬v205 ∨ ¬v206 ∨ v239 ∨ v275)
    (c461 : ¬v205 ∨ v239 ∨ ¬v275 ∨ ¬v206)
    (c462 : ¬v206 ∨ ¬v239 ∨ v275 ∨ ¬v205)
    (c463 : ¬v239 ∨ ¬v206 ∨ ¬v275 ∨ ¬v205)
    (c464 : v244 ∨ v208 ∨ v207 ∨ v280)
    (c465 : v207 ∨ v244 ∨ ¬v280 ∨ v208)
    (c466 : v208 ∨ v207 ∨ ¬v280 ∨ ¬v244)
    (c467 : v207 ∨ ¬v208 ∨ v280 ∨ v244)
    (c468 : v207 ∨ ¬v208 ∨ ¬v280 ∨ ¬v244)
    (c469 : ¬v207 ∨ v208 ∨ v244 ∨ v280)
    (c470 : v208 ∨ ¬v244 ∨ ¬v280 ∨ ¬v207)
    (c471 : ¬v207 ∨ ¬v208 ∨ v244 ∨ v280)
    (c472 : ¬v207 ∨ v244 ∨ ¬v280 ∨ ¬v208)
    (c473 : ¬v207 ∨ ¬v244 ∨ ¬v208 ∨ v280)
    (c474 : ¬v244 ∨ ¬v208 ∨ ¬v280 ∨ ¬v207)
    (c475 : ¬v229 ∨ v202 ∨ ¬v265 ∨ v208)
    (c476 : v202 ∨ v265 ∨ v208 ∨ ¬v229)
    (c477 : v202 ∨ ¬v265 ∨ v208 ∨ v229)
    (c478 : v202 ∨ v229 ∨ v265 ∨ v208)
    (c479 : ¬v229 ∨ ¬v265 ∨ v208 ∨ ¬v202)
    (c480 : v229 ∨ ¬v202 ∨ v208 ∨ v265)
    (c481 : v202 ∨ v229 ∨ ¬v208 ∨ v265)
    (c482 : ¬v229 ∨ ¬v202 ∨ ¬v208 ∨ v265)
    (c483 : ¬v202 ∨ v229 ∨ ¬v208 ∨ v265)
    (c484 : v260 ∨ v247 ∨ v246 ∨ v288)
    (c485 : ¬v288 ∨ v247 ∨ v246 ∨ v260)
    (c486 : ¬v260 ∨ v288 ∨ v247 ∨ v246)
    (c487 : ¬v260 ∨ ¬v288 ∨ v246 ∨ v247)
    (c488 : v260 ∨ v246 ∨ ¬v247 ∨ v288)
    (c489 : ¬v260 ∨ ¬v247 ∨ ¬v288 ∨ v246)
    (c490 : v288 ∨ v247 ∨ v260 ∨ ¬v246)
    (c491 : ¬v288 ∨ ¬v260 ∨ ¬v246 ∨ v247)
    (c492 : v288 ∨ v260 ∨ ¬v246 ∨ ¬v247)
    (c493 : ¬v288 ∨ ¬v247 ∨ ¬v246 ∨ v260)
    (c494 : ¬v247 ∨ ¬v260 ∨ ¬v246 ∨ v288)
    (c495 : ¬v288 ∨ ¬v260 ∨ ¬v247 ∨ ¬v246)
    (c496 : v249 ∨ v303 ∨ v275 ∨ v250)
    (c497 : ¬v303 ∨ v249 ∨ v275 ∨ v250)
    (c498 : v249 ∨ ¬v275 ∨ v250 ∨ v303)
    (c499 : ¬v303 ∨ v249 ∨ v250 ∨ ¬v275)
    (c500 : v303 ∨ v249 ∨ v275 ∨ ¬v250)
    (c501 : v249 ∨ ¬v303 ∨ ¬v250 ∨ ¬v275)
    (c502 : ¬v249 ∨ v303 ∨ v275 ∨ v250)
    (c503 : ¬v303 ∨ ¬v275 ∨ ¬v249 ∨ v250)
    (c504 : v303 ∨ ¬v250 ∨ v275 ∨ ¬v249)
    (c505 : ¬v303 ∨ ¬v250 ∨ ¬v249 ∨ v275)
    (c506 : v303 ∨ ¬v275 ∨ ¬v250 ∨ ¬v249)
    (c507 : ¬v275 ∨ ¬v303 ∨ ¬v250 ∨ ¬v249)
    (c508 : v278 ∨ v250 ∨ v306 ∨ v251)
    (c509 : v251 ∨ v278 ∨ v250 ∨ ¬v306)
    (c510 : ¬v278 ∨ v251 ∨ v306 ∨ v250)
    (c511 : ¬v278 ∨ ¬v306 ∨ v250 ∨ v251)
    (c512 : v250 ∨ ¬v251 ∨ v278 ∨ v306)
    (c513 : v250 ∨ ¬v278 ∨ ¬v251 ∨ ¬v306)
    (c514 : v278 ∨ ¬v250 ∨ v306 ∨ v251)
    (c515 : ¬v278 ∨ ¬v306 ∨ ¬v250 ∨ v251)
    (c516 : ¬v251 ∨ ¬v250 ∨ v306 ∨ v278)
    (c517 : ¬v251 ∨ v278 ∨ ¬v250 ∨ ¬v306)
    (c518 : ¬v278 ∨ ¬v251 ∨ ¬v250 ∨ v306)
    (c519 : ¬v251 ∨ ¬v278 ∨ ¬v306 ∨ ¬v250)
    (c520 : v308 ∨ v280 ∨ v251 ∨ v252)
    (c521 : ¬v308 ∨ v252 ∨ v251 ∨ v280)
    (c522 : v308 ∨ ¬v280 ∨ v251 ∨ v252)
    (c523 : ¬v308 ∨ ¬v280 ∨ v251 ∨ v252)
    (c524 : v308 ∨ ¬v252 ∨ v251 ∨ v280)
    (c525 : ¬v308 ∨ ¬v280 ∨ v251 ∨ ¬v252)
    (c526 : v308 ∨ v280 ∨ ¬v251 ∨ v252)
    (c527 : ¬v252 ∨ v308 ∨ ¬v251 ∨ v280)
    (c528 : ¬v308 ∨ ¬v252 ∨ ¬v251 ∨ v280)
    (c529 : ¬v252 ∨ v308 ∨ ¬v251 ∨ ¬v280)
    (c530 : ¬v308 ∨ ¬v252 ∨ ¬v280 ∨ ¬v251)
    (c531 : ¬v293 ∨ ¬v265 ∨ v246 ∨ v252)
    (c532 : v246 ∨ ¬v265 ∨ v252 ∨ v293)
    (c533 : ¬v293 ∨ v246 ∨ v252 ∨ v265)
    (c534 : v293 ∨ v246 ∨ v265 ∨ v252)
    (c535 : ¬v293 ∨ ¬v265 ∨ v252 ∨ ¬v246)
    (c536 : v293 ∨ v265 ∨ v252 ∨ ¬v246)
    (c537 : ¬v293 ∨ v246 ∨ ¬v252 ∨ ¬v265)
    (c538 : v293 ∨ v246 ∨ v265 ∨ ¬v252)
    (c539 : ¬v293 ∨ ¬v246 ∨ ¬v252 ∨ ¬v265)
    (c540 : v293 ∨ ¬v246 ∨ ¬v252 ∨ ¬v265)
    (c541 : ¬v246 ∨ v265 ∨ ¬v252 ∨ ¬v293)
    (c542 : ¬v246 ∨ v265 ∨ ¬v252 ∨ v293)
    (c543 : v309 ∨ v288 ∨ v281 ∨ v282)
    (c544 : ¬v309 ∨ v288 ∨ v282 ∨ v281)
    (c545 : v309 ∨ v281 ∨ ¬v288 ∨ v282)
    (c546 : ¬v309 ∨ ¬v288 ∨ v281 ∨ v282)
    (c547 : v309 ∨ v288 ∨ ¬v282 ∨ v281)
    (c548 : ¬v309 ∨ ¬v282 ∨ v281 ∨ ¬v288)
    (c549 : ¬v281 ∨ v288 ∨ v309 ∨ v282)
    (c550 : ¬v309 ∨ ¬v281 ∨ ¬v288 ∨ v282)
    (c551 : ¬v281 ∨ v288 ∨ ¬v282 ∨ v309)
    (c552 : ¬v309 ∨ ¬v282 ∨ ¬v281 ∨ v288)
    (c553 : ¬v282 ∨ ¬v281 ∨ v309 ∨ ¬v288)
    (c554 : ¬v309 ∨ ¬v281 ∨ ¬v282 ∨ ¬v288)
    (c555 : v294 ∨ v315 ∨ v282 ∨ v283)
    (c556 : v294 ∨ ¬v315 ∨ v282 ∨ v283)
    (c557 : ¬v294 ∨ v283 ∨ v282 ∨ v315)
    (c558 : ¬v294 ∨ ¬v315 ∨ v282 ∨ v283)
    (c559 : v294 ∨ ¬v283 ∨ v282 ∨ v315)
    (c560 : ¬v315 ∨ ¬v283 ∨ v282 ∨ ¬v294)
    (c561 : v315 ∨ v283 ∨ ¬v282 ∨ v294)
    (c562 : ¬v315 ∨ ¬v294 ∨ ¬v282 ∨ v283)
    (c563 : v315 ∨ v294 ∨ ¬v282 ∨ ¬v283)
    (c564 : ¬v315 ∨ ¬v283 ∨ ¬v282 ∨ v294)
    (c565 : v315 ∨ ¬v294 ∨ ¬v282 ∨ ¬v283)
    (c566 : ¬v315 ∨ ¬v294 ∨ ¬v283 ∨ ¬v282)
    (c567 : v283 ∨ v284 ∨ v299 ∨ v320)
    (c568 : ¬v320 ∨ v299 ∨ v283 ∨ v284)
    (c569 : v320 ∨ ¬v299 ∨ v283 ∨ v284)
    (c570 : ¬v320 ∨ ¬v299 ∨ v283 ∨ v284)
    (c571 : v320 ∨ ¬v284 ∨ v283 ∨ v299)
    (c572 : ¬v320 ∨ ¬v284 ∨ ¬v299 ∨ v283)
    (c573 : v320 ∨ ¬v283 ∨ v284 ∨ v299)
    (c574 : ¬v284 ∨ v299 ∨ ¬v283 ∨ v320)
    (c575 : ¬v320 ∨ ¬v284 ∨ ¬v283 ∨ v299)
    (c576 : v320 ∨ ¬v299 ∨ ¬v283 ∨ ¬v284)
    (c577 : ¬v320 ∨ ¬v284 ∨ ¬v283 ∨ ¬v299)
    (c578 : v285 ∨ v306 ∨ v327 ∨ v286)
    (c579 : v285 ∨ ¬v327 ∨ v306 ∨ v286)
    (c580 : v285 ∨ ¬v306 ∨ v327 ∨ v286)
    (c581 : ¬v327 ∨ v286 ∨ ¬v306 ∨ v285)
    (c582 : v285 ∨ v306 ∨ v327 ∨ ¬v286)
    (c583 : ¬v327 ∨ ¬v286 ∨ ¬v306 ∨ v285)
    (c584 : ¬v285 ∨ v286 ∨ v306 ∨ v327)
    (c585 : ¬v327 ∨ v286 ∨ ¬v306 ∨ ¬v285)
    (c586 : ¬v285 ∨ ¬v286 ∨ v306 ∨ v327)
    (c587 : ¬v286 ∨ ¬v285 ∨ v306 ∨ ¬v327)
    (c588 : ¬v286 ∨ ¬v306 ∨ v327 ∨ ¬v285)
    (c589 : ¬v327 ∨ ¬v286 ∨ ¬v306 ∨ ¬v285)
    : False := by
  have c590 : v286 ∨ v306 ∨ v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v285 := by
      rcases c578 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c584 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c591 : ¬v286 ∨ v306 ∨ v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v285 := by
      rcases c582 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
    rcases c586 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c592 : v306 ∨ v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v286 := by
      rcases c590 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c591 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c593 : ¬v247 ∨ ¬v246 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c493 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c492 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c594 : v278 ∨ v250 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c375 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c509 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
  have c595 : ¬v249 ∨ ¬v250 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v303 := by
      rcases c504 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
    rcases c505 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c596 : ¬v250 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v249 := by
      rcases c595 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u2 : v303 := by
      rcases c500 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n0 a
    rcases c373 with a|a|a|a
    · exact absurd u2 a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c597 : v275 ∨ v276 ∨ v278 ∨ ¬v306 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v250 := by
      rcases c596 with a|a
      · exact a
      · exact absurd a n0
    rcases c594 with a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n3 a
  have c598 : v252 ∨ v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c521 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c520 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c599 : ¬v251 ∨ v278 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v250 := by
      rcases c375 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c517 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd n2 a
  have c600 : ¬v278 ∨ v250 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c513 with a|a|a|a
      · exact absurd a n1
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
    rcases c511 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c601 : ¬v250 ∨ ¬v278 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c515 with a|a|a|a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact a
    rcases c519 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c602 : ¬v278 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v250 := by
      rcases c601 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c600 with a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n1 a
  have c603 : ¬v252 ∨ v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c377 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c524 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c604 : v280 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v252 := by
      rcases c598 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c603 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c605 : v361 ∨ ¬v306 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v278 := by
      rcases c602 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v251 := by
      rcases c599 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
    have u3 : v250 := by
      rcases c509 with a|a|a|a
      · exact absurd a u2
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
    have u4 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u2
    have u5 : ¬v308 := by
      rcases c279 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n4
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n1 a
    have u6 : ¬v276 := by
      rcases c300 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n4
    have u7 : v252 := by
      rcases c522 with a|a|a|a
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u2
      · exact a
    have u8 : v275 := by
      rcases c597 with a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u1
      · exact absurd n1 a
      · exact absurd a n0
    have u9 : ¬v303 := by
      rcases c268 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a n0
    have u10 : ¬v277 := by
      rcases c295 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd a u6
    have u11 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd u3 a
      · exact a
    rcases c273 with a|a|a|a|a|a
    · exact absurd a u11
    · exact absurd a u10
    · exact absurd u7 a
    · exact absurd a u2
    · exact absurd u4 a
    · exact absurd a u6
  have c606 : v251 ∨ v278 ∨ v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v250 := by
      rcases c508 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c514 with a|a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n0
  have c607 : ¬v251 ∨ v278 ∨ v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v250 := by
      rcases c512 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c516 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n1
  have c608 : v278 ∨ v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v251 := by
      rcases c606 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c607 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c609 : ¬v280 ∨ ¬v251 ∨ v306 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v278 := by
      rcases c608 with a|a
      · exact a
      · exact absurd a n2
    have u2 : ¬v308 := by
      rcases c280 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v252 := by
      rcases c376 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u2
    rcases c529 with a|a|a|a
    · exact absurd u3 a
    · exact absurd a u2
    · exact absurd n1 a
    · exact absurd n0 a
  have c610 : v303 ∨ v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c498 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c496 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
  have c611 : ¬v303 ∨ v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c499 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    rcases c497 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c612 : v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v303 := by
      rcases c611 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c610 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c613 : ¬v252 ∨ ¬v251 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c528 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c527 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
  have c614 : ¬v251 ∨ v361 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v306 := by
      rcases c605 with a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u2 : v278 := by
      rcases c608 with a|a
      · exact a
      · exact absurd a u1
    have u3 : ¬v280 := by
      rcases c609 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n4
    have u4 : ¬v250 := by
      rcases c518 with a|a|a|a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u1
    have u5 : ¬v252 := by
      rcases c613 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u3
    have u6 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
      · exact absurd a u5
    have u7 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u4
    have u8 : ¬v304 := by
      rcases c333 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n3
      · exact absurd a n4
    have u9 : v303 := by
      rcases c265 with a|a|a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd n0 a
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd a u1
    have u10 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u6 a
    rcases c326 with a|a|a|a|a|a
    · exact absurd a u8
    · exact absurd a n3
    · exact absurd u9 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd u10 a
  have c615 : v251 ∨ ¬v278 ∨ v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v250 := by
      rcases c374 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    rcases c510 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
  have c616 : v361 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v251 := by
      rcases c614 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : ¬v306 := by
      rcases c605 with a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v278 := by
      rcases c608 with a|a
      · exact a
      · exact absurd a u2
    rcases c615 with a|a|a
    · exact absurd a u1
    · exact absurd u3 a
    · exact absurd a u2
  have c617 : ¬v275 ∨ ¬v249 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c503 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c372 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
  have c618 : ¬v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c531 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c532 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
  have c619 : v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c534 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c533 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c620 : v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v265 := by
      rcases c618 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c619 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c621 : v206 ∨ v239 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v205 := by
      rcases c452 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c458 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c622 : ¬v206 ∨ v239 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v205 := by
      rcases c456 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    rcases c460 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c623 : v239 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v206 := by
      rcases c622 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c621 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c624 : v208 ∨ v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v207 := by
      rcases c464 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
      · exact absurd a n2
    rcases c469 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c625 : ¬v208 ∨ v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v207 := by
      rcases c471 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c467 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
  have c626 : v244 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v208 := by
      rcases c624 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c625 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c627 : ¬v242 ∨ ¬v278 ∨ v279 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v280 := by
      rcases c379 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd n1 a
      · exact a
    have u2 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v207 := by
      rcases c174 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a n3
    have u4 : ¬v208 := by
      rcases c473 with a|a|a|a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
    rcases c360 with a|a|a|a
    · exact absurd a u4
    · exact absurd u3 a
    · exact absurd u2 a
    · exact absurd a u1
  have c628 : v229 ∨ ¬v208 ∨ v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v202 := by
      rcases c483 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    rcases c481 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
  have c629 : v285 ∨ v306 ∨ ¬v327 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v286 := by
      rcases c387 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c579 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c630 : ¬v150 ∨ ¬v149 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c422 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c420 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
  have c631 : v150 ∨ ¬v149 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c344 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd a n2
    rcases c418 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
  have c632 : ¬v149 ∨ v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v150 := by
      rcases c631 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c630 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
  have c633 : ¬v235 ∨ v204 ∨ v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v271 := by
      rcases c443 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c442 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
  have c634 : v235 ∨ v204 ∨ v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v271 := by
      rcases c440 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c441 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c635 : v204 ∨ v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v235 := by
      rcases c633 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c634 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c636 : ¬v230 ∨ v149 ∨ ¬v150 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c417 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c345 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd n0 a
  have c637 : ¬v185 ∨ v149 ∨ v150 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c415 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact a
    rcases c414 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c638 : v185 ∨ v149 ∨ v150 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v230 := by
      rcases c412 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c413 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd a n0
  have c639 : v150 ∨ v149 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v185 := by
      rcases c637 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c638 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c640 : ¬v235 ∨ ¬v204 ∨ v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v271 := by
      rcases c447 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c355 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a u1
  have c642 : v190 ∨ v150 ∨ v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v151 := by
      rcases c427 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c424 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c643 : ¬v260 ∨ ¬v246 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c495 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c494 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c644 : ¬v247 ∨ ¬v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v260 := by
      rcases c643 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c593 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c645 : ¬v260 ∨ ¬v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c491 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c368 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u1
  have c646 : v281 ∨ v282 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v309 := by
      rcases c545 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c546 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c647 : ¬v281 ∨ ¬v288 ∨ v309 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v282 := by
      rcases c553 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n1 a
    rcases c380 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c648 : v284 ∨ v283 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c568 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c567 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a u1
  have c649 : ¬v281 ∨ v282 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v309 := by
      rcases c647 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c550 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n1
  have c650 : v282 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v281 := by
      rcases c646 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c649 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c651 : ¬v283 ∨ ¬v282 ∨ v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v315 := by
      rcases c563 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c564 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c652 : ¬v205 ∨ ¬v239 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c357 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c462 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
  have c653 : ¬v202 ∨ ¬v208 ∨ v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v229 := by
      rcases c628 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c482 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
  have c654 : v203 ∨ ¬v200 ∨ ¬v208 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
    have u4 : v202 := by
      rcases c105 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd a u3
    have u5 : v265 := by
      rcases c653 with a|a|a
      · exact absurd u4 a
      · exact absurd n2 a
      · exact a
    have u6 : ¬v293 := by
      rcases c535 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd u1 a
    rcases c370 with a|a|a|a
    · exact absurd a u6
    · exact absurd u5 a
    · exact absurd a n3
    · exact absurd u1 a
  have c657 : ¬v149 ∨ ¬v150 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v185 := by
      rcases c423 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c421 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c658 : ¬v151 ∨ ¬v150 ∨ v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v190 := by
      rcases c431 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c430 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n2
  have c659 : v151 ∨ ¬v150 ∨ v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v190 := by
      rcases c346 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
    rcases c428 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
  have c660 : ¬v150 ∨ v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v151 := by
      rcases c658 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c659 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c662 : ¬v294 ∨ ¬v282 ∨ ¬v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v315 := by
      rcases c566 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c565 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c663 : ¬v283 ∨ ¬v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v294 := by
      rcases c662 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c651 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c664 : ¬v211 ∨ ¬v200 ∨ ¬v203 ∨ v205 ∨ ¬v209 ∨ ¬v249 ∨ v252 ∨ ¬v287 ∨ ¬v305 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a n6
    have u2 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
    have u4 : v288 := by
      rcases c490 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u1 a
    have u5 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v245 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u5 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a u2
    have u8 : ¬v284 := by
      rcases c244 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd n7 a
      · exact absurd n5 a
      · exact absurd n8 a
      · exact absurd a n6
    have u9 : v299 := by
      rcases c648 with a|a|a
      · exact absurd a u8
      · exact absurd a u6
      · exact a
    have u10 : ¬v320 := by
      rcases c570 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u8
    rcases c569 with a|a|a|a
    · exact absurd a u10
    · exact absurd u9 a
    · exact absurd a u6
    · exact absurd a u8
  have c667 : v146 ∨ ¬v145 ∨ ¬v200 ∨ ¬v203 ∨ ¬v204 ∨ ¬v208 ∨ ¬v209 ∨ ¬v215 ∨ v216 ∨ v235 ∨ ¬v245 ∨ ¬v251 ∨ ¬v271 ∨ v280 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14⟩ := hc
    have u1 : v155 := by
      rcases c393 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    have u2 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a n9
    have u3 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n13
    have u4 : ¬v252 := by
      rcases c613 with a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd a n13
    have u5 : v149 := by
      rcases c639 with a|a
      · exact absurd a u2
      · exact a
    have u6 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n5 a
      · exact absurd a n13
    have u7 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u4
    have u8 : v230 := by
      rcases c632 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : ¬v211 := by
      rcases c5 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
      · exact absurd n3 a
    have u10 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u10
    have u12 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u2
      · exact absurd u5 a
    have u13 : ¬v166 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a u10
    have u14 : v288 := by
      rcases c490 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u7 a
    have u15 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : ¬v294 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u9
    have u18 : v248 := by
      rcases c227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd n10 a
    have u19 : v212 := by
      rcases c181 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u17
      · exact absurd u15 a
      · exact absurd a u16
      · exact absurd a u9
    have u20 : v273 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u6
      · exact absurd n2 a
      · exact absurd n11 a
      · exact absurd n4 a
    have u21 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n2 a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact absurd a u4
    have u22 : ¬v238 := by
      rcases c126 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd n5 a
      · exact absurd n4 a
      · exact absurd n2 a
      · exact absurd a n8
    have u23 : v237 := by
      rcases c123 with a|a|a|a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd u19 a
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd n4 a
    have u24 : ¬v356 := by
      rcases c166 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd n12 a
      · exact absurd u20 a
      · exact absurd n4 a
      · exact absurd a n9
    have u25 : v357 := by
      rcases c167 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a n9
      · exact absurd n4 a
      · exact absurd a u21
      · exact absurd n12 a
    have u26 : ¬v360 := by
      rcases c405 with a|a|a|a
      · exact absurd u25 a
      · exact absurd a u24
      · exact absurd a n14
      · exact a
    rcases c171 with a|a|a|a|a|a
    · exact absurd a u26
    · exact absurd a u22
    · exact absurd n5 a
    · exact absurd u3 a
    · exact absurd a n13
    · exact absurd a u21
  have c668 : ¬v209 ∨ ¬v200 ∨ ¬v203 ∨ v205 ∨ ¬v208 ∨ ¬v249 ∨ ¬v251 ∨ v280 ∨ v286 ∨ ¬v287 ∨ ¬v305 ∨ v329 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
    have u3 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n3
      · exact absurd a u2
    have u4 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n7
    have u5 : ¬v252 := by
      rcases c613 with a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
    have u6 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u2
    have u7 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd n4 a
      · exact absurd a n7
    have u8 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u5
    have u9 : v149 := by
      rcases c639 with a|a
      · exact absurd a u6
      · exact a
    have u10 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u10
    have u12 : v230 := by
      rcases c632 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v145 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd a u6
    have u14 : v288 := by
      rcases c490 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd a u11
      · exact absurd u8 a
    have u15 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u14 a
    have u16 : ¬v211 := by
      rcases c664 with a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd n5 a
      · exact absurd a u5
      · exact absurd n9 a
      · exact absurd n10 a
    have u17 : v245 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u10
    have u18 : v215 := by
      rcases c100 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n6 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n8
    have u19 : ¬v216 := by
      rcases c103 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact absurd n9 a
      · exact absurd n1 a
      · exact absurd a u5
    have u20 : v146 := by
      rcases c667 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd n4 a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact absurd a u19
      · exact absurd a u2
      · exact absurd u17 a
      · exact absurd n6 a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n12
    have u21 : v154 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd u13 a
    have u22 : ¬v153 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd n1 a
      · exact absurd u20 a
      · exact absurd u13 a
      · exact absurd a u7
    have u23 : ¬v199 := by
      rcases c435 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u4 a
      · exact absurd a u22
    rcases c349 with a|a|a|a
    · exact absurd a u23
    · exact absurd a u22
    · exact absurd u4 a
    · exact absurd u21 a
  have c669 : v153 ∨ ¬v154 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v199 := by
      rcases c349 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u1 a
      · exact absurd n1 a
    rcases c435 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c670 : ¬v153 ∨ ¬v154 ∨ ¬v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v199 := by
      rcases c439 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c438 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c671 : ¬v154 ∨ v162 ∨ v207 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n3
    have u2 : ¬v153 := by
      rcases c670 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    rcases c669 with a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n3
  have c672 : ¬v294 ∨ ¬v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v315 := by
      rcases c382 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd n1 a
    rcases c562 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c673 : ¬v320 ∨ v283 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v284 := by
      rcases c570 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
    rcases c572 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c674 : ¬v245 ∨ ¬v200 ∨ v207 ∨ v209 ∨ ¬v212 ∨ v242 ∨ v247 ∨ ¬v278 ∨ ¬v282 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v201 := by
      rcases c398 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n0 a
    have u2 : ¬v306 := by
      rcases c602 with a|a
      · exact absurd n7 a
      · exact a
    have u3 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd n8 a
    have u4 : ¬v294 := by
      rcases c672 with a|a
      · exact a
      · exact absurd n8 a
    have u5 : ¬v211 := by
      rcases c182 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u4
      · exact absurd n8 a
      · exact absurd n4 a
      · exact absurd a u3
    have u6 : v248 := by
      rcases c227 with a|a|a|a|a|a
      · exact a
      · exact absurd a n6
      · exact absurd a u4
      · exact absurd n8 a
      · exact absurd a u3
      · exact absurd n0 a
    have u7 : v327 := by
      rcases c592 with a|a
      · exact absurd a u2
      · exact a
    have u8 : v251 := by
      rcases c615 with a|a|a
      · exact a
      · exact absurd n7 a
      · exact absurd a u2
    have u9 : v285 := by
      rcases c629 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u7 a
    have u10 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u2
      · exact absurd u7 a
    have u11 : ¬v250 := by
      rcases c518 with a|a|a|a
      · exact absurd n7 a
      · exact absurd u8 a
      · exact a
      · exact absurd a u2
    have u12 : v258 := by
      rcases c98 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n1 a
    have u13 : v206 := by
      rcases c134 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n7 a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u11
    have u14 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u11
    have u15 : ¬v257 := by
      rcases c247 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n7 a
      · exact absurd u8 a
      · exact absurd n0 a
      · exact absurd a u11
    have u16 : ¬v222 := by
      rcases c149 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd n7 a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a n5
    have u17 : v221 := by
      rcases c148 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n7 a
      · exact absurd u7 a
      · exact absurd u13 a
      · exact absurd a n5
    have u18 : ¬v275 := by
      rcases c617 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u11
    have u19 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u18
    have u20 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u14 a
      · exact a
      · exact absurd a u18
      · exact absurd a u11
    have u21 : ¬v205 := by
      rcases c652 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u18
    have u22 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u21
    have u23 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
    have u24 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u23
    have u25 : v219 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u22 a
      · exact absurd n1 a
      · exact absurd n4 a
      · exact absurd a n3
    have u26 : ¬v213 := by
      rcases c117 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u22 a
      · exact absurd n1 a
      · exact absurd a u21
      · exact absurd a u23
    have u27 : v273 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd u22 a
    have u28 : ¬v272 := by
      rcases c121 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u13 a
      · exact absurd u6 a
      · exact absurd u22 a
      · exact absurd a u11
    have u29 : ¬v321 := by
      rcases c187 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u25 a
      · exact absurd u17 a
      · exact absurd a n3
      · exact absurd a u3
    have u30 : v322 := by
      rcases c189 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u25 a
      · exact absurd a u3
      · exact absurd a u10
      · exact absurd a u16
    have u31 : ¬v295 := by
      rcases c116 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u14 a
      · exact absurd a u5
      · exact absurd a u26
      · exact absurd a n6
    have u32 : v299 := by
      rcases c199 with a|a|a|a|a|a
      · exact absurd a u31
      · exact absurd a u5
      · exact a
      · exact absurd a u4
      · exact absurd a u26
      · exact absurd n4 a
    have u33 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u14 a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd u24 a
    have u34 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u32 a
    have u35 : ¬v255 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u24 a
      · exact absurd u32 a
      · exact absurd a u3
      · exact absurd u6 a
    have u36 : ¬v356 := by
      rcases c285 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u27 a
      · exact absurd u24 a
      · exact absurd a u35
      · exact absurd a u34
    have u37 : v358 := by
      rcases c404 with a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd n9 a
      · exact absurd u33 a
    have u38 : v300 := by
      rcases c261 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a u11
      · exact absurd n7 a
      · exact absurd a u28
      · exact absurd a u2
    have u39 : v236 := by
      rcases c219 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a n5
      · exact absurd u19 a
      · exact absurd u33 a
      · exact absurd n9 a
    rcases c188 with a|a|a|a|a|a
    · exact absurd u38 a
    · exact absurd u39 a
    · exact absurd n4 a
    · exact absurd u25 a
    · exact absurd a u3
    · exact absurd a u29
  have c675 : v284 ∨ v283 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c570 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c569 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c676 : v284 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v299 := by
      rcases c648 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    rcases c675 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u1 a
  have c677 : v281 ∨ v209 ∨ v217 ∨ v220 ∨ ¬v288 ∨ ¬v299 ∨ ¬v315 ∨ v316 ∨ ¬v330 ∨ ¬v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v309 := by
      rcases c548 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd n4 a
    have u4 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n5 a
    have u5 : v218 := by
      rcases c176 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u1 a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a u3
    have u6 : ¬v331 := by
      rcases c335 with a|a|a|a|a|a
      · exact a
      · exact absurd n9 a
      · exact absurd a u3
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd n8 a
    have u7 : v311 := by
      rcases c211 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u3
      · exact absurd a n3
      · exact absurd a n7
    have u8 : ¬v335 := by
      rcases c337 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n9 a
      · exact absurd a n7
      · exact absurd a u4
      · exact absurd u7 a
    rcases c400 with a|a|a|a
    · exact absurd a u8
    · exact absurd a u6
    · exact absurd n9 a
    · exact absurd n8 a
  have c678 : ¬v265 ∨ ¬v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c535 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n1 a
    rcases c370 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
  have c679 : ¬v315 ∨ ¬v208 ∨ v209 ∨ ¬v227 ∨ ¬v241 ∨ v242 ∨ ¬v278 ∨ v280 ∨ ¬v287 ∨ ¬v291 ∨ ¬v305 ∨ v329 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v306 := by
      rcases c602 with a|a
      · exact absurd n6 a
      · exact a
    have u2 : v251 := by
      rcases c604 with a|a
      · exact absurd a n7
      · exact a
    have u3 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n7
    have u4 : ¬v252 := by
      rcases c613 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n7
    have u5 : v327 := by
      rcases c592 with a|a
      · exact absurd a u1
      · exact a
    have u6 : ¬v250 := by
      rcases c518 with a|a|a|a
      · exact absurd n6 a
      · exact absurd u2 a
      · exact a
      · exact absurd a u1
    have u7 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n1 a
      · exact absurd a n7
    have u8 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u4
    have u9 : ¬v265 := by
      rcases c678 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u4
    have u10 : v285 := by
      rcases c629 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u5 a
    have u11 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u1
      · exact absurd u5 a
    have u12 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u6
    have u13 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
    have u15 : ¬v202 := by
      rcases c653 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
    have u16 : v229 := by
      rcases c628 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u9
    have u17 : ¬v275 := by
      rcases c617 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u6
    have u18 : v288 := by
      rcases c490 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u14
      · exact absurd u8 a
    have u19 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u17
    have u20 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u17
      · exact absurd a u6
    have u21 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v205 := by
      rcases c652 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u17
    have u23 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u21 a
    have u24 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u21 a
      · exact absurd a u23
    have u25 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u22
    have u26 : v206 := by
      rcases c454 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u22
      · exact absurd a u17
    have u27 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u22
    have u28 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u22
      · exact absurd a u27
    have u29 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u23
    have u30 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u27
    have u31 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd u29 a
      · exact a
      · exact absurd a u11
      · exact absurd u20 a
      · exact absurd a u1
    have u32 : v245 := by
      rcases c239 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u2 a
      · exact absurd u12 a
      · exact absurd a u11
      · exact absurd a u31
    have u33 : v149 := by
      rcases c639 with a|a
      · exact absurd a u30
      · exact a
    have u34 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u12 a
      · exact absurd u21 a
      · exact absurd u29 a
      · exact absurd a u13
    have u35 : v248 := by
      rcases c227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd a u23
      · exact absurd u32 a
    have u36 : v230 := by
      rcases c632 with a|a
      · exact absurd u33 a
      · exact a
    have u37 : v299 := by
      rcases c304 with a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd u21 a
      · exact a
      · exact absurd a u23
      · exact absurd u29 a
      · exact absurd a u24
    have u38 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u12 a
      · exact absurd u25 a
      · exact absurd u28 a
      · exact absurd a u22
    have u39 : ¬v272 := by
      rcases c254 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u12 a
      · exact absurd u28 a
      · exact absurd a u6
      · exact absurd a u17
    have u40 : ¬v261 := by
      rcases c108 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u38 a
      · exact absurd u25 a
      · exact absurd u8 a
      · exact absurd u35 a
    have u41 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u37 a
    have u42 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd u12 a
      · exact absurd u28 a
      · exact absurd a u22
      · exact absurd a u27
    have u43 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd n1 a
      · exact absurd a u4
    have u44 : v201 := by
      rcases c398 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u38 a
      · exact absurd u32 a
    have u45 : v273 := by
      rcases c168 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd n6 a
      · exact absurd a u7
      · exact absurd u25 a
      · exact absurd u26 a
    have u46 : ¬v255 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd u28 a
      · exact absurd u37 a
      · exact absurd a u23
      · exact absurd u35 a
    have u47 : v357 := by
      rcases c206 with a|a|a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd n10 a
      · exact absurd a u42
      · exact absurd a u27
      · exact absurd u37 a
    have u48 : v266 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd u43 a
      · exact absurd u25 a
      · exact absurd a u13
      · exact absurd u38 a
    have u49 : v219 := by
      rcases c89 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u32 a
      · exact absurd a u46
      · exact absurd u44 a
      · exact absurd a u23
    have u50 : ¬v254 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u43 a
      · exact absurd u32 a
      · exact absurd u38 a
      · exact absurd a u13
    have u51 : v256 := by
      rcases c91 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd a u22
      · exact absurd u32 a
      · exact absurd u12 a
      · exact absurd u38 a
    have u52 : ¬v259 := by
      rcases c101 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd n1 a
      · exact absurd u32 a
      · exact absurd u38 a
      · exact absurd a u4
    have u53 : ¬v220 := by
      rcases c90 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd a u22
      · exact absurd u38 a
      · exact absurd a n2
      · exact absurd a u42
    have u54 : v258 := by
      rcases c144 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u25 a
      · exact absurd a u7
      · exact absurd a u46
      · exact absurd u45 a
    have u55 : v345 := by
      rcases c283 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd n0 a
      · exact absurd u28 a
      · exact absurd u48 a
      · exact absurd a u46
    have u56 : ¬v316 := by
      rcases c231 with a|a|a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u21 a
      · exact absurd u51 a
      · exact absurd u32 a
      · exact absurd u29 a
    have u57 : ¬v323 := by
      rcases c236 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u32 a
      · exact absurd n8 a
      · exact absurd a u46
      · exact absurd a u23
    have u58 : v223 := by
      rcases c151 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd n1 a
      · exact absurd u3 a
      · exact absurd a n7
      · exact absurd a n11
    have u59 : v322 := by
      rcases c288 with a|a|a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd a u46
      · exact absurd a u52
      · exact absurd u54 a
      · exact absurd a n11
    have u60 : ¬v325 := by
      rcases c241 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u29 a
      · exact absurd u54 a
      · exact absurd u32 a
      · exact absurd a u11
    have u61 : ¬v217 := by
      rcases c140 with a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u16 a
      · exact absurd n1 a
      · exact absurd u44 a
      · exact absurd a u15
    have u62 : ¬v356 := by
      rcases c390 with a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd a u41
      · exact absurd a u60
    have u63 : ¬v360 := by
      rcases c405 with a|a|a|a
      · exact absurd u47 a
      · exact absurd a u62
      · exact absurd a n12
      · exact a
    have u64 : v238 := by
      rcases c221 with a|a|a|a|a|a
      · exact absurd a u63
      · exact absurd n4 a
      · exact absurd a n12
      · exact absurd u3 a
      · exact a
      · exact absurd u47 a
    have u65 : v225 := by
      rcases c212 with a|a|a|a|a|a
      · exact a
      · exact absurd u64 a
      · exact absurd u16 a
      · exact absurd a u61
      · exact absurd u49 a
      · exact absurd u58 a
    have u66 : v330 := by
      rcases c154 with a|a|a|a|a|a
      · exact a
      · exact absurd u65 a
      · exact absurd u36 a
      · exact absurd u25 a
      · exact absurd a u40
      · exact absurd u48 a
    have u67 : v281 := by
      rcases c677 with a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u61
      · exact absurd a u53
      · exact absurd u18 a
      · exact absurd u37 a
      · exact absurd n0 a
      · exact absurd a u56
      · exact absurd u66 a
      · exact absurd u55 a
    have u68 : v309 := by
      rcases c553 with a|a|a|a
      · exact absurd u21 a
      · exact absurd u67 a
      · exact a
      · exact absurd u18 a
    rcases c554 with a|a|a|a
    · exact absurd u68 a
    · exact absurd u67 a
    · exact absurd u21 a
    · exact absurd u18 a
  have c680 : v315 ∨ ¬v282 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c382 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
    rcases c561 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u1
  have c681 : ¬v278 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v306 := by
      rcases c602 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : v361 := by
      rcases c616 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v327 := by
      rcases c592 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v251 := by
      rcases c615 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
    have u5 : v285 := by
      rcases c629 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u3 a
    have u6 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd u3 a
    have u7 : ¬v250 := by
      rcases c518 with a|a|a|a
      · exact absurd n0 a
      · exact absurd u4 a
      · exact a
      · exact absurd a u1
    have u8 : ¬v280 := by
      rcases c609 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u1
      · exact absurd a n3
    have u9 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u7
    have u10 : ¬v252 := by
      rcases c613 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u8
    have u11 : ¬v275 := by
      rcases c617 with a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u7
    have u12 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u10
    have u13 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u4 a
      · exact absurd a u10
    have u14 : ¬v265 := by
      rcases c678 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u10
    have u15 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u11
    have u16 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u17 : ¬v279 := by
      rcases c296 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u11
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u2 a
    have u18 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u18
    have u20 : ¬v329 := by
      rcases c315 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u6
      · exact absurd u13 a
      · exact absurd a u1
      · exact absurd u3 a
    have u21 : v293 := by
      rcases c536 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd u12 a
    have u22 : ¬v205 := by
      rcases c652 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u11
    have u23 : v307 := by
      rcases c329 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd u2 a
    have u24 : ¬v242 := by
      rcases c627 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a n3
    have u25 : v288 := by
      rcases c490 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u12 a
    have u26 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u22
    have u27 : v206 := by
      rcases c454 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u22
      · exact absurd a u11
    have u28 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u22
    have u29 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a u22
      · exact absurd a u28
    have u30 : v305 := by
      rcases c388 with a|a|a|a
      · exact absurd u23 a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
    have u31 : v287 := by
      rcases c314 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u6
      · exact absurd a u1
    have u32 : v291 := by
      rcases c250 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd u21 a
    have u33 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u25 a
    have u34 : v243 := by
      rcases c173 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd a u24
      · exact absurd a n3
    have u35 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u33 a
    have u36 : v241 := by
      rcases c367 with a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u15 a
      · exact absurd a n1
    have u37 : v208 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u27 a
      · exact absurd a u17
    have u38 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u35
    have u39 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u35
    have u40 : ¬v202 := by
      rcases c653 with a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a u14
    have u41 : v229 := by
      rcases c628 with a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a u14
    have u42 : v245 := by
      rcases c244 with a|a|a|a|a|a
      · exact absurd u38 a
      · exact a
      · exact absurd u31 a
      · exact absurd u9 a
      · exact absurd u30 a
      · exact absurd a u10
    have u43 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u39 a
      · exact a
      · exact absurd u33 a
      · exact absurd a u35
    have u44 : v227 := by
      rcases c161 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u37 a
      · exact absurd u41 a
      · exact absurd a u40
      · exact absurd u27 a
    have u45 : v248 := by
      rcases c227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u43
      · exact absurd u33 a
      · exact absurd a u35
      · exact absurd u42 a
    have u46 : v209 := by
      rcases c679 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u39 a
      · exact absurd u37 a
      · exact a
      · exact absurd u44 a
      · exact absurd u36 a
      · exact absurd a u24
      · exact absurd n0 a
      · exact absurd a u8
      · exact absurd u31 a
      · exact absurd u32 a
      · exact absurd u30 a
      · exact absurd a u20
      · exact absurd a n2
    have u47 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd u9 a
      · exact absurd u26 a
      · exact absurd u29 a
      · exact absurd a u22
    have u48 : ¬v203 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd u46 a
      · exact absurd u47 a
      · exact a
      · exact absurd a u22
      · exact absurd u37 a
      · exact absurd u9 a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u6
      · exact absurd u31 a
      · exact absurd u30 a
      · exact absurd a u20
      · exact absurd a n2
    rcases c654 with a|a|a|a
    · exact absurd a u48
    · exact absurd u47 a
    · exact absurd u37 a
    · exact absurd a u10
  have c682 : ¬v249 ∨ ¬v250 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v275 := by
      rcases c595 with a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
    rcases c507 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c683 : v249 ∨ ¬v250 ∨ ¬v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c501 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
      · exact a
    rcases c373 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n1 a
  have c684 : ¬v303 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v249 := by
      rcases c682 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c683 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c685 : ¬v205 ∨ ¬v206 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v239 := by
      rcases c461 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c463 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c686 : v299 ∨ v283 ∨ ¬v284 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c384 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
    rcases c571 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c687 : ¬v247 ∨ v246 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v260 := by
      rcases c489 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c369 with a|a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a u1
  have c688 : ¬v247 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v246 := by
      rcases c644 with a|a
      · exact absurd n0 a
      · exact a
    rcases c687 with a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n1 a
  have c689 : ¬v229 ∨ v202 ∨ v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v265 := by
      rcases c475 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c476 with a|a|a|a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
  have c690 : v229 ∨ v202 ∨ v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v265 := by
      rcases c477 with a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c478 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n2
  have c691 : v202 ∨ v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v229 := by
      rcases c689 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c690 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c692 : ¬v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c539 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c540 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c693 : ¬v288 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v260 := by
      rcases c485 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    rcases c487 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c694 : ¬v288 ∨ v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v247 := by
      rcases c688 with a|a
      · exact a
      · exact absurd n0 a
    rcases c693 with a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
  have c695 : ¬v293 ∨ v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v265 := by
      rcases c537 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
    rcases c371 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
  have c696 : v247 ∨ v246 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v260 := by
      rcases c484 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c486 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c697 : v286 ∨ ¬v285 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v327 := by
      rcases c585 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c386 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c698 : ¬v286 ∨ ¬v285 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v327 := by
      rcases c588 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd n1 a
    rcases c589 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c699 : ¬v285 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v286 := by
      rcases c697 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c698 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c700 : ¬v282 ∨ ¬v281 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v309 := by
      rcases c552 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c551 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
  have c701 : ¬v315 ∨ v282 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c558 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c556 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c702 : v315 ∨ v282 ∨ v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c557 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c555 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c703 : v283 ∨ v282 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v315 := by
      rcases c702 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c701 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c704 : ¬v299 ∨ ¬v283 ∨ ¬v284 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c577 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c576 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c705 : v299 ∨ ¬v283 ∨ ¬v284 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v320 := by
      rcases c575 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c574 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a u1
  have c706 : ¬v283 ∨ ¬v284 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v299 := by
      rcases c704 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c705 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c707 : ¬v245 ∨ v246 ∨ v249 ∨ ¬v250 ∨ v285 ∨ v291 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : v281 := by
      rcases c225 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd a n5
    have u3 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v284 := by
      rcases c237 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd n0 a
    have u5 : ¬v282 := by
      rcases c700 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
    have u6 : ¬v283 := by
      rcases c706 with a|a
      · exact a
      · exact absurd u4 a
    rcases c703 with a|a
    · exact absurd a u6
    · exact absurd a u5
  have c708 : v294 ∨ v282 ∨ ¬v283 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v315 := by
      rcases c559 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
      · exact a
    rcases c383 with a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n2 a
  have c709 : v235 ∨ ¬v204 ∨ ¬v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v271 := by
      rcases c449 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c448 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c710 : ¬v204 ∨ ¬v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v235 := by
      rcases c709 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : v271 := by
      rcases c450 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c451 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c711 : ¬v283 ∨ ¬v200 ∨ ¬v205 ∨ ¬v209 ∨ v245 ∨ ¬v247 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6⟩ := hc
    have u1 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v282 := by
      rcases c663 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v204 := by
      rcases c710 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : v295 := by
      rcases c230 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n5 a
      · exact absurd a u2
      · exact absurd a n4
      · exact absurd a n6
    have u5 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd n0 a
    have u6 : ¬v299 := by
      rcases c303 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd a u1
    have u7 : ¬v248 := by
      rcases c252 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact absurd u5 a
      · exact a
      · exact absurd n5 a
      · exact absurd a n6
      · exact absurd a u6
    have u8 : v212 := by
      rcases c87 with a|a|a|a|a|a
      · exact a
      · exact absurd n3 a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd a u7
    rcases c353 with a|a|a|a
    · exact absurd a u7
    · exact absurd n1 a
    · exact absurd a u3
    · exact absurd u8 a
  have c712 : v281 ∨ ¬v282 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v309 := by
      rcases c381 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
    rcases c547 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n0
  have c713 : ¬v282 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v281 := by
      rcases c712 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c700 with a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n1
  have c714 : v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c541 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
    rcases c542 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c715 : ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v265 := by
      rcases c714 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c692 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c716 : ¬v327 ∨ v285 ∨ ¬v306 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v286 := by
      rcases c581 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c583 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c717 : ¬v209 ∨ ¬v205 ∨ v245 ∨ ¬v247 ∨ v249 ∨ ¬v256 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v288 := by
      rcases c688 with a|a
      · exact absurd n3 a
      · exact a
    have u2 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u2
    have u4 : ¬v200 := by
      rcases c711 with a|a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    have u5 : ¬v201 := by
      rcases c397 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd n0 a
      · exact absurd a n2
    rcases c92 with a|a|a|a|a|a
    · exact absurd a u5
    · exact absurd a u4
    · exact absurd n1 a
    · exact absurd n5 a
    · exact absurd a n2
    · exact absurd a n4
  have c718 : v281 ∨ v282 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v309 := by
      rcases c544 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c543 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a n1
  have c719 : ¬v155 ∨ v145 ∨ v200 ∨ ¬v201 ∨ v209 ∨ ¬v214 ∨ ¬v250 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v146 := by
      rcases c392 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v245 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n2
      · exact absurd n6 a
      · exact a
      · exact absurd a n4
      · exact absurd a n7
    have u3 : v147 := by
      rcases c2 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
      · exact absurd n3 a
      · exact absurd a n2
      · exact absurd a n4
    have u4 : v164 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u2
    rcases c394 with a|a|a|a
    · exact absurd u3 a
    · exact absurd a n4
    · exact absurd u4 a
    · exact absurd a u1
  have c720 : v199 ∨ v154 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v153 := by
      rcases c436 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n2
      · exact absurd a n1
    rcases c432 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c721 : v154 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v199 := by
      rcases c720 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v153 := by
      rcases c348 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
    rcases c433 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u2
    · exact absurd a n1
  have c722 : v204 ∨ v200 ∨ ¬v201 ∨ ¬v207 ∨ v208 ∨ v209 ∨ ¬v211 ∨ v212 ∨ ¬v214 ∨ v215 ∨ ¬v216 ∨ v248 ∨ v249 ∨ ¬v250 ∨ v251 ∨ ¬v252 ∨ ¬v256 ∨ v276 ∨ v285 ∨ v299 ∨ v325 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21⟩ := hc
    have u1 : v205 := by
      rcases c635 with a|a
      · exact absurd a n0
      · exact a
    have u2 : ¬v237 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a n7
      · exact absurd n3 a
    have u3 : ¬v273 := by
      rcases c125 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd n3 a
      · exact absurd a n14
    have u4 : v274 := by
      rcases c128 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n15 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a n11
    have u5 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n15 a
    have u6 : ¬v293 := by
      rcases c695 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd n15 a
    have u7 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a n4
    have u8 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a n14
    have u9 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u5
    have u10 : v265 := by
      rcases c538 with a|a|a|a
      · exact absurd a u6
      · exact absurd a u5
      · exact a
      · exact absurd n15 a
    have u11 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
    have u12 : ¬v244 := by
      rcases c470 with a|a|a|a
      · exact absurd a n4
      · exact a
      · exact absurd u8 a
      · exact absurd n3 a
    have u13 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u9
    have u14 : ¬v229 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a n4
      · exact absurd u7 a
    have u15 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u11 a
      · exact absurd a u9
    have u16 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u11 a
      · exact absurd u15 a
      · exact absurd a n1
      · exact absurd a u5
    have u17 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a n0
      · exact absurd a n11
      · exact absurd u11 a
    have u18 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u13
    have u19 : v281 := by
      rcases c718 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd a u9
    have u20 : ¬v230 := by
      rcases c110 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n1
      · exact a
      · exact absurd a n0
      · exact absurd n6 a
      · exact absurd a n7
    have u21 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u18 a
      · exact a
    have u22 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u18 a
    have u23 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u21
      · exact absurd a n19
    have u24 : ¬v210 := by
      rcases c175 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd u19 a
      · exact absurd a n5
      · exact absurd a u13
      · exact absurd a u9
    have u25 : ¬v149 := by
      rcases c632 with a|a
      · exact a
      · exact absurd a u20
    have u26 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd u22 a
    have u27 : v150 := by
      rcases c639 with a|a
      · exact a
      · exact absurd a u25
    have u28 : ¬v145 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u25
      · exact absurd u27 a
      · exact absurd a n0
      · exact absurd a u20
    have u29 : v185 := by
      rcases c416 with a|a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd u27 a
    have u30 : v235 := by
      rcases c660 with a|a
      · exact absurd u27 a
      · exact a
    have u31 : v231 := by
      rcases c162 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u30 a
      · exact absurd a n0
      · exact absurd a u20
      · exact absurd a u16
    have u32 : ¬v271 := by
      rcases c445 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u30 a
      · exact absurd a n0
    have u33 : ¬v151 := by
      rcases c49 with a|a|a|a|a|a
      · exact absurd u31 a
      · exact absurd u27 a
      · exact absurd u30 a
      · exact a
      · exact absurd a u25
      · exact absurd a u20
    have u34 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a n11
      · exact absurd a u32
      · exact absurd u18 a
      · exact absurd u23 a
      · exact absurd a n19
    have u35 : ¬v190 := by
      rcases c429 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u30 a
      · exact absurd a u33
    have u36 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u34 a
      · exact absurd u23 a
      · exact a
      · exact absurd a u17
      · exact absurd a u32
      · exact absurd a u26
    have u37 : v159 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd u29 a
      · exact absurd a u17
      · exact absurd a u32
      · exact absurd a u36
    have u38 : ¬v155 := by
      rcases c719 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n5
      · exact absurd n8 a
      · exact absurd n13 a
      · exact absurd a n18
    have u39 : ¬v163 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd n15 a
      · exact absurd u4 a
      · exact absurd u37 a
      · exact absurd a n11
    have u40 : ¬v158 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u11 a
      · exact absurd u37 a
      · exact absurd a n11
      · exact absurd a u17
    have u41 : v225 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd a n7
      · exact absurd a n0
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd a u24
    have u42 : v238 := by
      rcases c157 with a|a|a|a|a|a
      · exact absurd u41 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n4
      · exact absurd a u14
      · exact absurd a n0
    have u43 : v154 := by
      rcases c721 with a|a
      · exact a
      · exact absurd a u12
    have u44 : ¬v189 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u40
      · exact absurd a u39
    have u45 : ¬v234 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd a u28
      · exact absurd a u25
      · exact absurd a u16
      · exact absurd a n4
    have u46 : ¬v153 := by
      rcases c57 with a|a|a|a|a|a
      · exact absurd u42 a
      · exact absurd u43 a
      · exact absurd u27 a
      · exact a
      · exact absurd a u2
      · exact absurd a u12
    have u47 : v348 := by
      rcases c54 with a|a|a|a|a|a
      · exact absurd a u44
      · exact a
      · exact absurd a u25
      · exact absurd a u20
      · exact absurd u29 a
      · exact absurd a u45
    have u48 : v199 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd a u12
      · exact absurd a u46
    have u49 : ¬v192 := by
      rcases c347 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u46
      · exact absurd u27 a
    have u50 : v354 := by
      rcases c56 with a|a|a|a|a|a
      · exact absurd a u44
      · exact a
      · exact absurd u43 a
      · exact absurd a u12
      · exact absurd a u45
      · exact absurd u48 a
    have u51 : ¬v347 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u29 a
      · exact absurd u37 a
      · exact absurd a u17
      · exact absurd a u3
    have u52 : ¬v360 := by
      rcases c217 with a|a|a|a|a|a
      · exact absurd u47 a
      · exact absurd u42 a
      · exact a
      · exact absurd u50 a
      · exact absurd a u45
      · exact absurd a u12
    rcases c402 with a|a|a|a
    · exact absurd u50 a
    · exact absurd u47 a
    · exact absurd a u52
    · exact absurd a u51
  have c723 : v200 ∨ ¬v205 ∨ ¬v207 ∨ v208 ∨ v245 ∨ v249 ∨ ¬v250 ∨ v251 ∨ ¬v252 ∨ ¬v256 ∨ v276 ∨ v285 ∨ ¬v286 ∨ v287 ∨ v325 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15⟩ := hc
    have u1 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a n7
    have u2 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n8 a
    have u3 : ¬v308 := by
      rcases c525 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n7
      · exact absurd n8 a
    have u4 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u4
    have u6 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u4
    have u7 : ¬v209 := by
      rcases c717 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n4
      · exact absurd u5 a
      · exact absurd a n5
      · exact absurd n9 a
    have u8 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u6
    have u9 : v216 := by
      rcases c102 with a|a|a|a|a|a
      · exact absurd a u7
      · exact a
      · exact absurd n8 a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd a n13
    have u10 : v211 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a u7
      · exact absurd a n4
      · exact absurd a u6
    have u11 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u8 a
      · exact a
    have u12 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u8 a
    have u13 : ¬v215 := by
      rcases c192 with a|a|a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd n12 a
      · exact absurd a u7
      · exact absurd a n13
      · exact absurd a u3
    have u14 : ¬v212 := by
      rcases c183 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact absurd u12 a
      · exact absurd a u7
      · exact absurd a u6
    have u15 : v295 := by
      rcases c230 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a n4
      · exact absurd a n5
    have u16 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u5 a
      · exact absurd u12 a
      · exact absurd a n4
      · exact absurd a u6
    have u17 : ¬v299 := by
      rcases c303 with a|a|a|a|a|a
      · exact absurd u15 a
      · exact absurd u12 a
      · exact a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd a u11
    have u18 : v201 := by
      rcases c92 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n9 a
      · exact absurd a n4
      · exact absurd a n5
    have u19 : v214 := by
      rcases c96 with a|a|a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a n11
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n6 a
    have u20 : v204 := by
      rcases c722 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u18 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u7
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a u16
      · exact absurd a n5
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd n8 a
      · exact absurd n9 a
      · exact absurd a n10
      · exact absurd a n11
      · exact absurd a u17
      · exact absurd a n14
      · exact absurd a n15
    have u21 : v235 := by
      rcases c709 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd n1 a
    have u22 : v271 := by
      rcases c450 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u21 a
      · exact absurd u20 a
    rcases c451 with a|a|a|a
    · exact absurd u22 a
    · exact absurd n1 a
    · exact absurd u21 a
    · exact absurd u20 a
  have c724 : ¬v204 ∨ ¬v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v235 := by
      rcases c709 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    have u2 : v271 := by
      rcases c450 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u1 a
      · exact absurd n0 a
    rcases c451 with a|a|a|a
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n0 a
  have c725 : ¬v271 ∨ v204 ∨ ¬v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v235 := by
      rcases c445 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c356 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c726 : v204 ∨ ¬v200 ∨ ¬v205 ∨ v248 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
    rcases c118 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n4
    · exact absurd a n3
  have c727 : v206 ∨ v205 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v239 := by
      rcases c455 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a n0
    rcases c453 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
  have c728 : ¬v206 ∨ v205 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v239 := by
      rcases c457 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c358 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n0 a
  have c729 : v205 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v206 := by
      rcases c727 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    rcases c728 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c730 : v278 ∨ v245 ∨ ¬v252 ∨ ¬v256 ∨ ¬v275 ∨ v276 ∨ ¬v277 ∨ v287 ∨ v325 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9⟩ := hc
    have u1 : v205 := by
      rcases c729 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n2 a
    have u3 : v306 := by
      rcases c608 with a|a
      · exact absurd a n0
      · exact a
    have u4 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u2
    have u6 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u5
    have u7 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u3 a
    have u8 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u3 a
    have u9 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd a u8
      · exact a
    have u10 : ¬v251 := by
      rcases c599 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u3 a
    have u11 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u5
    have u12 : v250 := by
      rcases c509 with a|a|a|a
      · exact absurd a u10
      · exact absurd a n0
      · exact a
      · exact absurd u3 a
    have u13 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u11
    have u14 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u14
      · exact absurd n4 a
      · exact absurd u12 a
      · exact a
    have u16 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u13 a
    have u17 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u6 a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd a u11
    have u18 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u15
    have u19 : v207 := by
      rcases c130 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd a n5
      · exact absurd u1 a
      · exact absurd a u10
      · exact absurd a u15
    have u20 : ¬v208 := by
      rcases c131 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u18
      · exact a
      · exact absurd u1 a
      · exact absurd n2 a
      · exact absurd a u15
    rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u1 a
    · exact absurd u19 a
    · exact absurd a u20
    · exact absurd a n1
    · exact absurd a u15
    · exact absurd u12 a
    · exact absurd a u10
    · exact absurd n2 a
    · exact absurd n3 a
    · exact absurd a n5
    · exact absurd a u7
    · exact absurd u9 a
    · exact absurd a n7
    · exact absurd a n8
    · exact absurd a n9
  have c731 : v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v361 := by
      rcases c616 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : ¬v278 := by
      rcases c681 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v306 := by
      rcases c608 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u3 a
    have u6 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u5
      · exact a
    have u7 : ¬v251 := by
      rcases c599 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
    have u8 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u7
    have u9 : ¬v308 := by
      rcases c279 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a n2
      · exact absurd a u2
      · exact absurd a u7
      · exact absurd u3 a
    have u10 : v250 := by
      rcases c509 with a|a|a|a
      · exact absurd a u7
      · exact absurd a u2
      · exact a
      · exact absurd u3 a
    have u11 : v252 := by
      rcases c522 with a|a|a|a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u7
      · exact a
    have u12 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v275 := by
      rcases c267 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd u10 a
      · exact a
      · exact absurd a u2
      · exact absurd u3 a
    have u14 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : ¬v293 := by
      rcases c695 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u11 a
    have u16 : ¬v307 := by
      rcases c327 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
      · exact absurd a u12
      · exact absurd a n0
      · exact absurd a n2
    have u17 : v324 := by
      rcases c309 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd a u5
    have u18 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u12
      · exact absurd u13 a
      · exact absurd u10 a
      · exact a
    have u19 : v279 := by
      rcases c298 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u2
      · exact absurd u13 a
      · exact absurd a n0
      · exact absurd a n2
    have u20 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u14
    have u21 : ¬v291 := by
      rcases c251 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
      · exact absurd a u15
      · exact absurd u10 a
    have u22 : ¬v287 := by
      rcases c313 with a|a|a|a|a|a
      · exact absurd a u16
      · exact a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a u9
    have u23 : v277 := by
      rcases c378 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u13 a
      · exact absurd a n0
    have u24 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u20
    have u25 : ¬v245 := by
      rcases c707 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd a u18
      · exact absurd u10 a
      · exact absurd a u4
      · exact absurd a u21
    have u26 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u24
    have u27 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u26 a
      · exact a
    have u28 : v304 := by
      rcases c306 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u12
      · exact absurd u6 a
    have u29 : ¬v325 := by
      rcases c308 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u6 a
      · exact absurd u17 a
      · exact absurd a u4
      · exact absurd a u5
    have u30 : ¬v276 := by
      rcases c277 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a n1
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u9
    have u31 : v256 := by
      rcases c242 with a|a|a|a|a|a
      · exact absurd a u29
      · exact a
      · exact absurd a u18
      · exact absurd u28 a
      · exact absurd a u27
      · exact absurd a u30
    rcases c730 with a|a|a|a|a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd a u25
    · exact absurd u11 a
    · exact absurd u31 a
    · exact absurd u13 a
    · exact absurd a u30
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd a u29
    · exact absurd a n1
  have c732 : ¬v250 ∨ v249 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd n0 a
    rcases c500 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
  have c733 : v249 ∨ v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v250 := by
      rcases c612 with a|a
      · exact absurd a n0
      · exact a
    rcases c732 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c734 : v283 ∨ v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a n0
    rcases c686 with a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u1 a
  have c735 : v247 ∨ ¬v246 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v260 := by
      rcases c490 with a|a|a|a
      · exact absurd a n2
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c645 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
  have c736 : ¬v246 ∨ v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd n0 a
    rcases c735 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c737 : v306 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v278 := by
      rcases c608 with a|a
      · exact a
      · exact absurd a n0
    rcases c615 with a|a|a
    · exact absurd a n1
    · exact absurd u1 a
    · exact absurd a n0
  have c738 : ¬v280 ∨ ¬v251 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c530 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c529 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c739 : ¬v251 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v280 := by
      rcases c738 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c613 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c740 : ¬v306 ∨ v250 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v278 := by
      rcases c602 with a|a
      · exact a
      · exact absurd n0 a
    rcases c509 with a|a|a|a
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
  have c741 : v251 ∨ v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a n0
    rcases c740 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c742 : ¬v202 ∨ v208 ∨ v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v229 := by
      rcases c354 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n2
      · exact absurd a n1
      · exact a
    rcases c480 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c743 : v208 ∨ v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v202 := by
      rcases c742 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c691 with a|a
    · exact absurd a u1
    · exact absurd a n0
  have c744 : v306 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v327 := by
      rcases c629 with a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact a
    rcases c592 with a|a
    · exact absurd a n0
    · exact absurd a u1
  have c745 : ¬v306 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := by
      rcases c602 with a|a
      · exact a
      · exact absurd n0 a
    rcases c599 with a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
  have c746 : ¬v281 ∨ ¬v282 ∨ ¬v288 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v309 := by
      rcases c647 with a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
    rcases c554 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c747 : v205 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v275 := by
      rcases c729 with a|a
      · exact absurd a n0
      · exact a
    have u2 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a n0
    have u3 : v362 := by
      rcases c731 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    have u4 : v249 := by
      rcases c733 with a|a
      · exact a
      · exact absurd a u1
    have u5 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u1
    have u6 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
    have u7 : ¬v250 := by
      rcases c595 with a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u1
    have u8 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u6
    have u9 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u6
    have u10 : v251 := by
      rcases c741 with a|a
      · exact a
      · exact absurd a u7
    have u11 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd a u1
      · exact absurd a u7
    have u12 : v149 := by
      rcases c639 with a|a
      · exact absurd a u9
      · exact a
    have u13 : ¬v252 := by
      rcases c739 with a|a
      · exact absurd u10 a
      · exact a
    have u14 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v280 := by
      rcases c609 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
      · exact absurd a n2
    have u16 : v230 := by
      rcases c632 with a|a
      · exact absurd u12 a
      · exact a
    have u17 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u13
    have u18 : v285 := by
      rcases c744 with a|a
      · exact absurd a u14
      · exact a
    have u19 : v327 := by
      rcases c592 with a|a
      · exact absurd a u14
      · exact a
    have u20 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u15
    have u21 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u10 a
      · exact absurd a u13
    have u22 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u17 a
    have u23 : v288 := by
      rcases c736 with a|a
      · exact absurd u17 a
      · exact a
    have u24 : ¬v265 := by
      rcases c678 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u13
    have u25 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd u19 a
    have u26 : ¬v329 := by
      rcases c315 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u25
      · exact absurd u21 a
      · exact absurd a u14
      · exact absurd u19 a
    have u27 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u23 a
    have u28 : v208 := by
      rcases c743 with a|a
      · exact a
      · exact absurd a u24
    have u29 : v229 := by
      rcases c628 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u24
    have u30 : v293 := by
      rcases c536 with a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd a u13
      · exact absurd u17 a
    have u31 : ¬v281 := by
      rcases c746 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u23 a
    have u32 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u27 a
    have u33 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u28 a
      · exact absurd a u15
    have u34 : ¬v202 := by
      rcases c653 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u24
    have u35 : ¬v309 := by
      rcases c548 with a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u31
      · exact absurd u23 a
    have u36 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u32
    have u37 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u32
    have u38 : v299 := by
      rcases c734 with a|a
      · exact absurd a u32
      · exact a
    have u39 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd u38 a
    have u40 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u18 a
      · exact absurd u36 a
      · exact a
      · exact absurd a u25
      · exact absurd u11 a
      · exact absurd a u14
    have u41 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u4 a
      · exact absurd u36 a
      · exact absurd u11 a
      · exact absurd a u7
    have u42 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u37 a
      · exact a
      · exact absurd u27 a
      · exact absurd a u32
    have u43 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a n0
      · exact absurd a u6
    have u44 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u4 a
      · exact absurd u11 a
      · exact absurd a u1
      · exact absurd u8 a
    have u45 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u4 a
      · exact absurd a u13
      · exact absurd a u40
      · exact absurd u21 a
    have u46 : v287 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u41 a
      · exact absurd a u13
      · exact absurd u17 a
      · exact absurd a u31
    have u47 : v290 := by
      rcases c222 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u17 a
      · exact absurd u4 a
      · exact absurd a u31
      · exact absurd u36 a
    have u48 : v248 := by
      rcases c227 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u42
      · exact absurd u27 a
      · exact absurd a u32
      · exact absurd u41 a
    have u49 : v241 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u45 a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd a u43
    have u50 : v357 := by
      rcases c323 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u45 a
      · exact absurd u11 a
      · exact absurd u38 a
      · exact absurd u44 a
    have u51 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd u8 a
      · exact absurd a n0
    have u52 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u51 a
      · exact absurd u28 a
      · exact absurd u2 a
      · exact absurd a u13
    have u53 : ¬v255 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u8 a
      · exact absurd u38 a
      · exact absurd a u32
      · exact absurd u48 a
    have u54 : ¬v261 := by
      rcases c108 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u51 a
      · exact absurd u2 a
      · exact absurd u17 a
      · exact absurd u48 a
    have u55 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u28 a
      · exact absurd a u13
    have u56 : v266 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd u55 a
      · exact absurd u2 a
      · exact absurd a u22
      · exact absurd u51 a
    have u57 : ¬v209 := by
      rcases c668 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u55 a
      · exact absurd a n0
      · exact absurd u28 a
      · exact absurd u4 a
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u25
      · exact absurd u46 a
      · exact absurd u45 a
      · exact absurd a u26
      · exact absurd a n1
    have u58 : v345 := by
      rcases c283 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u37 a
      · exact absurd u8 a
      · exact absurd u56 a
      · exact absurd a u53
    have u59 : v201 := by
      rcases c398 with a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd u51 a
      · exact absurd u41 a
    have u60 : ¬v254 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd u55 a
      · exact absurd u41 a
      · exact absurd u51 a
      · exact absurd a u22
    have u61 : v256 := by
      rcases c91 with a|a|a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd a n0
      · exact absurd u41 a
      · exact absurd u4 a
      · exact absurd u51 a
    have u62 : v219 := by
      rcases c89 with a|a|a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd u41 a
      · exact absurd a u53
      · exact absurd u59 a
      · exact absurd a u32
    have u63 : ¬v259 := by
      rcases c101 with a|a|a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd u28 a
      · exact absurd u41 a
      · exact absurd u51 a
      · exact absurd a u13
    have u64 : v253 := by
      rcases c138 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u59 a
      · exact absurd u2 a
      · exact absurd a u53
      · exact absurd a u54
    have u65 : ¬v316 := by
      rcases c231 with a|a|a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd u27 a
      · exact absurd u61 a
      · exact absurd u41 a
      · exact absurd u36 a
    have u66 : v258 := by
      rcases c150 with a|a|a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd u28 a
      · exact absurd a u33
      · exact absurd a u63
      · exact absurd a u15
    have u67 : ¬v323 := by
      rcases c236 with a|a|a|a|a|a
      · exact a
      · exact absurd a u63
      · exact absurd u41 a
      · exact absurd u46 a
      · exact absurd a u53
      · exact absurd a u32
    have u68 : v311 := by
      rcases c224 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd a u31
      · exact absurd u41 a
      · exact absurd u64 a
      · exact absurd u61 a
    have u69 : ¬v310 := by
      rcases c281 with a|a|a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd u37 a
      · exact absurd a u35
      · exact absurd a u53
      · exact absurd u64 a
    have u70 : v322 := by
      rcases c288 with a|a|a|a|a|a
      · exact a
      · exact absurd a u67
      · exact absurd a u53
      · exact absurd a u63
      · exact absurd u66 a
      · exact absurd a u26
    have u71 : ¬v325 := by
      rcases c241 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd u36 a
      · exact absurd u66 a
      · exact absurd u41 a
      · exact absurd a u25
    have u72 : ¬v331 := by
      rcases c389 with a|a|a|a
      · exact a
      · exact absurd u68 a
      · exact absurd a u35
      · exact absurd a u65
    have u73 : ¬v335 := by
      rcases c302 with a|a|a|a|a|a
      · exact absurd u68 a
      · exact a
      · exact absurd u38 a
      · exact absurd u47 a
      · exact absurd u36 a
      · exact absurd a u39
    have u74 : ¬v356 := by
      rcases c390 with a|a|a|a
      · exact a
      · exact absurd u70 a
      · exact absurd a u39
      · exact absurd a u71
    have u75 : ¬v330 := by
      rcases c400 with a|a|a|a
      · exact absurd a u73
      · exact absurd a u72
      · exact absurd u58 a
      · exact a
    have u76 : ¬v360 := by
      rcases c405 with a|a|a|a
      · exact absurd u50 a
      · exact absurd a u74
      · exact absurd a n1
      · exact a
    have u77 : ¬v225 := by
      rcases c210 with a|a|a|a|a|a
      · exact absurd a u75
      · exact a
      · exact absurd u37 a
      · exact absurd u16 a
      · exact absurd a u69
      · exact absurd u62 a
    have u78 : v238 := by
      rcases c221 with a|a|a|a|a|a
      · exact absurd a u76
      · exact absurd u49 a
      · exact absurd a n1
      · exact absurd u20 a
      · exact a
      · exact absurd u50 a
    have u79 : ¬v338 := by
      rcases c158 with a|a|a|a|a|a
      · exact a
      · exact absurd a u77
      · exact absurd a u34
      · exact absurd u29 a
      · exact absurd a u54
      · exact absurd a u24
    rcases c159 with a|a|a|a|a|a
    · exact absurd u78 a
    · exact absurd a u77
    · exact absurd u2 a
    · exact absurd a u54
    · exact absurd a u52
    · exact absurd a u79
  have c748 : v275 ∨ ¬v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a n0
    rcases c652 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c749 : ¬v249 ∨ ¬v250 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd n1 a
    rcases c506 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c750 : ¬v249 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v250 := by
      rcases c749 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
    rcases c617 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c751 : v306 ∨ ¬v250 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v278 := by
      rcases c608 with a|a
      · exact a
      · exact absurd a n0
    rcases c518 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c752 : ¬v251 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd n0 a
    rcases c751 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c753 : ¬v199 ∨ v154 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v153 := by
      rcases c348 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c433 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c754 : v154 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v199 := by
      rcases c753 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c720 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c755 : v209 ∨ v200 ∨ v204 ∨ ¬v207 ∨ v208 ∨ ¬v213 ∨ ¬v235 ∨ v241 ∨ v244 ∨ v245 ∨ v251 ∨ ¬v252 ∨ v287 ∨ v360 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13⟩ := hc
    have u1 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a n4
    have u2 : v205 := by
      rcases c635 with a|a
      · exact absurd a n2
      · exact a
    have u3 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n11 a
    have u4 : v216 := by
      rcases c102 with a|a|a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n11 a
      · exact absurd a n1
      · exact absurd a n9
      · exact absurd a n12
    have u5 : v154 := by
      rcases c754 with a|a
      · exact a
      · exact absurd a n8
    have u6 : v280 := by
      rcases c626 with a|a
      · exact absurd a n8
      · exact a
    have u7 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a n10
    have u8 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u2 a
    have u9 : v275 := by
      rcases c748 with a|a
      · exact a
      · exact absurd u2 a
    have u10 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u3
    have u11 : ¬v308 := by
      rcases c525 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a n10
      · exact absurd n11 a
    have u12 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u7 a
    have u14 : ¬v249 := by
      rcases c750 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u10
    have u16 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u10
    have u17 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u13
      · exact a
    have u18 : ¬v284 := by
      rcases c93 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n1
      · exact absurd a u14
      · exact a
      · exact absurd a n9
      · exact absurd a n0
    have u19 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u15
    have u20 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u16 a
      · exact absurd a u10
    have u21 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u16 a
      · exact absurd u20 a
      · exact absurd a n1
      · exact absurd a u3
    have u22 : v211 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u16 a
      · exact absurd a n0
      · exact absurd a n9
      · exact absurd a u15
    have u23 : v295 := by
      rcases c230 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u16 a
      · exact absurd a u15
      · exact absurd a n9
      · exact absurd a u14
    have u24 : ¬v215 := by
      rcases c192 with a|a|a|a|a|a
      · exact absurd u4 a
      · exact a
      · exact absurd u17 a
      · exact absurd a n0
      · exact absurd a n12
      · exact absurd a u11
    have u25 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u19 a
    have u26 : ¬v299 := by
      rcases c303 with a|a|a|a|a|a
      · exact absurd u23 a
      · exact absurd u25 a
      · exact a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd a u18
    have u27 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u15
      · exact absurd u25 a
    have u28 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u16 a
      · exact absurd u25 a
      · exact absurd a n9
      · exact absurd a u15
    have u29 : ¬v212 := by
      rcases c183 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u19 a
      · exact absurd u25 a
      · exact absurd a n0
      · exact absurd a u15
    have u30 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u18
      · exact absurd a u26
    have u31 : v274 := by
      rcases c128 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n11 a
      · exact absurd a n1
      · exact absurd a n4
      · exact absurd a u28
    have u32 : ¬v273 := by
      rcases c125 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd n3 a
      · exact absurd a n10
    have u33 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u21
      · exact absurd a n2
      · exact absurd a u28
      · exact absurd u16 a
    have u34 : ¬v230 := by
      rcases c110 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd a n1
      · exact a
      · exact absurd a n2
      · exact absurd u22 a
      · exact absurd a u29
    have u35 : ¬v237 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a u24
      · exact absurd a u29
      · exact absurd n3 a
    have u36 : v238 := by
      rcases c204 with a|a|a|a|a|a
      · exact absurd a n7
      · exact a
      · exact absurd n6 a
      · exact absurd a u29
      · exact absurd u4 a
      · exact absurd n5 a
    have u37 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u8
      · exact absurd u19 a
      · exact absurd u30 a
      · exact absurd a u26
    have u38 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u37 a
      · exact absurd u30 a
      · exact a
      · exact absurd a u33
      · exact absurd a u8
      · exact absurd a u27
    have u39 : ¬v149 := by
      rcases c632 with a|a
      · exact a
      · exact absurd a u34
    have u40 : v150 := by
      rcases c639 with a|a
      · exact a
      · exact absurd a u39
    have u41 : ¬v145 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u39
      · exact absurd u40 a
      · exact absurd a n2
      · exact absurd a u34
    have u42 : v185 := by
      rcases c416 with a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u34
      · exact absurd u40 a
    have u43 : ¬v153 := by
      rcases c57 with a|a|a|a|a|a
      · exact absurd u36 a
      · exact absurd u5 a
      · exact absurd u40 a
      · exact a
      · exact absurd a u35
      · exact absurd a n8
    have u44 : v146 := by
      rcases c45 with a|a|a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd u40 a
      · exact absurd u4 a
      · exact absurd u36 a
      · exact absurd a u29
    have u45 : ¬v234 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u40 a
      · exact absurd u36 a
      · exact absurd a u39
      · exact absurd a u34
    have u46 : ¬v190 := by
      rcases c51 with a|a|a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd u42 a
      · exact absurd u40 a
      · exact absurd a u34
      · exact absurd n6 a
    have u47 : v199 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a u43
    have u48 : ¬v192 := by
      rcases c347 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u43
      · exact absurd u40 a
    have u49 : ¬v155 := by
      rcases c392 with a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd a u41
      · exact absurd a n1
    have u50 : v159 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u42 a
      · exact absurd a u33
      · exact absurd a u8
      · exact absurd a u38
    have u51 : ¬v347 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u42 a
      · exact absurd u50 a
      · exact absurd a u33
      · exact absurd a u32
    have u52 : ¬v163 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd n11 a
      · exact absurd u31 a
      · exact absurd u50 a
      · exact absurd a u28
    have u53 : ¬v158 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u16 a
      · exact absurd u50 a
      · exact absurd a u28
      · exact absurd a u33
    have u54 : ¬v189 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u41
      · exact absurd a u39
      · exact absurd a u53
      · exact absurd a u52
    have u55 : v348 := by
      rcases c54 with a|a|a|a|a|a
      · exact absurd a u54
      · exact a
      · exact absurd a u39
      · exact absurd a u34
      · exact absurd u42 a
      · exact absurd a u45
    have u56 : v354 := by
      rcases c56 with a|a|a|a|a|a
      · exact absurd a u54
      · exact a
      · exact absurd u5 a
      · exact absurd a n8
      · exact absurd a u45
      · exact absurd u47 a
    rcases c402 with a|a|a|a
    · exact absurd u56 a
    · exact absurd u55 a
    · exact absurd a n13
    · exact absurd a u51
  have c756 : ¬v150 ∨ ¬v230 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v149 := by
      rcases c636 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n0 a
    rcases c657 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c757 : ¬v230 ∨ ¬v235 ∨ v345 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v150 := by
      rcases c756 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v149 := by
      rcases c639 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd u2 a
    have u4 : v231 := by
      rcases c365 with a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    have u5 : ¬v190 := by
      rcases c50 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd n0 a
      · exact absurd a u3
      · exact absurd a n2
    have u6 : v151 := by
      rcases c425 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u5
    rcases c48 with a|a|a|a|a|a
    · exact absurd u6 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u4 a
    · exact absurd u2 a
    · exact absurd a u1
  have c758 : v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v205 := by
      rcases c747 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u1 a
    have u4 : v275 := by
      rcases c748 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v235 := by
      rcases c444 with a|a|a|a
      · exact absurd a u3
      · exact absurd u1 a
      · exact absurd a u2
      · exact a
    have u6 : ¬v206 := by
      rcases c685 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u4 a
    have u7 : ¬v249 := by
      rcases c750 with a|a
      · exact a
      · exact absurd u4 a
    have u8 : ¬v239 := by
      rcases c459 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u1 a
      · exact absurd u4 a
    have u9 : v250 := by
      rcases c612 with a|a
      · exact absurd a u7
      · exact a
    have u10 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : ¬v251 := by
      rcases c752 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u11
    have u13 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u11
    have u14 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u13 a
    have u16 : ¬v278 := by
      rcases c602 with a|a
      · exact a
      · exact absurd u13 a
    have u17 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd a u15
      · exact a
    have u18 : ¬v308 := by
      rcases c279 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a n1
      · exact absurd a u16
      · exact absurd a u11
      · exact absurd u13 a
    have u19 : v252 := by
      rcases c522 with a|a|a|a
      · exact absurd a u18
      · exact absurd u12 a
      · exact absurd a u11
      · exact a
    have u20 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u19 a
    have u21 : ¬v293 := by
      rcases c695 with a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u19 a
    have u22 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u20
    have u23 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u22
    have u24 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd a u22
    have u25 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u23
    have u26 : v281 := by
      rcases c718 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a u22
    have u27 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u24 a
      · exact absurd a u22
    have u28 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u25 a
      · exact a
    have u29 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u25 a
    have u30 : v309 := by
      rcases c549 with a|a|a|a
      · exact absurd u26 a
      · exact absurd a u22
      · exact a
      · exact absurd a u23
    have u31 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u7
      · exact absurd u9 a
      · exact absurd a u10
      · exact absurd a u14
      · exact a
    have u32 : v304 := by
      rcases c306 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u13 a
      · exact absurd a u14
      · exact absurd a u10
      · exact absurd u17 a
    have u33 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u23
      · exact absurd u29 a
    have u34 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u24 a
      · exact absurd u29 a
      · exact absurd a u31
      · exact absurd a u23
    have u35 : ¬v287 := by
      rcases c249 with a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd u17 a
      · exact absurd u19 a
      · exact absurd a u11
      · exact absurd a u18
    have u36 : ¬v290 := by
      rcases c223 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u26 a
      · exact absurd a u20
      · exact absurd a u7
      · exact absurd a u28
    have u37 : ¬v276 := by
      rcases c277 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a n0
      · exact absurd a u11
      · exact absurd u12 a
      · exact absurd a u18
    have u38 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd a u34
      · exact absurd a u7
    have u39 : ¬v299 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u31
      · exact a
      · exact absurd u25 a
      · exact absurd a u7
      · exact absurd a u28
    have u40 : ¬v305 := by
      rcases c245 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u7
      · exact absurd a u28
      · exact absurd u19 a
      · exact absurd a u31
    have u41 : ¬v355 := by
      rcases c255 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u39
      · exact absurd a u10
    have u42 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u28
      · exact absurd a u39
    have u43 : v213 := by
      rcases c203 with a|a|a|a|a|a
      · exact absurd a u41
      · exact a
      · exact absurd a u8
      · exact absurd a u39
      · exact absurd a u10
      · exact absurd u5 a
    have u44 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u3
      · exact absurd u25 a
      · exact absurd u42 a
      · exact absurd a u39
    have u45 : v277 := by
      rcases c278 with a|a|a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd a n0
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd u19 a
    have u46 : ¬v357 := by
      rcases c259 with a|a|a|a|a|a
      · exact absurd u45 a
      · exact a
      · exact absurd a u7
      · exact absurd a u3
      · exact absurd a u39
      · exact absurd a u40
    have u47 : v265 := by
      rcases c538 with a|a|a|a
      · exact absurd a u21
      · exact absurd a u20
      · exact a
      · exact absurd u19 a
    have u48 : v356 := by
      rcases c257 with a|a|a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u37
      · exact absurd u32 a
      · exact absurd a u7
      · exact absurd a u39
    have u49 : v207 := by
      rcases c130 with a|a|a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd a u37
      · exact absurd u1 a
      · exact absurd a u11
      · exact absurd a u7
    have u50 : ¬v208 := by
      rcases c131 with a|a|a|a|a|a
      · exact absurd u45 a
      · exact absurd a u38
      · exact a
      · exact absurd u1 a
      · exact absurd u19 a
      · exact absurd a u7
    have u51 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a u50
    have u52 : ¬v244 := by
      rcases c470 with a|a|a|a
      · exact absurd a u50
      · exact a
      · exact absurd u12 a
      · exact absurd u49 a
    have u53 : ¬v229 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u50
      · exact absurd u51 a
    have u54 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u24 a
      · exact absurd u27 a
      · exact absurd a u38
      · exact absurd a u20
    have u55 : v261 := by
      rcases c109 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u20
      · exact absurd a u38
      · exact absurd u51 a
      · exact absurd a u34
    have u56 : v154 := by
      rcases c754 with a|a
      · exact a
      · exact absurd a u52
    have u57 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u54
      · exact absurd a u2
      · exact absurd a u34
      · exact absurd u24 a
    have u58 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u44 a
      · exact absurd u42 a
      · exact a
      · exact absurd a u57
      · exact absurd a u3
      · exact absurd a u33
    have u59 : ¬v230 := by
      rcases c757 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u58
    have u60 : ¬v149 := by
      rcases c632 with a|a
      · exact a
      · exact absurd a u59
    have u61 : v231 := by
      rcases c162 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u59
      · exact absurd a u54
    have u62 : v211 := by
      rcases c114 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u59
      · exact absurd u29 a
      · exact absurd a u54
      · exact absurd a u57
    have u63 : v150 := by
      rcases c639 with a|a
      · exact a
      · exact absurd a u60
    have u64 : ¬v145 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd a u60
      · exact absurd u63 a
      · exact absurd a u2
      · exact absurd a u59
    have u65 : ¬v234 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd a u64
      · exact absurd a u60
      · exact absurd a u54
      · exact absurd a u50
    have u66 : ¬v224 := by
      rcases c155 with a|a|a|a|a|a
      · exact absurd a u65
      · exact a
      · exact absurd u51 a
      · exact absurd a u50
      · exact absurd a u53
      · exact absurd a u54
    have u67 : ¬v241 := by
      rcases c133 with a|a|a|a|a|a
      · exact absurd u45 a
      · exact absurd u43 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u7
      · exact absurd a u40
    have u68 : ¬v360 := by
      rcases c407 with a|a|a|a
      · exact absurd a u46
      · exact absurd u48 a
      · exact a
      · exact absurd a n0
    have u69 : v209 := by
      rcases c755 with a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u2
      · exact absurd u49 a
      · exact absurd a u50
      · exact absurd u43 a
      · exact absurd u5 a
      · exact absurd a u67
      · exact absurd a u52
      · exact absurd a u31
      · exact absurd a u11
      · exact absurd u19 a
      · exact absurd a u35
      · exact absurd a u68
    have u70 : ¬v256 := by
      rcases c717 with a|a|a|a|a|a
      · exact absurd u69 a
      · exact absurd u1 a
      · exact absurd a u31
      · exact absurd u24 a
      · exact absurd a u7
      · exact a
    have u71 : ¬v201 := by
      rcases c397 with a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u69 a
      · exact absurd a u31
    have u72 : ¬v219 := by
      rcases c88 with a|a|a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd u25 a
      · exact absurd u44 a
      · exact absurd u69 a
      · exact absurd a u31
    have u73 : v220 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd u69 a
      · exact absurd a u31
      · exact absurd a u70
      · exact absurd a u28
    have u74 : v316 := by
      rcases c213 with a|a|a|a|a|a
      · exact a
      · exact absurd u73 a
      · exact absurd u42 a
      · exact absurd u5 a
      · exact absurd u61 a
      · exact absurd a u58
    have u75 : ¬v330 := by
      rcases c195 with a|a|a|a|a|a
      · exact absurd a u66
      · exact a
      · exact absurd u29 a
      · exact absurd u62 a
      · exact absurd a u59
      · exact absurd a u22
    have u76 : v331 := by
      rcases c336 with a|a|a|a|a|a
      · exact a
      · exact absurd u74 a
      · exact absurd u30 a
      · exact absurd a u33
      · exact absurd a u75
      · exact absurd a u58
    have u77 : ¬v335 := by
      rcases c399 with a|a|a|a
      · exact absurd u76 a
      · exact absurd a u75
      · exact a
      · exact absurd a u58
    have u78 : ¬v225 := by
      rcases c156 with a|a|a|a|a|a
      · exact absurd a u77
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd a u3
      · exact absurd u55 a
    have u79 : v311 := by
      rcases c301 with a|a|a|a|a|a
      · exact a
      · exact absurd a u77
      · exact absurd a u28
      · exact absurd a u39
      · exact absurd a u36
      · exact absurd u42 a
    have u80 : v217 := by
      rcases c137 with a|a|a|a|a|a
      · exact absurd a u78
      · exact a
      · exact absurd u51 a
      · exact absurd a u2
      · exact absurd a u72
      · exact absurd a u71
    rcases c178 with a|a|a|a|a|a
    · exact absurd u79 a
    · exact absurd u73 a
    · exact absurd u26 a
    · exact absurd u80 a
    · exact absurd u69 a
    · exact absurd a u28
  have c759 : ¬v209 ∨ ¬v202 ∨ ¬v205 ∨ v225 ∨ v245 ∨ v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
    have u3 : v275 := by
      rcases c748 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a n5
    have u5 : v235 := by
      rcases c444 with a|a|a|a
      · exact absurd a u2
      · exact absurd n2 a
      · exact absurd a u1
      · exact a
    have u6 : ¬v249 := by
      rcases c750 with a|a
      · exact a
      · exact absurd u3 a
    have u7 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u4
    have u8 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd a u4
    have u9 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u7
    have u10 : v281 := by
      rcases c718 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u4
    have u11 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a n5
      · exact absurd u8 a
      · exact absurd a u4
    have u12 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u9 a
      · exact a
    have u13 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u9 a
    have u14 : ¬v290 := by
      rcases c223 with a|a|a|a|a|a
      · exact a
      · exact absurd a n4
      · exact absurd u10 a
      · exact absurd a n5
      · exact absurd a u6
      · exact absurd a u12
    have u15 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u7
      · exact absurd u13 a
    have u16 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u8 a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd a u7
    have u17 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n2 a
      · exact absurd a u16
      · exact absurd a u6
    have u18 : ¬v299 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u16
      · exact absurd a n4
      · exact a
      · exact absurd u9 a
      · exact absurd a u6
      · exact absurd a u12
    have u19 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd u11 a
      · exact absurd a u17
      · exact absurd a n5
    have u20 : ¬v201 := by
      rcases c397 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd n0 a
      · exact absurd a n4
    have u21 : v261 := by
      rcases c109 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n5
      · exact absurd a u17
      · exact absurd n1 a
      · exact absurd a u16
    have u22 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u18
    have u23 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u19
      · exact absurd a u1
      · exact absurd a u16
      · exact absurd u8 a
    have u24 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u2
      · exact absurd u9 a
      · exact absurd u22 a
      · exact absurd a u18
    have u25 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd u22 a
      · exact a
      · exact absurd a u23
      · exact absurd a u2
      · exact absurd a u15
    have u26 : ¬v230 := by
      rcases c757 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u25
    have u27 : v231 := by
      rcases c162 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u26
      · exact absurd a u19
    have u28 : ¬v256 := by
      rcases c717 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n4
      · exact absurd u8 a
      · exact absurd a u6
      · exact a
    have u29 : v309 := by
      rcases c549 with a|a|a|a
      · exact absurd u10 a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
    have u30 : v220 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd n0 a
      · exact absurd a n4
      · exact absurd a u28
      · exact absurd a u12
    have u31 : ¬v330 := by
      rcases c153 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a u1
      · exact absurd u21 a
      · exact absurd a u26
      · exact absurd a u23
    have u32 : ¬v219 := by
      rcases c88 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u9 a
      · exact absurd u24 a
      · exact absurd n0 a
      · exact absurd a n4
    have u33 : v316 := by
      rcases c213 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u22 a
      · exact absurd u5 a
      · exact absurd u27 a
      · exact absurd a u25
    have u34 : v217 := by
      rcases c137 with a|a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd n1 a
      · exact absurd a u1
      · exact absurd a u32
      · exact absurd a u20
    have u35 : v331 := by
      rcases c336 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u29 a
      · exact absurd a u15
      · exact absurd a u31
      · exact absurd a u25
    have u36 : ¬v311 := by
      rcases c178 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u10 a
      · exact absurd u34 a
      · exact absurd n0 a
      · exact absurd a u12
    have u37 : ¬v335 := by
      rcases c399 with a|a|a|a
      · exact absurd u35 a
      · exact absurd a u31
      · exact a
      · exact absurd a u25
    rcases c301 with a|a|a|a|a|a
    · exact absurd a u36
    · exact absurd a u37
    · exact absurd a u12
    · exact absurd a u18
    · exact absurd a u14
    · exact absurd u22 a
  have c760 : v238 ∨ ¬v205 ∨ v208 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n1 a
    have u3 : v275 := by
      rcases c748 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : v265 := by
      rcases c743 with a|a
      · exact absurd a n2
      · exact a
    have u5 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a n2
    have u6 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n3 a
    have u7 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd n3 a
    have u8 : v235 := by
      rcases c444 with a|a|a|a
      · exact absurd a u2
      · exact absurd n1 a
      · exact absurd a u1
      · exact a
    have u9 : ¬v206 := by
      rcases c685 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
    have u10 : ¬v249 := by
      rcases c750 with a|a
      · exact a
      · exact absurd u3 a
    have u11 : ¬v229 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n2
      · exact absurd u5 a
    have u12 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u6
    have u13 : v250 := by
      rcases c741 with a|a
      · exact absurd a u7
      · exact a
    have u14 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u7
    have u15 : ¬v239 := by
      rcases c459 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd n1 a
      · exact absurd u3 a
    have u16 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u12
    have u17 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u12
    have u18 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u16
    have u21 : v281 := by
      rcases c718 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u12
    have u22 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u17 a
      · exact absurd a u12
    have u23 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u20 a
      · exact a
    have u24 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u20 a
    have u25 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u10
      · exact absurd u13 a
      · exact absurd a u18
      · exact absurd a u19
      · exact a
    have u26 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd u24 a
    have u27 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u17 a
      · exact absurd u24 a
      · exact absurd a u25
      · exact absurd a u16
    have u28 : ¬v299 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd a u25
      · exact a
      · exact absurd u20 a
      · exact absurd a u10
      · exact absurd a u23
    have u29 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n1 a
      · exact absurd a u27
      · exact absurd a u10
    have u30 : ¬v355 := by
      rcases c255 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a u28
      · exact absurd a u18
    have u31 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u23
      · exact absurd a u28
    have u32 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u17 a
      · exact absurd u22 a
      · exact absurd a u29
      · exact absurd a u6
    have u33 : v213 := by
      rcases c203 with a|a|a|a|a|a
      · exact absurd a u30
      · exact a
      · exact absurd a u15
      · exact absurd a u28
      · exact absurd a u18
      · exact absurd u8 a
    have u34 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u2
      · exact absurd u20 a
      · exact absurd u31 a
      · exact absurd a u28
    have u35 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u32
      · exact absurd a u1
      · exact absurd a u27
      · exact absurd u17 a
    have u36 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u34 a
      · exact absurd u31 a
      · exact a
      · exact absurd a u35
      · exact absurd a u2
      · exact absurd a u26
    have u37 : ¬v230 := by
      rcases c757 with a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u36
    have u38 : v211 := by
      rcases c114 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u37
      · exact absurd u24 a
      · exact absurd a u32
      · exact absurd a u35
    have u39 : ¬v225 := by
      rcases c157 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd a u1
    have u40 : ¬v209 := by
      rcases c759 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd n1 a
      · exact absurd a u39
      · exact absurd a u25
      · exact absurd a u6
    have u41 : ¬v210 := by
      rcases c175 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u21 a
      · exact absurd a u40
      · exact absurd a u16
      · exact absurd a u12
    have u42 : ¬v234 := by
      rcases c165 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u1
      · exact absurd a n2
      · exact absurd a u32
      · exact absurd a u37
    have u43 : ¬v212 := by
      rcases c186 with a|a|a|a|a|a
      · exact absurd u33 a
      · exact absurd a u40
      · exact absurd u20 a
      · exact a
      · exact absurd a u23
      · exact absurd a u28
    have u44 : v224 := by
      rcases c194 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u38 a
      · exact absurd a u41
      · exact absurd a u43
      · exact absurd a u37
    rcases c155 with a|a|a|a|a|a
    · exact absurd a u42
    · exact absurd u44 a
    · exact absurd u5 a
    · exact absurd a n2
    · exact absurd a u11
    · exact absurd a u32
  have c761 : ¬v341 ∨ ¬v265 ∨ ¬v277 ∨ v279 ∨ v290 ∨ v303 ∨ v305 ∨ v362 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v343 := by
      rcases c289 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n7
    have u2 : ¬v339 := by
      rcases c411 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
      · exact absurd a n7
    rcases c318 with a|a|a|a|a|a
    · exact absurd a u2
    · exact absurd n0 a
    · exact absurd a n7
    · exact absurd a n5
    · exact absurd a n4
    · exact absurd a n6
  have c762 : ¬v205 ∨ v208 ∨ ¬v252 ∨ v361 ∨ v362 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : v265 := by
      rcases c743 with a|a
      · exact absurd a n1
      · exact a
    have u2 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n2 a
    have u4 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd n2 a
    have u5 : ¬v293 := by
      rcases c695 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd n2 a
    have u6 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd n0 a
    have u7 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd n0 a
    have u8 : v275 := by
      rcases c748 with a|a
      · exact a
      · exact absurd n0 a
    have u9 : v238 := by
      rcases c760 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
    have u10 : ¬v229 := by
      rcases c479 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
      · exact absurd u2 a
    have u11 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u3
    have u12 : v250 := by
      rcases c741 with a|a
      · exact absurd a u4
      · exact a
    have u13 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u4
    have u14 : v235 := by
      rcases c444 with a|a|a|a
      · exact absurd a u7
      · exact absurd n0 a
      · exact absurd a u6
      · exact a
    have u15 : ¬v249 := by
      rcases c750 with a|a
      · exact a
      · exact absurd u8 a
    have u16 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u11
    have u17 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u11
    have u18 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u12 a
    have u19 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v278 := by
      rcases c602 with a|a
      · exact a
      · exact absurd u13 a
    have u21 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u16
    have u22 : v281 := by
      rcases c718 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u11
    have u23 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u17 a
      · exact absurd a u11
    have u24 : v307 := by
      rcases c328 with a|a|a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a n4
      · exact absurd a n3
      · exact absurd u13 a
      · exact absurd a n5
    have u25 : ¬v279 := by
      rcases c297 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u20
      · exact absurd a n3
      · exact absurd a n4
      · exact absurd a n5
    have u26 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u21 a
      · exact a
    have u27 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u21 a
    have u28 : ¬v305 := by
      rcases c270 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact a
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd a u18
    have u29 : v277 := by
      rcases c269 with a|a|a|a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd n2 a
      · exact absurd u12 a
      · exact absurd u8 a
      · exact absurd a u25
    have u30 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u26
      · exact absurd a u15
      · exact absurd u12 a
      · exact absurd a u18
      · exact absurd a u19
      · exact a
    have u31 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u16
      · exact absurd u27 a
    have u32 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u17 a
      · exact absurd u27 a
      · exact absurd a u30
      · exact absurd a u16
    have u33 : ¬v299 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd a u30
      · exact a
      · exact absurd u21 a
      · exact absurd a u15
      · exact absurd a u26
    have u34 : ¬v290 := by
      rcases c223 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u22 a
      · exact absurd a u3
      · exact absurd a u15
      · exact absurd a u26
    have u35 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd n0 a
      · exact absurd a u32
      · exact absurd a u15
    have u36 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u26
      · exact absurd a u33
    have u37 : ¬v357 := by
      rcases c259 with a|a|a|a|a|a
      · exact absurd u29 a
      · exact a
      · exact absurd a u15
      · exact absurd a u7
      · exact absurd a u33
      · exact absurd a u28
    have u38 : ¬v341 := by
      rcases c761 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u29 a
      · exact absurd a u25
      · exact absurd a u34
      · exact absurd a u18
      · exact absurd a u28
      · exact absurd a n4
    have u39 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u17 a
      · exact absurd u23 a
      · exact absurd a u35
      · exact absurd a u3
    have u40 : v261 := by
      rcases c109 with a|a|a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u3
      · exact absurd a u35
      · exact absurd u2 a
      · exact absurd a u32
    have u41 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u7
      · exact absurd u21 a
      · exact absurd u36 a
      · exact absurd a u33
    have u42 : ¬v241 := by
      rcases c160 with a|a|a|a|a|a
      · exact absurd a u38
      · exact absurd u1 a
      · exact a
      · exact absurd a n1
      · exact absurd a u10
      · exact absurd u29 a
    have u43 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u39
      · exact absurd a u6
      · exact absurd a u32
      · exact absurd u17 a
    have u44 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u41 a
      · exact absurd u36 a
      · exact a
      · exact absurd a u43
      · exact absurd a u7
      · exact absurd a u31
    have u45 : v338 := by
      rcases c215 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u10
      · exact absurd u9 a
      · exact absurd a u42
      · exact absurd a u37
    have u46 : ¬v230 := by
      rcases c757 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u44
    have u47 : ¬v335 := by
      rcases c408 with a|a|a|a
      · exact absurd a u38
      · exact absurd u45 a
      · exact a
      · exact absurd a u37
    have u48 : v289 := by
      rcases c317 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd a u34
      · exact absurd a u5
      · exact absurd u45 a
      · exact absurd a u38
    have u49 : v211 := by
      rcases c114 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u46
      · exact absurd u27 a
      · exact absurd a u39
      · exact absurd a u43
    have u50 : ¬v225 := by
      rcases c156 with a|a|a|a|a|a
      · exact absurd a u47
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
      · exact absurd a u7
      · exact absurd u40 a
    have u51 : v210 := by
      rcases c197 with a|a|a|a|a|a
      · exact absurd a u50
      · exact absurd u48 a
      · exact a
      · exact absurd u45 a
      · exact absurd a u10
      · exact absurd a u5
    have u52 : ¬v209 := by
      rcases c759 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n0 a
      · exact absurd a u50
      · exact absurd a u30
      · exact absurd a u3
    rcases c175 with a|a|a|a|a|a
    · exact absurd u51 a
    · exact absurd u49 a
    · exact absurd u22 a
    · exact absurd a u52
    · exact absurd a u16
    · exact absurd a u11
  have c763 : v275 ∨ ¬v250 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v249 := by
      rcases c733 with a|a
      · exact a
      · exact absurd a n0
    rcases c595 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
  have c764 : ¬v252 ∨ v208 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd n0 a
    have u3 : v363 := by
      rcases c758 with a|a
      · exact a
      · exact absurd a n2
    have u4 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u1
    have u5 : v250 := by
      rcases c741 with a|a
      · exact absurd a u2
      · exact a
    have u6 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u2
    have u7 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u2
    have u8 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u4
    have u9 : v275 := by
      rcases c763 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u5 a
    have u11 : ¬v308 := by
      rcases c525 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u2
      · exact absurd n0 a
    have u12 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u7 a
    have u13 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u7 a
    have u14 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u8
    have u15 : v205 := by
      rcases c729 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u12
      · exact absurd u7 a
      · exact absurd a u13
      · exact a
    have u17 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u14 a
      · exact a
    have u18 : v304 := by
      rcases c306 with a|a|a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd a u12
      · exact absurd a u10
      · exact absurd u16 a
    have u19 : ¬v361 := by
      rcases c334 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u7 a
      · exact absurd a n2
      · exact absurd a u11
      · exact absurd u18 a
    have u20 : ¬v362 := by
      rcases c409 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a u19
      · exact a
    rcases c762 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u19
    · exact absurd a u20
    · exact absurd a n2
  have c765 : v252 ∨ ¬v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a n0
    rcases c678 with a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
  have c766 : v364 ∨ v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v265 := by
      rcases c743 with a|a
      · exact absurd a n1
      · exact a
    have u2 : v252 := by
      rcases c765 with a|a
      · exact a
      · exact absurd u1 a
    rcases c764 with a|a|a
    · exact absurd u2 a
    · exact absurd a n1
    · exact absurd a n0
  have c767 : ¬v154 ∨ ¬v145 ∨ v207 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n3
    have u2 : v162 := by
      rcases c671 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v153 := by
      rcases c670 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u1 a
    rcases c341 with a|a|a|a
    · exact absurd u2 a
    · exact absurd a u3
    · exact absurd n1 a
    · exact absurd a n2
  have c768 : v205 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v275 := by
      rcases c729 with a|a
      · exact absurd a n0
      · exact a
    have u2 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a n0
    have u3 : v363 := by
      rcases c758 with a|a
      · exact a
      · exact absurd a n1
    have u4 : v208 := by
      rcases c766 with a|a
      · exact absurd a n1
      · exact a
    have u5 : ¬v250 := by
      rcases c763 with a|a
      · exact absurd a u1
      · exact a
    have u6 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u1
    have u7 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
    have u8 : v251 := by
      rcases c741 with a|a
      · exact a
      · exact absurd a u5
    have u9 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u5
    have u10 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a u7
    have u11 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u7
    have u12 : ¬v252 := by
      rcases c739 with a|a
      · exact absurd u8 a
      · exact a
    have u13 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd a u5
    have u15 : v149 := by
      rcases c639 with a|a
      · exact absurd a u11
      · exact a
    have u16 : v190 := by
      rcases c642 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
    have u17 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a u12
      · exact a
    have u18 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u12
    have u19 : v285 := by
      rcases c744 with a|a
      · exact absurd a u13
      · exact a
    have u20 : v327 := by
      rcases c592 with a|a
      · exact absurd a u13
      · exact a
    have u21 : v278 := by
      rcases c512 with a|a|a|a
      · exact absurd a u5
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
    have u22 : v230 := by
      rcases c632 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : v288 := by
      rcases c736 with a|a
      · exact absurd u18 a
      · exact a
    have u25 : v293 := by
      rcases c536 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd u18 a
    have u26 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd u20 a
    have u27 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u11
      · exact absurd u15 a
    have u28 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u24 a
    have u29 : ¬v281 := by
      rcases c746 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u24 a
    have u30 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u28 a
    have u31 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u30
    have u32 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd a u30
    have u33 : v299 := by
      rcases c734 with a|a
      · exact absurd a u30
      · exact a
    have u34 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u33 a
    have u35 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u31 a
      · exact a
      · exact absurd a u26
      · exact absurd u14 a
      · exact absurd a u13
    have u36 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u9 a
      · exact absurd u31 a
      · exact absurd u14 a
      · exact absurd a u5
    have u37 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u28 a
      · exact absurd a u30
    have u38 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact absurd a n0
      · exact absurd a u7
    have u39 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u9 a
      · exact absurd u14 a
      · exact absurd a u1
      · exact absurd u10 a
    have u40 : v287 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u36 a
      · exact absurd a u12
      · exact absurd u18 a
      · exact absurd a u29
    have u41 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u9 a
      · exact absurd u28 a
      · exact absurd u31 a
      · exact absurd a u23
    have u42 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u41
      · exact a
      · exact absurd a u23
      · exact absurd a u37
      · exact absurd u33 a
      · exact absurd u9 a
    have u43 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u9 a
      · exact absurd u2 a
      · exact absurd u10 a
      · exact absurd a n0
    have u44 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u43 a
      · exact absurd u4 a
      · exact absurd u2 a
      · exact absurd a u12
    have u45 : ¬v272 := by
      rcases c254 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u9 a
      · exact absurd u10 a
      · exact absurd a u5
      · exact absurd a u1
    have u46 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd u4 a
      · exact absurd a u12
    have u47 : v145 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact absurd u15 a
      · exact a
      · exact absurd u46 a
      · exact absurd u2 a
      · exact absurd a u11
    have u48 : v266 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u46 a
      · exact absurd u2 a
      · exact absurd a u23
      · exact absurd u43 a
    have u49 : ¬v159 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd u48 a
      · exact a
      · exact absurd u22 a
      · exact absurd u2 a
      · exact absurd a u11
      · exact absurd a u27
    have u50 : ¬v280 := by
      rcases c609 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd a n1
    have u51 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u50
    have u52 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u8 a
      · exact absurd a u12
    have u53 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u4 a
      · exact absurd a u50
    have u54 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u9 a
      · exact absurd a u12
      · exact absurd a u35
      · exact absurd u52 a
    have u55 : ¬v154 := by
      rcases c767 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u53
      · exact absurd a u50
    have u56 : v153 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u55
      · exact a
      · exact absurd u51 a
      · exact absurd u4 a
      · exact absurd u47 a
      · exact absurd a u53
    have u57 : ¬v199 := by
      rcases c437 with a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd u51 a
      · exact absurd u56 a
    have u58 : ¬v233 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u15 a
      · exact absurd u46 a
      · exact absurd u47 a
      · exact absurd a u53
    have u59 : ¬v361 := by
      rcases c332 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u35
      · exact a
      · exact absurd a n1
      · exact absurd a u13
      · exact absurd u52 a
    have u60 : v276 := by
      rcases c266 with a|a|a|a|a|a
      · exact absurd a u35
      · exact absurd a u59
      · exact absurd u9 a
      · exact a
      · exact absurd a u1
      · exact absurd u14 a
    have u61 : ¬v240 := by
      rcases c208 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u59
      · exact absurd u14 a
      · exact absurd a u35
      · exact absurd a u38
    have u62 : ¬v356 := by
      rcases c322 with a|a|a|a|a|a
      · exact a
      · exact absurd a u59
      · exact absurd u14 a
      · exact absurd u33 a
      · exact absurd a u35
      · exact absurd u39 a
    have u63 : v325 := by
      rcases c310 with a|a|a|a|a|a
      · exact a
      · exact absurd a u59
      · exact absurd a u26
      · exact absurd a u13
      · exact absurd u20 a
      · exact absurd a u35
    have u64 : v273 := by
      rcases c292 with a|a|a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u21 a
      · exact absurd u60 a
      · exact absurd u10 a
      · exact absurd a u1
    have u65 : ¬v256 := by
      rcases c286 with a|a|a|a|a|a
      · exact absurd u63 a
      · exact absurd u10 a
      · exact absurd u60 a
      · exact a
      · exact absurd a u34
      · exact absurd a u62
    have u66 : v195 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u61
      · exact absurd u51 a
      · exact absurd a u57
      · exact absurd u56 a
    have u67 : v192 := by
      rcases c352 with a|a|a|a
      · exact absurd u66 a
      · exact a
      · exact absurd u16 a
      · exact absurd a u62
    have u68 : v360 := by
      rcases c294 with a|a|a|a|a|a
      · exact absurd u60 a
      · exact absurd u3 a
      · exact a
      · exact absurd a u50
      · exact absurd a u62
      · exact absurd u64 a
    have u69 : ¬v201 := by
      rcases c91 with a|a|a|a|a|a
      · exact absurd a u65
      · exact a
      · exact absurd a n0
      · exact absurd u36 a
      · exact absurd u9 a
      · exact absurd u43 a
    have u70 : v347 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd u64 a
      · exact absurd u48 a
      · exact absurd a u27
      · exact absurd a u49
    have u71 : v209 := by
      rcases c398 with a|a|a|a
      · exact absurd a u69
      · exact a
      · exact absurd u43 a
      · exact absurd u36 a
    have u72 : ¬v216 := by
      rcases c190 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u71 a
      · exact absurd u54 a
      · exact absurd u40 a
      · exact absurd a u38
    have u73 : ¬v146 := by
      rcases c17 with a|a|a|a|a|a
      · exact absurd a u55
      · exact a
      · exact absurd a u72
      · exact absurd u4 a
      · exact absurd u43 a
      · exact absurd u47 a
    have u74 : v155 := by
      rcases c393 with a|a|a|a
      · exact a
      · exact absurd a u73
      · exact absurd u43 a
      · exact absurd u47 a
    have u75 : ¬v162 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u8 a
      · exact absurd u43 a
      · exact absurd u47 a
      · exact absurd u74 a
    have u76 : v163 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u74 a
      · exact absurd u4 a
      · exact absurd u43 a
      · exact absurd u47 a
      · exact absurd a u12
    have u77 : v158 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd u74 a
      · exact absurd u43 a
      · exact absurd u47 a
      · exact absurd u46 a
      · exact absurd a u23
    have u78 : ¬v193 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd u47 a
      · exact absurd a u11
      · exact absurd u76 a
      · exact absurd a u49
    have u79 : ¬v188 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u77 a
      · exact absurd u15 a
      · exact absurd u47 a
      · exact absurd a u75
    have u80 : ¬v348 := by
      rcases c71 with a|a|a|a|a|a
      · exact absurd a u78
      · exact a
      · exact absurd u48 a
      · exact absurd a u27
      · exact absurd a u49
      · exact absurd a u44
    have u81 : ¬v354 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u79
      · exact absurd u51 a
      · exact absurd u56 a
      · exact absurd a u57
      · exact absurd a u58
    rcases c403 with a|a|a|a
    · exact absurd a u81
    · exact absurd a u80
    · exact absurd u68 a
    · exact absurd u70 a
  have c769 : v364 := by
    by_contra hc
    have u1 : v205 := by
      rcases c768 with a|a
      · exact a
      · exact absurd a hc
    have u2 : v208 := by
      rcases c766 with a|a
      · exact absurd a hc
      · exact a
    have u3 : v363 := by
      rcases c758 with a|a
      · exact a
      · exact absurd a hc
    have u4 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd u1 a
    have u5 : v275 := by
      rcases c748 with a|a
      · exact a
      · exact absurd u1 a
    have u6 : ¬v206 := by
      rcases c685 with a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v249 := by
      rcases c750 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v250 := by
      rcases c612 with a|a
      · exact absurd a u7
      · exact a
    have u9 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : ¬v251 := by
      rcases c752 with a|a
      · exact a
      · exact absurd u8 a
    have u11 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u10
    have u12 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u10
    have u13 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u12 a
    have u14 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u12 a
    have u15 : ¬v278 := by
      rcases c602 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd a u14
      · exact a
    have u17 : ¬v308 := by
      rcases c279 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a hc
      · exact absurd a u15
      · exact absurd a u10
      · exact absurd u12 a
    have u18 : v252 := by
      rcases c522 with a|a|a|a
      · exact absurd a u17
      · exact absurd u11 a
      · exact absurd a u10
      · exact a
    have u19 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u18 a
    have u20 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u19
    have u21 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u20
    have u22 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u20
    have u23 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u21
    have u24 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u23 a
      · exact a
    have u25 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u23 a
    have u26 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u24
      · exact absurd a u7
      · exact absurd u8 a
      · exact absurd a u9
      · exact absurd a u13
      · exact a
    have u27 : v304 := by
      rcases c306 with a|a|a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u9
      · exact absurd u16 a
    have u28 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u22 a
      · exact absurd u25 a
      · exact absurd a u26
      · exact absurd a u21
    have u29 : ¬v361 := by
      rcases c334 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u12 a
      · exact absurd a hc
      · exact absurd a u17
      · exact absurd u27 a
    have u30 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u1 a
      · exact absurd a u28
      · exact absurd a u7
    have u31 : ¬v362 := by
      rcases c409 with a|a|a|a
      · exact absurd u3 a
      · exact absurd a hc
      · exact absurd a u29
      · exact a
    have u32 : v279 := by
      rcases c136 with a|a|a|a|a|a
      · exact absurd a u30
      · exact absurd a u6
      · exact a
      · exact absurd u2 a
      · exact absurd u8 a
      · exact absurd u18 a
    rcases c297 with a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd u5 a
    · exact absurd a u15
    · exact absurd a u29
    · exact absurd a u31
    · exact absurd a hc
  have c770 : v207 ∨ ¬v208 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v244 := by
      rcases c468 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
    rcases c361 with a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
  have c771 : ¬v208 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v207 := by
      rcases c770 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u4 : ¬v244 := by
      rcases c474 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
      · exact absurd u3 a
    rcases c472 with a|a|a|a
    · exact absurd u3 a
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd n0 a
  have c772 : ¬v280 ∨ v251 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v308 := by
      rcases c523 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c522 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c773 : v251 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a n0
    rcases c772 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c774 : ¬v280 ∨ ¬v251 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v250 := by
      rcases c752 with a|a
      · exact absurd n1 a
      · exact a
    have u2 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a n2
      · exact a
    have u4 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a n2
    have u5 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u1
    have u6 : v285 := by
      rcases c744 with a|a
      · exact absurd a u2
      · exact a
    have u7 : v208 := by
      rcases c743 with a|a
      · exact a
      · exact absurd a u3
    have u8 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : v288 := by
      rcases c736 with a|a
      · exact absurd u4 a
      · exact a
    have u10 : ¬v275 := by
      rcases c750 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v205 := by
      rcases c748 with a|a
      · exact absurd a u10
      · exact a
    have u13 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u5 a
      · exact a
      · exact absurd a u10
      · exact absurd a u1
    have u14 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u12
    have u16 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u14
    have u17 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
    have u18 : v299 := by
      rcases c734 with a|a
      · exact absurd a u14
      · exact a
    have u19 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u12
    have u20 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd u5 a
      · exact absurd u16 a
      · exact absurd u13 a
      · exact absurd a u1
    have u21 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u17 a
      · exact a
      · exact absurd u11 a
      · exact absurd a u14
    have u22 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u12
      · exact absurd a u19
    have u23 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd u16 a
      · exact absurd a u8
    have u24 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd a u8
      · exact absurd a u21
      · exact absurd u18 a
      · exact absurd u5 a
    have u25 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u5 a
      · exact absurd u15 a
      · exact absurd u22 a
      · exact absurd a u12
    have u26 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u25 a
      · exact absurd u7 a
      · exact absurd u15 a
      · exact absurd a n2
    have u27 : v273 := by
      rcases c263 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd u24 a
      · exact absurd a u26
    have u28 : v207 := by
      rcases c770 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd n0 a
    rcases c169 with a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u7 a
    · exact absurd n0 a
    · exact absurd u28 a
    · exact absurd u15 a
    · exact absurd a u26
  have c775 : v361 ∨ ¬v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v364 := c769
    have u2 : ¬v252 := by
      rcases c771 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v251 := by
      rcases c773 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u2
    have u6 : ¬v250 := by
      rcases c752 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v280 := by
      rcases c774 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u2
    have u8 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : v288 := by
      rcases c736 with a|a
      · exact absurd u5 a
      · exact a
    have u11 : v293 := by
      rcases c536 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u2
      · exact absurd u5 a
    have u12 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u6
    have u13 : v278 := by
      rcases c512 with a|a|a|a
      · exact absurd a u6
      · exact absurd u4 a
      · exact a
      · exact absurd a u8
    have u14 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u7
    have u15 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u4 a
      · exact absurd a u2
    have u16 : v285 := by
      rcases c744 with a|a
      · exact absurd a u8
      · exact a
    have u17 : v327 := by
      rcases c592 with a|a
      · exact absurd a u8
      · exact a
    have u18 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u10 a
    have u19 : ¬v275 := by
      rcases c750 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd a u7
    have u21 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u8
      · exact absurd u17 a
    have u22 : ¬v281 := by
      rcases c746 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u10 a
    have u23 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v205 := by
      rcases c748 with a|a
      · exact absurd a u19
      · exact a
    have u25 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u19
      · exact absurd a u6
    have u26 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u19
    have u27 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u23
    have u28 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u23
    have u29 : v299 := by
      rcases c734 with a|a
      · exact absurd a u23
      · exact a
    have u30 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u29 a
    have u31 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u24
    have u32 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u27 a
      · exact a
      · exact absurd a u21
      · exact absurd u25 a
      · exact absurd a u8
    have u33 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u12 a
      · exact absurd u27 a
      · exact absurd u25 a
      · exact absurd a u6
    have u34 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u18 a
      · exact absurd a u23
    have u35 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u24
    have u36 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u12 a
      · exact absurd a u2
      · exact absurd a u32
      · exact absurd u15 a
    have u37 : v287 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u33 a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a u22
    have u38 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u12 a
      · exact absurd u18 a
      · exact absurd u27 a
      · exact absurd a u9
    have u39 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd a u24
      · exact absurd a u35
    have u40 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u35
    have u41 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd a u9
      · exact absurd a u34
      · exact absurd u29 a
      · exact absurd u12 a
    have u42 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u12 a
      · exact absurd u39 a
      · exact absurd a u24
      · exact absurd a u35
    have u43 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u12 a
      · exact absurd u25 a
      · exact absurd a u19
      · exact absurd u39 a
    have u44 : v149 := by
      rcases c639 with a|a
      · exact absurd a u40
      · exact a
    have u45 : v190 := by
      rcases c642 with a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd a u35
    have u46 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u12 a
      · exact absurd u31 a
      · exact absurd u39 a
      · exact absurd a u24
    have u47 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u46 a
      · exact absurd n1 a
      · exact absurd u31 a
      · exact absurd a u2
    have u48 : ¬v272 := by
      rcases c254 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u12 a
      · exact absurd u39 a
      · exact absurd a u6
      · exact absurd a u19
    have u49 : v230 := by
      rcases c632 with a|a
      · exact absurd u44 a
      · exact a
    have u50 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u46 a
      · exact absurd n1 a
      · exact absurd a u2
    have u51 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd a u40
      · exact absurd u44 a
    have u52 : v145 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u49 a
      · exact absurd u44 a
      · exact a
      · exact absurd u50 a
      · exact absurd u31 a
      · exact absurd a u40
    have u53 : v266 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd u50 a
      · exact absurd u31 a
      · exact absurd a u9
      · exact absurd u46 a
    have u54 : ¬v154 := by
      rcases c767 with a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd a u20
      · exact absurd a u7
    have u55 : ¬v159 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd u53 a
      · exact a
      · exact absurd u49 a
      · exact absurd u31 a
      · exact absurd a u40
      · exact absurd a u51
    have u56 : v153 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u54
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd u52 a
      · exact absurd a u20
    have u57 : ¬v199 := by
      rcases c437 with a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u14 a
      · exact absurd u56 a
    have u58 : ¬v233 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u44 a
      · exact absurd u50 a
      · exact absurd u52 a
      · exact absurd a u20
    have u59 : v325 := by
      rcases c310 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u21
      · exact absurd a u8
      · exact absurd u17 a
      · exact absurd a u32
    have u60 : v276 := by
      rcases c266 with a|a|a|a|a|a
      · exact absurd a u32
      · exact absurd a n0
      · exact absurd u12 a
      · exact a
      · exact absurd a u19
      · exact absurd u25 a
    have u61 : v273 := by
      rcases c292 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u13 a
      · exact absurd u60 a
      · exact absurd u39 a
      · exact absurd a u19
    have u62 : ¬v240 := by
      rcases c208 with a|a|a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd a n0
      · exact absurd u25 a
      · exact absurd a u32
      · exact absurd a u42
    have u63 : v363 := by
      rcases c331 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd u15 a
      · exact absurd a u32
    have u64 : v195 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd u63 a
      · exact absurd a u62
      · exact absurd u14 a
      · exact absurd a u57
      · exact absurd u56 a
    have u65 : ¬v356 := by
      rcases c322 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u25 a
      · exact absurd u29 a
      · exact absurd a u32
      · exact absurd u43 a
    have u66 : v192 := by
      rcases c352 with a|a|a|a
      · exact absurd u64 a
      · exact a
      · exact absurd u45 a
      · exact absurd a u65
    have u67 : v360 := by
      rcases c294 with a|a|a|a|a|a
      · exact absurd u60 a
      · exact absurd u63 a
      · exact a
      · exact absurd a u7
      · exact absurd a u65
      · exact absurd u61 a
    have u68 : v347 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u66 a
      · exact absurd u61 a
      · exact absurd u53 a
      · exact absurd a u51
      · exact absurd a u55
    have u69 : ¬v256 := by
      rcases c286 with a|a|a|a|a|a
      · exact absurd u59 a
      · exact absurd u39 a
      · exact absurd u60 a
      · exact a
      · exact absurd a u30
      · exact absurd a u65
    have u70 : ¬v201 := by
      rcases c91 with a|a|a|a|a|a
      · exact absurd a u69
      · exact a
      · exact absurd a u24
      · exact absurd u33 a
      · exact absurd u12 a
      · exact absurd u46 a
    have u71 : v209 := by
      rcases c398 with a|a|a|a
      · exact absurd a u70
      · exact a
      · exact absurd u46 a
      · exact absurd u33 a
    have u72 : ¬v216 := by
      rcases c190 with a|a|a|a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd u71 a
      · exact absurd u36 a
      · exact absurd u37 a
      · exact absurd a u42
    have u73 : ¬v146 := by
      rcases c17 with a|a|a|a|a|a
      · exact absurd a u54
      · exact a
      · exact absurd a u72
      · exact absurd n1 a
      · exact absurd u46 a
      · exact absurd u52 a
    have u74 : v155 := by
      rcases c393 with a|a|a|a
      · exact a
      · exact absurd a u73
      · exact absurd u46 a
      · exact absurd u52 a
    have u75 : ¬v162 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u4 a
      · exact absurd u46 a
      · exact absurd u52 a
      · exact absurd u74 a
    have u76 : v163 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u74 a
      · exact absurd n1 a
      · exact absurd u46 a
      · exact absurd u52 a
      · exact absurd a u2
    have u77 : v158 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd u74 a
      · exact absurd u46 a
      · exact absurd u52 a
      · exact absurd u50 a
      · exact absurd a u9
    have u78 : ¬v193 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u52 a
      · exact absurd a u40
      · exact absurd u76 a
      · exact absurd a u55
    have u79 : ¬v188 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u77 a
      · exact absurd u44 a
      · exact absurd u52 a
      · exact absurd a u75
    have u80 : ¬v348 := by
      rcases c71 with a|a|a|a|a|a
      · exact absurd a u78
      · exact a
      · exact absurd u53 a
      · exact absurd a u51
      · exact absurd a u55
      · exact absurd a u47
    have u81 : ¬v354 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u79
      · exact absurd u14 a
      · exact absurd u56 a
      · exact absurd a u57
      · exact absurd a u58
    rcases c403 with a|a|a|a
    · exact absurd a u81
    · exact absurd a u80
    · exact absurd u67 a
    · exact absurd u68 a
  have c776 : ¬v363 ∨ ¬v145 ∨ ¬v153 ∨ v199 ∨ ¬v200 ∨ v247 ∨ ¬v251 ∨ ¬v266 ∨ ¬v273 ∨ v280 ∨ v294 ∨ ¬v299 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11⟩ := hc
    have u1 : v364 := c769
    have u2 : ¬v252 := by
      rcases c739 with a|a
      · exact absurd n6 a
      · exact a
    have u3 : ¬v250 := by
      rcases c752 with a|a
      · exact absurd n6 a
      · exact a
    have u4 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd n6 a
    have u5 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a n9
    have u6 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a u2
      · exact a
    have u7 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u2
    have u8 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u3
    have u9 : v278 := by
      rcases c512 with a|a|a|a
      · exact absurd a u3
      · exact absurd n6 a
      · exact a
      · exact absurd a u4
    have u10 : v285 := by
      rcases c744 with a|a
      · exact absurd a u4
      · exact a
    have u11 : v208 := by
      rcases c743 with a|a
      · exact a
      · exact absurd a u6
    have u12 : v288 := by
      rcases c736 with a|a
      · exact absurd u7 a
      · exact a
    have u13 : ¬v275 := by
      rcases c750 with a|a
      · exact absurd u8 a
      · exact a
    have u14 : v361 := by
      rcases c775 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd n4 a
      · exact absurd u11 a
      · exact absurd a u2
    have u16 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u11 a
      · exact absurd a n9
    have u17 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u12 a
    have u18 : ¬v205 := by
      rcases c748 with a|a
      · exact absurd a u13
      · exact a
    have u19 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u8 a
      · exact a
      · exact absurd a u13
      · exact absurd a u3
    have u20 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u13
    have u21 : v276 := by
      rcases c299 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd n0 a
      · exact absurd a n9
      · exact a
      · exact absurd u9 a
      · exact absurd u14 a
    have u22 : ¬v240 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd u21 a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u13
    have u23 : ¬v154 := by
      rcases c767 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u16
      · exact absurd a n9
    have u24 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u17 a
    have u25 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u18
    have u26 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u24
    have u27 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u18
    have u28 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u8 a
      · exact absurd u26 a
      · exact absurd u19 a
      · exact absurd a u3
    have u29 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u18
      · exact absurd a u27
    have u30 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u27
    have u31 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u8 a
      · exact absurd u17 a
      · exact absurd u26 a
      · exact absurd a n5
    have u32 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd u8 a
      · exact absurd u19 a
      · exact absurd a u13
      · exact absurd u29 a
    have u33 : v149 := by
      rcases c639 with a|a
      · exact absurd a u30
      · exact a
    have u34 : v190 := by
      rcases c642 with a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u27
    have u35 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u31
      · exact a
      · exact absurd a n5
      · exact absurd a n10
      · exact absurd n11 a
      · exact absurd u8 a
    have u36 : ¬v356 := by
      rcases c293 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u21 a
      · exact absurd u14 a
      · exact absurd u29 a
      · exact absurd a u13
    have u37 : v230 := by
      rcases c632 with a|a
      · exact absurd u33 a
      · exact a
    have u38 : ¬v233 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u33 a
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd a u16
    have u39 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u35 a
      · exact absurd n4 a
      · exact absurd u11 a
      · exact absurd u25 a
      · exact absurd a u2
    have u40 : v358 := by
      rcases c404 with a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd u14 a
      · exact absurd u32 a
    have u41 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd u37 a
      · exact absurd a u30
      · exact absurd u33 a
    have u42 : ¬v159 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd n7 a
      · exact a
      · exact absurd u37 a
      · exact absurd u25 a
      · exact absurd a u30
      · exact absurd a u41
    have u43 : ¬v301 := by
      rcases c262 with a|a|a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd u9 a
      · exact absurd n8 a
      · exact absurd n6 a
      · exact absurd a u4
    have u44 : v195 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u22
      · exact absurd u5 a
      · exact absurd a n3
      · exact absurd n2 a
    have u45 : v360 := by
      rcases c294 with a|a|a|a|a|a
      · exact absurd u21 a
      · exact absurd n0 a
      · exact a
      · exact absurd a n9
      · exact absurd a u36
      · exact absurd n8 a
    have u46 : v192 := by
      rcases c352 with a|a|a|a
      · exact absurd u44 a
      · exact a
      · exact absurd u34 a
      · exact absurd a u36
    have u47 : v167 := by
      rcases c61 with a|a|a|a|a|a
      · exact absurd a u43
      · exact a
      · exact absurd u35 a
      · exact absurd u46 a
      · exact absurd a u42
      · exact absurd n8 a
    have u48 : v347 := by
      rcases c69 with a|a|a|a|a|a
      · exact a
      · exact absurd u46 a
      · exact absurd n8 a
      · exact absurd n7 a
      · exact absurd a u41
      · exact absurd a u42
    have u49 : v170 := by
      rcases c351 with a|a|a|a
      · exact a
      · exact absurd u46 a
      · exact absurd a u43
      · exact absurd u47 a
    have u50 : ¬v146 := by
      rcases c42 with a|a|a|a|a|a
      · exact absurd n2 a
      · exact absurd u49 a
      · exact a
      · exact absurd u46 a
      · exact absurd u47 a
      · exact absurd a u30
    have u51 : v155 := by
      rcases c393 with a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd n4 a
      · exact absurd n1 a
    have u52 : ¬v162 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd n6 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd u51 a
    have u53 : v163 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd u11 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd a u2
    have u54 : v158 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd u15 a
      · exact absurd a n5
    have u55 : ¬v193 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd n1 a
      · exact absurd a u30
      · exact absurd u53 a
      · exact absurd a u42
    have u56 : ¬v188 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u54 a
      · exact absurd u33 a
      · exact absurd n1 a
      · exact absurd a u52
    have u57 : ¬v348 := by
      rcases c71 with a|a|a|a|a|a
      · exact absurd a u55
      · exact a
      · exact absurd n7 a
      · exact absurd a u41
      · exact absurd a u42
      · exact absurd a u39
    have u58 : ¬v354 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u5 a
      · exact absurd n2 a
      · exact absurd a n3
      · exact absurd a u38
    rcases c403 with a|a|a|a
    · exact absurd a u58
    · exact absurd a u57
    · exact absurd u45 a
    · exact absurd u48 a
  have c777 : ¬v276 ∨ ¬v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v364 := c769
    have u2 : ¬v252 := by
      rcases c771 with a|a
      · exact absurd n1 a
      · exact a
    have u3 : v361 := by
      rcases c775 with a|a
      · exact a
      · exact absurd n1 a
    have u4 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a u2
      · exact a
    have u5 : v251 := by
      rcases c773 with a|a
      · exact a
      · exact absurd a u2
    have u6 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u2
    have u7 : v229 := by
      rcases c628 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
    have u8 : ¬v202 := by
      rcases c653 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
    have u9 : ¬v250 := by
      rcases c752 with a|a
      · exact absurd u5 a
      · exact a
    have u10 : ¬v280 := by
      rcases c774 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
    have u11 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd u5 a
    have u12 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u6 a
    have u13 : v288 := by
      rcases c736 with a|a
      · exact absurd u6 a
      · exact a
    have u14 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u12
    have u15 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u9
    have u16 : v278 := by
      rcases c512 with a|a|a|a
      · exact absurd a u9
      · exact absurd u5 a
      · exact a
      · exact absurd a u11
    have u17 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u10
    have u18 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u5 a
      · exact absurd a u2
    have u19 : v285 := by
      rcases c744 with a|a
      · exact absurd a u11
      · exact a
    have u20 : v327 := by
      rcases c592 with a|a
      · exact absurd a u11
      · exact a
    have u21 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u13 a
    have u22 : ¬v275 := by
      rcases c750 with a|a
      · exact absurd u15 a
      · exact a
    have u23 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd a u10
    have u24 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u11
      · exact absurd u20 a
    have u25 : ¬v281 := by
      rcases c746 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd u13 a
    have u26 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u21 a
    have u27 : ¬v205 := by
      rcases c748 with a|a
      · exact absurd a u22
      · exact a
    have u28 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u15 a
      · exact a
      · exact absurd a u22
      · exact absurd a u9
    have u29 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u22
    have u30 : ¬v309 := by
      rcases c548 with a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u25
      · exact absurd u13 a
    have u31 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u26
    have u32 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u26
    have u33 : v299 := by
      rcases c734 with a|a
      · exact absurd a u26
      · exact a
    have u34 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u27
    have u35 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u19 a
      · exact absurd u31 a
      · exact a
      · exact absurd a u24
      · exact absurd u28 a
      · exact absurd a u11
    have u36 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u15 a
      · exact absurd u31 a
      · exact absurd u28 a
      · exact absurd a u9
    have u37 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u21 a
      · exact absurd a u26
    have u38 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u33 a
    have u39 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u27
    have u40 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u15 a
      · exact absurd a u2
      · exact absurd a u35
      · exact absurd u18 a
    have u41 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u15 a
      · exact absurd u21 a
      · exact absurd u31 a
      · exact absurd a u12
    have u42 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u27
      · exact absurd a u39
    have u43 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u39
    have u44 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u41
      · exact a
      · exact absurd a u12
      · exact absurd a u37
      · exact absurd u33 a
      · exact absurd u15 a
    have u45 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u15 a
      · exact absurd u42 a
      · exact absurd a u27
      · exact absurd a u39
    have u46 : ¬v255 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u42 a
      · exact absurd u33 a
      · exact absurd a u26
      · exact absurd u44 a
    have u47 : ¬v272 := by
      rcases c254 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u15 a
      · exact absurd u42 a
      · exact absurd a u9
      · exact absurd a u22
    have u48 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u15 a
      · exact absurd u28 a
      · exact absurd a u22
      · exact absurd u42 a
    have u49 : v149 := by
      rcases c639 with a|a
      · exact absurd a u43
      · exact a
    have u50 : v190 := by
      rcases c642 with a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd a u39
    have u51 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u15 a
      · exact absurd u34 a
      · exact absurd u42 a
      · exact absurd a u27
    have u52 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u51 a
      · exact absurd n1 a
      · exact absurd u34 a
      · exact absurd a u2
    have u53 : v230 := by
      rcases c632 with a|a
      · exact absurd u49 a
      · exact a
    have u54 : v151 := by
      rcases c426 with a|a|a|a
      · exact absurd u50 a
      · exact a
      · exact absurd a u43
      · exact absurd a u39
    have u55 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u51 a
      · exact absurd n1 a
      · exact absurd a u2
    have u56 : ¬v231 := by
      rcases c163 with a|a|a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd u53 a
      · exact absurd u34 a
      · exact absurd a u27
      · exact absurd a u39
    have u57 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd u53 a
      · exact absurd a u43
      · exact absurd u49 a
    have u58 : v145 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u53 a
      · exact absurd u49 a
      · exact a
      · exact absurd u55 a
      · exact absurd u34 a
      · exact absurd a u43
    have u59 : v266 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u55 a
      · exact absurd u34 a
      · exact absurd a u12
      · exact absurd u51 a
    have u60 : ¬v154 := by
      rcases c767 with a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd a u23
      · exact absurd a u10
    have u61 : v153 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u60
      · exact a
      · exact absurd u17 a
      · exact absurd n1 a
      · exact absurd u58 a
      · exact absurd a u23
    have u62 : v148 := by
      rcases c21 with a|a|a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd n1 a
      · exact absurd u7 a
      · exact absurd u58 a
      · exact absurd a u8
    have u63 : ¬v159 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd u59 a
      · exact a
      · exact absurd u53 a
      · exact absurd u34 a
      · exact absurd a u43
      · exact absurd a u57
    have u64 : ¬v199 := by
      rcases c437 with a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd u17 a
      · exact absurd u61 a
    have u65 : v224 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd u62 a
      · exact a
      · exact absurd u49 a
      · exact absurd u58 a
      · exact absurd a u8
      · exact absurd u55 a
    have u66 : v330 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u59 a
      · exact absurd u53 a
      · exact absurd u55 a
      · exact absurd a u14
      · exact absurd u65 a
    have u67 : ¬v356 := by
      rcases c293 with a|a|a|a|a|a
      · exact a
      · exact absurd u48 a
      · exact absurd n0 a
      · exact absurd u3 a
      · exact absurd u42 a
      · exact absurd a u22
    have u68 : ¬v240 := by
      rcases c172 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
      · exact absurd u29 a
      · exact absurd a u27
      · exact absurd a u22
    have u69 : v273 := by
      rcases c292 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd u16 a
      · exact absurd n0 a
      · exact absurd u42 a
      · exact absurd a u22
    have u70 : ¬v363 := by
      rcases c776 with a|a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u58 a
      · exact absurd u61 a
      · exact absurd a u64
      · exact absurd u51 a
      · exact absurd a u12
      · exact absurd u5 a
      · exact absurd u59 a
      · exact absurd u69 a
      · exact absurd a u10
      · exact absurd a u37
      · exact absurd u33 a
    have u71 : v362 := by
      rcases c410 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u70
      · exact absurd u3 a
    have u72 : v241 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u71 a
      · exact absurd u40 a
      · exact absurd u29 a
      · exact absurd u28 a
      · exact absurd a u45
    have u73 : ¬v307 := by
      rcases c330 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u71 a
      · exact absurd u3 a
      · exact absurd u28 a
      · exact absurd a u11
    have u74 : v357 := by
      rcases c323 with a|a|a|a|a|a
      · exact absurd u71 a
      · exact a
      · exact absurd u40 a
      · exact absurd u28 a
      · exact absurd u33 a
      · exact absurd u48 a
    have u75 : v345 := by
      rcases c201 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd a u56
      · exact absurd a u39
      · exact absurd u33 a
      · exact absurd a u45
    have u76 : v358 := by
      rcases c404 with a|a|a|a
      · exact a
      · exact absurd a u67
      · exact absurd u3 a
      · exact absurd u48 a
    have u77 : ¬v211 := by
      rcases c115 with a|a|a|a|a|a
      · exact absurd u59 a
      · exact a
      · exact absurd a u37
      · exact absurd u55 a
      · exact absurd a u12
      · exact absurd u53 a
    have u78 : v218 := by
      rcases c177 with a|a|a|a|a|a
      · exact a
      · exact absurd a u77
      · exact absurd a u30
      · exact absurd u21 a
      · exact absurd u13 a
      · exact absurd u65 a
    have u79 : ¬v360 := by
      rcases c405 with a|a|a|a
      · exact absurd u74 a
      · exact absurd a u67
      · exact absurd a u70
      · exact a
    have u80 : v302 := by
      rcases c324 with a|a|a|a|a|a
      · exact a
      · exact absurd a u79
      · exact absurd u18 a
      · exact absurd u40 a
      · exact absurd u74 a
      · exact absurd a u70
    have u81 : ¬v301 := by
      rcases c262 with a|a|a|a|a|a
      · exact a
      · exact absurd u76 a
      · exact absurd u16 a
      · exact absurd u69 a
      · exact absurd u5 a
      · exact absurd a u11
    have u82 : v238 := by
      rcases c221 with a|a|a|a|a|a
      · exact absurd a u79
      · exact absurd u72 a
      · exact absurd a u70
      · exact absurd u17 a
      · exact a
      · exact absurd u74 a
    have u83 : ¬v237 := by
      rcases c220 with a|a|a|a|a|a
      · exact absurd a u79
      · exact absurd a u67
      · exact absurd u17 a
      · exact a
      · exact absurd a u68
      · exact absurd a u70
    have u84 : v322 := by
      rcases c235 with a|a|a|a|a|a
      · exact a
      · exact absurd a u81
      · exact absurd u44 a
      · exact absurd a u26
      · exact absurd a u46
      · exact absurd u69 a
    have u85 : v219 := by
      rcases c214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u83
      · exact absurd a u39
      · exact absurd u84 a
      · exact absurd a u38
      · exact absurd a u67
    have u86 : ¬v212 := by
      rcases c129 with a|a|a|a|a|a
      · exact absurd u80 a
      · exact absurd u82 a
      · exact a
      · exact absurd u44 a
      · exact absurd u34 a
      · exact absurd a u52
    have u87 : ¬v146 := by
      rcases c41 with a|a|a|a|a|a
      · exact absurd a u86
      · exact absurd a u45
      · exact absurd u54 a
      · exact absurd a u43
      · exact a
      · exact absurd a u39
    have u88 : ¬v209 := by
      rcases c181 with a|a|a|a|a|a
      · exact absurd a u86
      · exact a
      · exact absurd a u37
      · exact absurd u21 a
      · exact absurd a u26
      · exact absurd a u77
    have u89 : v155 := by
      rcases c393 with a|a|a|a
      · exact a
      · exact absurd a u87
      · exact absurd u51 a
      · exact absurd u58 a
    have u90 : v167 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd a u63
      · exact absurd u58 a
      · exact absurd a u87
      · exact absurd a u43
      · exact absurd u89 a
    have u91 : v201 := by
      rcases c398 with a|a|a|a
      · exact a
      · exact absurd a u88
      · exact absurd u51 a
      · exact absurd u36 a
    have u92 : ¬v162 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u5 a
      · exact absurd u51 a
      · exact absurd u58 a
      · exact absurd u89 a
    have u93 : v163 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u89 a
      · exact absurd n1 a
      · exact absurd u51 a
      · exact absurd u58 a
      · exact absurd a u2
    have u94 : ¬v174 := by
      rcases c74 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd u90 a
      · exact absurd u50 a
      · exact absurd a u26
      · exact absurd u33 a
    have u95 : ¬v254 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd u78 a
      · exact absurd u91 a
      · exact absurd u32 a
      · exact absurd u85 a
      · exact absurd a u46
    have u96 : v197 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u92
      · exact absurd u16 a
      · exact absurd a u64
      · exact absurd a u10
    have u97 : v170 := by
      rcases c64 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd a u92
      · exact absurd u18 a
      · exact absurd u5 a
      · exact absurd a u10
    have u98 : v192 := by
      rcases c34 with a|a|a|a|a|a
      · exact a
      · exact absurd u61 a
      · exact absurd a u43
      · exact absurd a u92
      · exact absurd u58 a
      · exact absurd a u63
    have u99 : ¬v193 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd u58 a
      · exact absurd a u43
      · exact absurd u93 a
      · exact absurd a u63
    have u100 : ¬v171 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd u18 a
      · exact absurd u93 a
      · exact absurd a u2
      · exact absurd a u10
    have u101 : ¬v169 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u73
      · exact absurd u18 a
      · exact absurd u97 a
      · exact absurd a u11
      · exact absurd a u100
    have u102 : ¬v191 := by
      rcases c78 with a|a|a|a|a|a
      · exact a
      · exact absurd u98 a
      · exact absurd a u101
      · exact absurd u96 a
      · exact absurd u90 a
      · exact absurd u97 a
    have u103 : ¬v323 := by
      rcases c76 with a|a|a|a|a|a
      · exact absurd a u99
      · exact a
      · exact absurd u80 a
      · exact absurd a u94
      · exact absurd u90 a
      · exact absurd a u26
    have u104 : ¬v346 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u102
      · exact absurd u59 a
      · exact absurd a u57
      · exact absurd a u63
      · exact absurd a u47
    have u105 : v223 := by
      rcases c364 with a|a|a|a
      · exact absurd a u103
      · exact a
      · exact absurd u85 a
      · exact absurd u82 a
    have u106 : v349 := by
      rcases c401 with a|a|a|a
      · exact a
      · exact absurd a u104
      · exact absurd u48 a
      · exact absurd u75 a
    have u107 : ¬v217 := by
      rcases c140 with a|a|a|a|a|a
      · exact a
      · exact absurd u105 a
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd u91 a
      · exact absurd a u8
    have u108 : ¬v220 := by
      rcases c145 with a|a|a|a|a|a
      · exact a
      · exact absurd u91 a
      · exact absurd u105 a
      · exact absurd n1 a
      · exact absurd u72 a
      · exact absurd a u27
    have u109 : ¬v316 := by
      rcases c184 with a|a|a|a|a|a
      · exact a
      · exact absurd u78 a
      · exact absurd u21 a
      · exact absurd a u108
      · exact absurd u31 a
      · exact absurd a u88
    have u110 : v311 := by
      rcases c211 with a|a|a|a|a|a
      · exact a
      · exact absurd u78 a
      · exact absurd a u107
      · exact absurd a u30
      · exact absurd a u108
      · exact absurd a u109
    have u111 : v267 := by
      rcases c290 with a|a|a|a|a|a
      · exact a
      · exact absurd u106 a
      · exact absurd u48 a
      · exact absurd u42 a
      · exact absurd u75 a
      · exact absurd a u22
    have u112 : ¬v331 := by
      rcases c282 with a|a|a|a|a|a
      · exact absurd u111 a
      · exact a
      · exact absurd a u95
      · exact absurd a u14
      · exact absurd a u30
      · exact absurd a u109
    have u113 : v335 := by
      rcases c400 with a|a|a|a
      · exact a
      · exact absurd a u112
      · exact absurd u75 a
      · exact absurd u66 a
    rcases c337 with a|a|a|a|a|a
    · exact absurd u113 a
    · exact absurd a u112
    · exact absurd u75 a
    · exact absurd a u109
    · exact absurd a u38
    · exact absurd u110 a
  have c778 : v146 ∨ ¬v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v364 := c769
    have u2 : v361 := by
      rcases c775 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : ¬v252 := by
      rcases c771 with a|a
      · exact absurd n1 a
      · exact a
    have u4 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a u3
      · exact a
    have u5 : v251 := by
      rcases c773 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u3
    have u7 : ¬v250 := by
      rcases c752 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v280 := by
      rcases c774 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v288 := by
      rcases c736 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u7
    have u13 : v278 := by
      rcases c512 with a|a|a|a
      · exact absurd a u7
      · exact absurd u5 a
      · exact a
      · exact absurd a u9
    have u14 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u8
    have u15 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u3
    have u16 : v285 := by
      rcases c744 with a|a
      · exact absurd a u9
      · exact a
    have u17 : v327 := by
      rcases c592 with a|a
      · exact absurd a u9
      · exact a
    have u18 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u11 a
    have u19 : ¬v275 := by
      rcases c750 with a|a
      · exact absurd u12 a
      · exact a
    have u20 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd a u8
    have u21 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u9
      · exact absurd u17 a
    have u22 : ¬v281 := by
      rcases c746 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u11 a
    have u23 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v205 := by
      rcases c748 with a|a
      · exact absurd a u19
      · exact a
    have u25 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd a u19
      · exact absurd a u7
    have u26 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u23
    have u27 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u23
    have u28 : v299 := by
      rcases c734 with a|a
      · exact absurd a u23
      · exact a
    have u29 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u24
    have u30 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u16 a
      · exact absurd u26 a
      · exact a
      · exact absurd a u21
      · exact absurd u25 a
      · exact absurd a u9
    have u31 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u12 a
      · exact absurd u26 a
      · exact absurd u25 a
      · exact absurd a u7
    have u32 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u27 a
      · exact a
      · exact absurd u18 a
      · exact absurd a u23
    have u33 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u24
    have u34 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u12 a
      · exact absurd a u3
      · exact absurd a u30
      · exact absurd u15 a
    have u35 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u12 a
      · exact absurd u18 a
      · exact absurd u26 a
      · exact absurd a u10
    have u36 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd a u24
      · exact absurd a u33
    have u37 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u33
    have u38 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u35
      · exact a
      · exact absurd a u10
      · exact absurd a u32
      · exact absurd u28 a
      · exact absurd u12 a
    have u39 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u12 a
      · exact absurd u36 a
      · exact absurd a u24
      · exact absurd a u33
    have u40 : v149 := by
      rcases c639 with a|a
      · exact absurd a u37
      · exact a
    have u41 : v190 := by
      rcases c642 with a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u33
    have u42 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u12 a
      · exact absurd u29 a
      · exact absurd u36 a
      · exact absurd a u24
    have u43 : v230 := by
      rcases c632 with a|a
      · exact absurd u40 a
      · exact a
    have u44 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd n1 a
      · exact absurd a u3
    have u45 : v145 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u43 a
      · exact absurd u40 a
      · exact a
      · exact absurd u44 a
      · exact absurd u29 a
      · exact absurd a u37
    have u46 : ¬v154 := by
      rcases c767 with a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd a u20
      · exact absurd a u8
    have u47 : v153 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u46
      · exact a
      · exact absurd u14 a
      · exact absurd n1 a
      · exact absurd u45 a
      · exact absurd a u20
    have u48 : ¬v276 := by
      rcases c777 with a|a
      · exact a
      · exact absurd n1 a
    have u49 : ¬v202 := by
      rcases c653 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
    have u50 : v229 := by
      rcases c628 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u4
    have u51 : ¬v363 := by
      rcases c299 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u8
      · exact absurd a u48
      · exact absurd u13 a
      · exact absurd u2 a
    have u52 : v362 := by
      rcases c410 with a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd a u51
      · exact absurd u2 a
    have u53 : ¬v260 := by
      rcases c645 with a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u10
    have u54 : ¬v309 := by
      rcases c548 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u22
      · exact absurd u11 a
    have u55 : v239 := by
      rcases c623 with a|a
      · exact a
      · exact absurd a u19
    have u56 : ¬v320 := by
      rcases c673 with a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u28 a
    have u57 : v355 := by
      rcases c256 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u12 a
      · exact absurd u25 a
      · exact absurd a u19
      · exact absurd u36 a
    have u58 : ¬v255 := by
      rcases c234 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u36 a
      · exact absurd u28 a
      · exact absurd a u23
      · exact absurd u38 a
    have u59 : ¬v272 := by
      rcases c254 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u12 a
      · exact absurd u36 a
      · exact absurd a u7
      · exact absurd a u19
    have u60 : v266 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u44 a
      · exact absurd u29 a
      · exact absurd a u10
      · exact absurd u42 a
    have u61 : ¬v274 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u42 a
      · exact absurd n1 a
      · exact absurd u29 a
      · exact absurd a u3
    have u62 : ¬v231 := by
      rcases c163 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd u43 a
      · exact absurd u29 a
      · exact absurd a u24
      · exact absurd a u33
    have u63 : ¬v185 := by
      rcases c419 with a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd a u37
      · exact absurd u40 a
    have u64 : ¬v211 := by
      rcases c5 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u40 a
      · exact absurd u42 a
      · exact a
      · exact absurd u45 a
      · exact absurd u44 a
    have u65 : v234 := by
      rcases c28 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd n1 a
      · exact absurd u40 a
      · exact absurd u44 a
      · exact absurd u45 a
    have u66 : ¬v233 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u40 a
      · exact absurd u44 a
      · exact absurd u45 a
      · exact absurd a u20
    have u67 : v155 := by
      rcases c393 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u42 a
      · exact absurd u45 a
    have u68 : ¬v199 := by
      rcases c437 with a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u14 a
      · exact absurd u47 a
    have u69 : v148 := by
      rcases c21 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd n1 a
      · exact absurd u50 a
      · exact absurd u45 a
      · exact absurd a u49
    have u70 : v241 := by
      rcases c209 with a|a|a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd u34 a
      · exact absurd u55 a
      · exact absurd u25 a
      · exact absurd a u39
    have u71 : ¬v307 := by
      rcases c330 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u52 a
      · exact absurd u2 a
      · exact absurd u25 a
      · exact absurd a u9
    have u72 : v206 := by
      rcases c454 with a|a|a|a
      · exact a
      · exact absurd u55 a
      · exact absurd a u24
      · exact absurd a u19
    have u73 : v357 := by
      rcases c323 with a|a|a|a|a|a
      · exact absurd u52 a
      · exact a
      · exact absurd u34 a
      · exact absurd u25 a
      · exact absurd u28 a
      · exact absurd u57 a
    have u74 : ¬v159 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd u60 a
      · exact a
      · exact absurd u43 a
      · exact absurd u29 a
      · exact absurd a u37
      · exact absurd a u63
    have u75 : v345 := by
      rcases c200 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd a u62
      · exact absurd a u64
      · exact absurd a u32
      · exact absurd u43 a
    have u76 : ¬v162 := by
      rcases c16 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u5 a
      · exact absurd u42 a
      · exact absurd u45 a
      · exact absurd u67 a
    have u77 : v163 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd n1 a
      · exact absurd u42 a
      · exact absurd u45 a
      · exact absurd a u3
    have u78 : v158 := by
      rcases c6 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd u42 a
      · exact absurd u45 a
      · exact absurd u44 a
      · exact absurd a u10
    have u79 : ¬v166 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u42 a
      · exact absurd a u64
      · exact absurd u67 a
      · exact absurd a u10
    have u80 : ¬v160 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd u12 a
      · exact absurd u42 a
      · exact absurd u45 a
      · exact absurd a u24
    have u81 : v224 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd u69 a
      · exact a
      · exact absurd u40 a
      · exact absurd u45 a
      · exact absurd a u49
      · exact absurd u44 a
    have u82 : v161 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u67 a
      · exact absurd u72 a
      · exact absurd u42 a
      · exact absurd u45 a
      · exact absurd a u7
    have u83 : v167 := by
      rcases c9 with a|a|a|a|a|a
      · exact a
      · exact absurd a u74
      · exact absurd u45 a
      · exact absurd a n0
      · exact absurd a u37
      · exact absurd u67 a
    have u84 : v197 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u76
      · exact absurd u13 a
      · exact absurd a u68
      · exact absurd a u8
    have u85 : v170 := by
      rcases c64 with a|a|a|a|a|a
      · exact a
      · exact absurd a u68
      · exact absurd a u76
      · exact absurd u15 a
      · exact absurd u5 a
      · exact absurd a u8
    have u86 : v192 := by
      rcases c34 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u37
      · exact absurd a u76
      · exact absurd u45 a
      · exact absurd a u74
    have u87 : ¬v193 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u45 a
      · exact absurd a u37
      · exact absurd u77 a
      · exact absurd a u74
    have u88 : ¬v171 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd a u68
      · exact absurd u15 a
      · exact absurd u77 a
      · exact absurd a u3
      · exact absurd a u8
    have u89 : ¬v188 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u78 a
      · exact absurd u40 a
      · exact absurd u45 a
      · exact absurd a u76
    have u90 : ¬v186 := by
      rcases c66 with a|a|a|a|a|a
      · exact a
      · exact absurd a u80
      · exact absurd u41 a
      · exact absurd u78 a
      · exact absurd a u74
      · exact absurd a u63
    have u91 : v218 := by
      rcases c177 with a|a|a|a|a|a
      · exact a
      · exact absurd a u64
      · exact absurd a u54
      · exact absurd u18 a
      · exact absurd u11 a
      · exact absurd u81 a
    have u92 : v330 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u60 a
      · exact absurd u43 a
      · exact absurd u44 a
      · exact absurd a u53
      · exact absurd u81 a
    have u93 : ¬v174 := by
      rcases c74 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u83 a
      · exact absurd u41 a
      · exact absurd a u23
      · exact absurd u28 a
    have u94 : v187 := by
      rcases c72 with a|a|a|a|a|a
      · exact a
      · exact absurd u84 a
      · exact absurd u78 a
      · exact absurd a u76
      · exact absurd u82 a
      · exact absurd a u89
    have u95 : ¬v297 := by
      rcases c350 with a|a|a|a
      · exact a
      · exact absurd a u89
      · exact absurd a u79
      · exact absurd u85 a
    have u96 : ¬v169 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u71
      · exact absurd u15 a
      · exact absurd u85 a
      · exact absurd a u9
      · exact absurd a u88
    have u97 : ¬v191 := by
      rcases c78 with a|a|a|a|a|a
      · exact a
      · exact absurd u86 a
      · exact absurd a u96
      · exact absurd u84 a
      · exact absurd u83 a
      · exact absurd u85 a
    have u98 : ¬v348 := by
      rcases c71 with a|a|a|a|a|a
      · exact absurd a u87
      · exact a
      · exact absurd u60 a
      · exact absurd a u63
      · exact absurd a u74
      · exact absurd a u61
    have u99 : ¬v354 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd a u89
      · exact absurd u14 a
      · exact absurd u47 a
      · exact absurd a u68
      · exact absurd a u66
    have u100 : v347 := by
      rcases c52 with a|a|a|a|a|a
      · exact absurd a u89
      · exact a
      · exact absurd u40 a
      · exact absurd u43 a
      · exact absurd a u63
      · exact absurd a u66
    have u101 : v352 := by
      rcases c77 with a|a|a|a|a|a
      · exact a
      · exact absurd a u95
      · exact absurd u85 a
      · exact absurd a u89
      · exact absurd a u9
      · exact absurd u84 a
    have u102 : ¬v346 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u97
      · exact absurd u60 a
      · exact absurd a u63
      · exact absurd a u74
      · exact absurd a u59
    have u103 : ¬v360 := by
      rcases c403 with a|a|a|a
      · exact absurd a u99
      · exact absurd a u98
      · exact a
      · exact absurd u100 a
    have u104 : ¬v301 := by
      rcases c321 with a|a|a|a|a|a
      · exact a
      · exact absurd a u95
      · exact absurd u15 a
      · exact absurd u100 a
      · exact absurd a u99
      · exact absurd a u103
    have u105 : v349 := by
      rcases c401 with a|a|a|a
      · exact a
      · exact absurd a u102
      · exact absurd u57 a
      · exact absurd u75 a
    have u106 : v302 := by
      rcases c324 with a|a|a|a|a|a
      · exact a
      · exact absurd a u103
      · exact absurd u15 a
      · exact absurd u34 a
      · exact absurd u73 a
      · exact absurd a u51
    have u107 : v238 := by
      rcases c218 with a|a|a|a|a|a
      · exact absurd u65 a
      · exact absurd a u98
      · exact absurd u14 a
      · exact a
      · exact absurd a u99
      · exact absurd a u103
    have u108 : ¬v237 := by
      rcases c216 with a|a|a|a|a|a
      · exact absurd a u99
      · exact absurd a u66
      · exact absurd u14 a
      · exact a
      · exact absurd u100 a
      · exact absurd a u103
    have u109 : v322 := by
      rcases c75 with a|a|a|a|a|a
      · exact a
      · exact absurd a u104
      · exact absurd a u93
      · exact absurd a u23
      · exact absurd u83 a
      · exact absurd u86 a
    have u110 : ¬v356 := by
      rcases c319 with a|a|a|a|a|a
      · exact absurd a u104
      · exact a
      · exact absurd u75 a
      · exact absurd u28 a
      · exact absurd a u32
      · exact absurd u100 a
    have u111 : ¬v350 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd u94 a
      · exact absurd u105 a
      · exact absurd u101 a
      · exact absurd a u90
      · exact absurd a u89
    have u112 : ¬v323 := by
      rcases c76 with a|a|a|a|a|a
      · exact absurd a u87
      · exact a
      · exact absurd u106 a
      · exact absurd a u93
      · exact absurd u83 a
      · exact absurd a u23
    have u113 : ¬v212 := by
      rcases c43 with a|a|a|a|a|a
      · exact absurd a u104
      · exact absurd a u108
      · exact a
      · exact absurd a u37
      · exact absurd u86 a
      · exact absurd u83 a
    have u114 : v219 := by
      rcases c214 with a|a|a|a|a|a
      · exact a
      · exact absurd a u108
      · exact absurd a u33
      · exact absurd u109 a
      · exact absurd a u56
      · exact absurd a u110
    have u115 : v267 := by
      rcases c291 with a|a|a|a|a|a
      · exact a
      · exact absurd u105 a
      · exact absurd a u48
      · exact absurd a u19
      · exact absurd u2 a
      · exact absurd a u111
    have u116 : ¬v209 := by
      rcases c181 with a|a|a|a|a|a
      · exact absurd a u113
      · exact a
      · exact absurd a u32
      · exact absurd u18 a
      · exact absurd a u23
      · exact absurd a u64
    have u117 : v223 := by
      rcases c364 with a|a|a|a
      · exact absurd a u112
      · exact a
      · exact absurd u114 a
      · exact absurd u107 a
    have u118 : v201 := by
      rcases c398 with a|a|a|a
      · exact a
      · exact absurd a u116
      · exact absurd u42 a
      · exact absurd u31 a
    have u119 : ¬v217 := by
      rcases c140 with a|a|a|a|a|a
      · exact a
      · exact absurd u117 a
      · exact absurd u50 a
      · exact absurd n1 a
      · exact absurd u118 a
      · exact absurd a u49
    have u120 : ¬v220 := by
      rcases c145 with a|a|a|a|a|a
      · exact a
      · exact absurd u118 a
      · exact absurd u117 a
      · exact absurd n1 a
      · exact absurd u70 a
      · exact absurd a u24
    have u121 : ¬v254 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd u91 a
      · exact absurd u118 a
      · exact absurd u27 a
      · exact absurd u114 a
      · exact absurd a u58
    have u122 : ¬v316 := by
      rcases c184 with a|a|a|a|a|a
      · exact a
      · exact absurd u91 a
      · exact absurd u18 a
      · exact absurd a u120
      · exact absurd u26 a
      · exact absurd a u116
    have u123 : ¬v331 := by
      rcases c282 with a|a|a|a|a|a
      · exact absurd u115 a
      · exact a
      · exact absurd a u121
      · exact absurd a u53
      · exact absurd a u54
      · exact absurd a u122
    have u124 : v311 := by
      rcases c211 with a|a|a|a|a|a
      · exact a
      · exact absurd u91 a
      · exact absurd a u119
      · exact absurd a u54
      · exact absurd a u120
      · exact absurd a u122
    have u125 : v335 := by
      rcases c400 with a|a|a|a
      · exact a
      · exact absurd a u123
      · exact absurd u75 a
      · exact absurd u92 a
    rcases c337 with a|a|a|a|a|a
    · exact absurd u125 a
    · exact absurd a u123
    · exact absurd u75 a
    · exact absurd a u122
    · exact absurd a u56
    · exact absurd u124 a
  have c779 : ¬v208 := by
    by_contra hc
    have u1 : v146 := by
      rcases c778 with a|a
      · exact a
      · exact absurd hc a
    have u2 : v361 := by
      rcases c775 with a|a
      · exact a
      · exact absurd hc a
    have u3 : ¬v252 := by
      rcases c771 with a|a
      · exact absurd hc a
      · exact a
    have u4 : ¬v265 := by
      rcases c765 with a|a
      · exact absurd a u3
      · exact a
    have u5 : v251 := by
      rcases c773 with a|a
      · exact a
      · exact absurd a u3
    have u6 : v246 := by
      rcases c620 with a|a
      · exact a
      · exact absurd a u3
    have u7 : ¬v250 := by
      rcases c752 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v280 := by
      rcases c774 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u9 : ¬v306 := by
      rcases c745 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v247 := by
      rcases c644 with a|a
      · exact a
      · exact absurd u6 a
    have u11 : v288 := by
      rcases c736 with a|a
      · exact absurd u6 a
      · exact a
    have u12 : v293 := by
      rcases c536 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u6 a
    have u13 : v249 := by
      rcases c612 with a|a
      · exact a
      · exact absurd a u7
    have u14 : v278 := by
      rcases c512 with a|a|a|a
      · exact absurd a u7
      · exact absurd u5 a
      · exact a
      · exact absurd a u9
    have u15 : v244 := by
      rcases c626 with a|a
      · exact a
      · exact absurd a u8
    have u16 : v308 := by
      rcases c526 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u3
    have u17 : v285 := by
      rcases c744 with a|a
      · exact absurd a u9
      · exact a
    have u18 : v327 := by
      rcases c592 with a|a
      · exact absurd a u9
      · exact a
    have u19 : v282 := by
      rcases c650 with a|a
      · exact a
      · exact absurd u11 a
    have u20 : ¬v275 := by
      rcases c750 with a|a
      · exact absurd u13 a
      · exact a
    have u21 : ¬v207 := by
      rcases c473 with a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd hc a
      · exact absurd a u8
    have u22 : ¬v286 := by
      rcases c587 with a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u9
      · exact absurd u18 a
    have u23 : ¬v281 := by
      rcases c746 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd u11 a
    have u24 : ¬v283 := by
      rcases c663 with a|a
      · exact a
      · exact absurd u19 a
    have u25 : ¬v205 := by
      rcases c748 with a|a
      · exact absurd a u20
      · exact a
    have u26 : v303 := by
      rcases c502 with a|a|a|a
      · exact absurd u13 a
      · exact a
      · exact absurd a u20
      · exact absurd a u7
    have u27 : v284 := by
      rcases c676 with a|a
      · exact a
      · exact absurd a u24
    have u28 : v315 := by
      rcases c680 with a|a|a
      · exact a
      · exact absurd u19 a
      · exact absurd a u24
    have u29 : v299 := by
      rcases c734 with a|a
      · exact absurd a u24
      · exact a
    have u30 : v204 := by
      rcases c635 with a|a
      · exact a
      · exact absurd a u25
    have u31 : ¬v304 := by
      rcases c307 with a|a|a|a|a|a
      · exact absurd u17 a
      · exact absurd u27 a
      · exact a
      · exact absurd a u22
      · exact absurd u26 a
      · exact absurd a u9
    have u32 : v245 := by
      rcases c238 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u13 a
      · exact absurd u27 a
      · exact absurd u26 a
      · exact absurd a u7
    have u33 : ¬v294 := by
      rcases c562 with a|a|a|a
      · exact absurd u28 a
      · exact a
      · exact absurd u19 a
      · exact absurd a u24
    have u34 : ¬v235 := by
      rcases c640 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u25
    have u35 : v305 := by
      rcases c275 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u13 a
      · exact absurd a u3
      · exact absurd a u31
      · exact absurd u16 a
    have u36 : v287 := by
      rcases c226 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u32 a
      · exact absurd a u3
      · exact absurd u6 a
      · exact absurd a u23
    have u37 : ¬v295 := by
      rcases c229 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u13 a
      · exact absurd u19 a
      · exact absurd u27 a
      · exact absurd a u10
    have u38 : v271 := by
      rcases c446 with a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u25
      · exact absurd a u34
    have u39 : ¬v150 := by
      rcases c660 with a|a
      · exact a
      · exact absurd a u34
    have u40 : v149 := by
      rcases c639 with a|a
      · exact absurd a u39
      · exact a
    have u41 : v230 := by
      rcases c632 with a|a
      · exact absurd u40 a
      · exact a
    have u42 : v248 := by
      rcases c253 with a|a|a|a|a|a
      · exact absurd a u37
      · exact a
      · exact absurd a u10
      · exact absurd a u33
      · exact absurd u29 a
      · exact absurd u13 a
    have u43 : ¬v213 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd u29 a
      · exact absurd u13 a
      · exact absurd u38 a
      · exact absurd a u25
      · exact absurd a u34
    have u44 : v190 := by
      rcases c642 with a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd a u34
    have u45 : v200 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u13 a
      · exact absurd u30 a
      · exact absurd u38 a
      · exact absurd a u25
    have u46 : v151 := by
      rcases c426 with a|a|a|a
      · exact absurd u44 a
      · exact a
      · exact absurd a u39
      · exact absurd a u34
    have u47 : v203 := by
      rcases c654 with a|a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd hc a
      · exact absurd a u3
    have u48 : v212 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd u46 a
      · exact absurd a u39
      · exact absurd u1 a
      · exact absurd a u34
    have u49 : v145 := by
      rcases c23 with a|a|a|a|a|a
      · exact absurd u41 a
      · exact absurd u40 a
      · exact a
      · exact absurd u47 a
      · exact absurd u30 a
      · exact absurd a u39
    have u50 : ¬v154 := by
      rcases c767 with a|a|a|a
      · exact a
      · exact absurd u49 a
      · exact absurd a u21
      · exact absurd a u8
    have u51 : v153 := by
      rcases c36 with a|a|a|a|a|a
      · exact absurd a u50
      · exact a
      · exact absurd u15 a
      · exact absurd hc a
      · exact absurd u49 a
      · exact absurd a u21
    have u52 : v216 := by
      rcases c17 with a|a|a|a|a|a
      · exact absurd a u50
      · exact absurd u1 a
      · exact a
      · exact absurd hc a
      · exact absurd u45 a
      · exact absurd u49 a
    have u53 : ¬v215 := by
      rcases c14 with a|a|a|a|a|a
      · exact absurd u51 a
      · exact a
      · exact absurd u45 a
      · exact absurd u1 a
      · exact absurd u49 a
      · exact absurd a u21
    have u54 : ¬v209 := by
      rcases c190 with a|a|a|a|a|a
      · exact absurd u52 a
      · exact absurd u27 a
      · exact a
      · exact absurd u35 a
      · exact absurd u36 a
      · exact absurd a u43
    have u55 : ¬v242 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd a u53
      · exact absurd a u21
      · exact a
      · exact absurd u14 a
      · exact absurd u5 a
      · exact absurd a u9
    rcases c674 with a|a|a|a|a|a|a|a|a|a
    · exact absurd u32 a
    · exact absurd u45 a
    · exact absurd a u21
    · exact absurd a u54
    · exact absurd u48 a
    · exact absurd a u55
    · exact absurd a u10
    · exact absurd u14 a
    · exact absurd u19 a
    · exact absurd u2 a
  have c780 : ¬v256 ∨ v276 ∨ v325 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v208 := c779
    have u2 : v265 := by
      rcases c743 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v252 := by
      rcases c765 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u4
    have u7 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u4
    have u8 : v250 := by
      rcases c741 with a|a
      · exact absurd a u4
      · exact a
    have u9 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u5
    have u10 : ¬v308 := by
      rcases c525 with a|a|a|a
      · exact a
      · exact absurd u6 a
      · exact absurd a u4
      · exact absurd u3 a
    have u11 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u7 a
    have u12 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u7 a
    have u13 : v275 := by
      rcases c763 with a|a
      · exact a
      · exact absurd u8 a
    have u14 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u8 a
    have u15 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u9
    have u16 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u9
    have u17 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u11
      · exact absurd u7 a
      · exact absurd a u12
      · exact a
    have u18 : v205 := by
      rcases c729 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u14
      · exact absurd u13 a
      · exact absurd u8 a
      · exact a
    have u20 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u15
    have u21 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u20 a
    have u24 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u22
      · exact absurd a u19
      · exact absurd u8 a
      · exact absurd a u14
      · exact absurd a u11
      · exact a
    have u25 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u16 a
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd a u15
    have u26 : ¬v287 := by
      rcases c249 with a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd u17 a
      · exact absurd u3 a
      · exact absurd a u4
      · exact absurd a u10
    have u27 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u21
      · exact a
      · exact absurd u18 a
      · exact absurd a u25
      · exact absurd a u19
    have u28 : ¬v207 := by
      rcases c723 with a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u27
      · exact absurd u18 a
      · exact a
      · exact absurd a u1
      · exact absurd a u24
      · exact absurd a u19
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd u3 a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a u11
      · exact absurd u17 a
      · exact absurd a u26
      · exact absurd a n2
      · exact absurd a n3
    have u29 : v244 := by
      rcases c465 with a|a|a|a
      · exact absurd a u28
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
    rcases c466 with a|a|a|a
    · exact absurd a u1
    · exact absurd a u28
    · exact absurd u6 a
    · exact absurd u29 a
  have c781 : v363 := by
    by_contra hc
    have u1 : v364 := c769
    have u2 : ¬v208 := c779
    have u3 : v265 := by
      rcases c743 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v252 := by
      rcases c765 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u5
    have u8 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u5
    have u9 : v250 := by
      rcases c741 with a|a
      · exact absurd a u5
      · exact a
    have u10 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u6
    have u11 : ¬v308 := by
      rcases c525 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd u4 a
    have u12 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u8 a
    have u13 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u8 a
    have u14 : v275 := by
      rcases c763 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u9 a
    have u16 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u10
    have u17 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u12
      · exact absurd u8 a
      · exact absurd a u13
      · exact a
    have u18 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u15
      · exact absurd u14 a
      · exact absurd u9 a
      · exact a
    have u19 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u16
    have u20 : v329 := by
      rcases c316 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u11
      · exact a
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd u17 a
    have u21 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u19 a
      · exact a
    have u22 : v304 := by
      rcases c306 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u8 a
      · exact absurd a u12
      · exact absurd a u15
      · exact absurd u17 a
    have u23 : ¬v276 := by
      rcases c277 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a hc
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a u11
    have u24 : ¬v325 := by
      rcases c312 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd a hc
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd u22 a
    have u25 : v256 := by
      rcases c242 with a|a|a|a|a|a
      · exact absurd a u24
      · exact a
      · exact absurd a u18
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u23
    rcases c780 with a|a|a|a
    · exact absurd u25 a
    · exact absurd a u23
    · exact absurd a u24
    · exact absurd a hc
  have c782 : ¬v146 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v208 := c779
    have u2 : v265 := by
      rcases c743 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v252 := by
      rcases c765 with a|a
      · exact a
      · exact absurd u2 a
    have u5 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u5
    have u8 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u5
    have u9 : v250 := by
      rcases c741 with a|a
      · exact absurd a u5
      · exact a
    have u10 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u6
    have u11 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : v275 := by
      rcases c763 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u10
    have u15 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u10
    have u16 : v205 := by
      rcases c729 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u13
      · exact absurd u12 a
      · exact absurd u9 a
      · exact a
    have u18 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u14
    have u19 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u15 a
      · exact absurd a u10
    have u20 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd u16 a
    have u21 : v238 := by
      rcases c760 with a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u1
      · exact absurd u4 a
    have u22 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u16 a
    have u23 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u18 a
      · exact a
    have u24 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u18 a
    have u25 : v235 := by
      rcases c444 with a|a|a|a
      · exact absurd a u22
      · exact absurd u16 a
      · exact absurd a u20
      · exact a
    have u26 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u23
      · exact absurd a u17
      · exact absurd u9 a
      · exact absurd a u13
      · exact absurd a u11
      · exact a
    have u27 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u14
      · exact absurd u24 a
    have u28 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd u15 a
      · exact absurd u24 a
      · exact absurd a u26
      · exact absurd a u14
    have u29 : ¬v299 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u26
      · exact a
      · exact absurd u18 a
      · exact absurd a u17
      · exact absurd a u23
    have u30 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u20
      · exact a
      · exact absurd u16 a
      · exact absurd a u28
      · exact absurd a u17
    have u31 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u23
      · exact absurd a u29
    have u32 : v274 := by
      rcases c128 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u4 a
      · exact absurd a u30
      · exact absurd a u1
      · exact absurd a u28
    have u33 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd u19 a
      · exact absurd a u30
      · exact absurd a u6
    have u34 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u22
      · exact absurd u18 a
      · exact absurd u31 a
      · exact absurd a u29
    have u35 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd a u33
      · exact absurd a u20
      · exact absurd a u28
      · exact absurd u15 a
    have u36 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u34 a
      · exact absurd u31 a
      · exact a
      · exact absurd a u35
      · exact absurd a u22
      · exact absurd a u27
    have u37 : ¬v230 := by
      rcases c757 with a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a u36
    have u38 : ¬v149 := by
      rcases c632 with a|a
      · exact a
      · exact absurd a u37
    have u39 : v231 := by
      rcases c162 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u25 a
      · exact absurd a u20
      · exact absurd a u37
      · exact absurd a u33
    have u40 : v150 := by
      rcases c639 with a|a
      · exact a
      · exact absurd a u38
    have u41 : ¬v151 := by
      rcases c49 with a|a|a|a|a|a
      · exact absurd u39 a
      · exact absurd u40 a
      · exact absurd u25 a
      · exact a
      · exact absurd a u38
      · exact absurd a u37
    have u42 : ¬v190 := by
      rcases c429 with a|a|a|a
      · exact a
      · exact absurd u40 a
      · exact absurd u25 a
      · exact absurd a u41
    have u43 : ¬v145 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u38
      · exact absurd u40 a
      · exact absurd a u20
      · exact absurd a u37
    have u44 : v185 := by
      rcases c416 with a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u37
      · exact absurd u40 a
    have u45 : v159 := by
      rcases c67 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd u44 a
      · exact absurd a u35
      · exact absurd a u22
      · exact absurd a u36
    have u46 : v207 := by
      rcases c465 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u7 a
      · exact absurd a u1
    have u47 : v154 := by
      rcases c754 with a|a
      · exact a
      · exact absurd a n1
    have u48 : ¬v155 := by
      rcases c392 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u43
      · exact absurd a u30
    have u49 : ¬v273 := by
      rcases c170 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact a
      · exact absurd u7 a
      · exact absurd u46 a
      · exact absurd a u20
      · exact absurd a u1
    have u50 : ¬v234 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u43
      · exact absurd a u38
      · exact absurd a u33
      · exact absurd a u1
    have u51 : ¬v153 := by
      rcases c37 with a|a|a|a|a|a
      · exact absurd u47 a
      · exact absurd a u43
      · exact absurd u46 a
      · exact a
      · exact absurd a u1
      · exact absurd a n1
    have u52 : v162 := by
      rcases c15 with a|a|a|a|a|a
      · exact absurd a u48
      · exact a
      · exact absurd u46 a
      · exact absurd a u43
      · exact absurd a u30
      · exact absurd a u5
    have u53 : ¬v163 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u4 a
      · exact absurd u32 a
      · exact absurd u45 a
      · exact absurd a u28
    have u54 : ¬v158 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd u15 a
      · exact absurd u45 a
      · exact absurd a u28
      · exact absurd a u35
    have u55 : v199 := by
      rcases c434 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a n1
      · exact absurd a u51
    have u56 : ¬v192 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd a u51
      · exact absurd u45 a
      · exact absurd u40 a
      · exact absurd a u43
      · exact absurd u52 a
    have u57 : ¬v189 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u43
      · exact absurd a u38
      · exact absurd a u54
      · exact absurd a u53
    have u58 : ¬v347 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u44 a
      · exact absurd u45 a
      · exact absurd a u35
      · exact absurd a u49
    have u59 : v348 := by
      rcases c54 with a|a|a|a|a|a
      · exact absurd a u57
      · exact a
      · exact absurd a u38
      · exact absurd a u37
      · exact absurd u44 a
      · exact absurd a u50
    have u60 : v354 := by
      rcases c56 with a|a|a|a|a|a
      · exact absurd a u57
      · exact a
      · exact absurd u47 a
      · exact absurd a n1
      · exact absurd a u50
      · exact absurd u55 a
    have u61 : ¬v360 := by
      rcases c217 with a|a|a|a|a|a
      · exact absurd u59 a
      · exact absurd u21 a
      · exact a
      · exact absurd u60 a
      · exact absurd a u50
      · exact absurd a n1
    rcases c402 with a|a|a|a
    · exact absurd u60 a
    · exact absurd u59 a
    · exact absurd a u61
    · exact absurd a u58
  have c783 : v244 := by
    by_contra hc
    have u1 : v364 := c769
    have u2 : ¬v208 := c779
    have u3 : v265 := by
      rcases c743 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v202 := by
      rcases c691 with a|a
      · exact a
      · exact absurd a u2
    have u5 : v252 := by
      rcases c765 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : ¬v251 := by
      rcases c739 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v246 := by
      rcases c715 with a|a
      · exact a
      · exact absurd u5 a
    have u8 : v280 := by
      rcases c604 with a|a
      · exact a
      · exact absurd a u6
    have u9 : v306 := by
      rcases c737 with a|a
      · exact a
      · exact absurd a u6
    have u10 : v250 := by
      rcases c741 with a|a
      · exact absurd a u6
      · exact a
    have u11 : ¬v288 := by
      rcases c694 with a|a
      · exact a
      · exact absurd a u7
    have u12 : ¬v308 := by
      rcases c525 with a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd a u6
      · exact absurd u5 a
    have u13 : ¬v285 := by
      rcases c699 with a|a
      · exact a
      · exact absurd u9 a
    have u14 : ¬v327 := by
      rcases c716 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u9 a
    have u15 : v275 := by
      rcases c763 with a|a
      · exact a
      · exact absurd u10 a
    have u16 : ¬v303 := by
      rcases c684 with a|a
      · exact a
      · exact absurd u10 a
    have u17 : ¬v282 := by
      rcases c713 with a|a
      · exact a
      · exact absurd a u11
    have u18 : v247 := by
      rcases c696 with a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd a u11
    have u19 : v286 := by
      rcases c580 with a|a|a|a
      · exact absurd a u13
      · exact absurd u9 a
      · exact absurd a u14
      · exact a
    have u20 : v205 := by
      rcases c729 with a|a
      · exact a
      · exact absurd u15 a
    have u21 : ¬v249 := by
      rcases c506 with a|a|a|a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd u10 a
      · exact a
    have u22 : v283 := by
      rcases c703 with a|a
      · exact a
      · exact absurd a u17
    have u23 : v260 := by
      rcases c488 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u18 a
      · exact absurd a u11
    have u24 : v329 := by
      rcases c316 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact absurd a u12
      · exact a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd u19 a
    have u25 : ¬v204 := by
      rcases c724 with a|a
      · exact a
      · exact absurd u20 a
    have u26 : ¬v206 := by
      rcases c685 with a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u15 a
    have u27 : ¬v271 := by
      rcases c725 with a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u20 a
    have u28 : ¬v284 := by
      rcases c706 with a|a
      · exact absurd u22 a
      · exact a
    have u29 : v294 := by
      rcases c708 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u22 a
    have u30 : v235 := by
      rcases c444 with a|a|a|a
      · exact absurd a u27
      · exact absurd u20 a
      · exact absurd a u25
      · exact a
    have u31 : ¬v239 := by
      rcases c459 with a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u20 a
      · exact absurd u15 a
    have u32 : ¬v245 := by
      rcases c237 with a|a|a|a|a|a
      · exact absurd a u28
      · exact absurd a u21
      · exact absurd u10 a
      · exact absurd a u16
      · exact absurd a u13
      · exact a
    have u33 : ¬v315 := by
      rcases c560 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u17
      · exact absurd u29 a
    have u34 : ¬v248 := by
      rcases c228 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd u18 a
      · exact absurd u29 a
      · exact absurd a u32
      · exact absurd a u17
    have u35 : ¬v299 := by
      rcases c232 with a|a|a|a|a|a
      · exact absurd a u34
      · exact absurd a u32
      · exact a
      · exact absurd u22 a
      · exact absurd a u21
      · exact absurd a u28
    have u36 : ¬v287 := by
      rcases c249 with a|a|a|a|a|a
      · exact absurd a u32
      · exact a
      · exact absurd u19 a
      · exact absurd u5 a
      · exact absurd a u6
      · exact absurd a u12
    have u37 : ¬v200 := by
      rcases c726 with a|a|a|a|a
      · exact absurd a u25
      · exact a
      · exact absurd u20 a
      · exact absurd a u34
      · exact absurd a u21
    have u38 : ¬v355 := by
      rcases c255 with a|a|a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u21
      · exact absurd u15 a
      · exact absurd a u35
      · exact absurd a u16
    have u39 : v320 := by
      rcases c573 with a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u28
      · exact absurd a u35
    have u40 : v213 := by
      rcases c203 with a|a|a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd a u31
      · exact absurd a u35
      · exact absurd a u16
      · exact absurd u30 a
    have u41 : ¬v305 := by
      rcases c245 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a u21
      · exact absurd a u28
      · exact absurd u5 a
      · exact absurd a u32
    have u42 : ¬v203 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u18 a
      · exact absurd u23 a
      · exact absurd a u37
      · exact absurd a u7
    have u43 : v255 := by
      rcases c233 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u27
      · exact absurd u22 a
      · exact absurd u39 a
      · exact absurd a u35
    have u44 : ¬v266 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u42
      · exact absurd a u25
      · exact absurd a u34
      · exact absurd u18 a
    have u45 : ¬v345 := by
      rcases c284 with a|a|a|a|a|a
      · exact absurd u43 a
      · exact absurd u39 a
      · exact a
      · exact absurd a u44
      · exact absurd a u27
      · exact absurd a u33
    have u46 : ¬v230 := by
      rcases c757 with a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u45
    have u47 : ¬v149 := by
      rcases c632 with a|a
      · exact a
      · exact absurd a u46
    have u48 : v150 := by
      rcases c639 with a|a
      · exact a
      · exact absurd a u47
    have u49 : ¬v145 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd a u42
      · exact absurd a u47
      · exact absurd u48 a
      · exact absurd a u25
      · exact absurd a u46
    have u50 : v363 := c781
    have u51 : v207 := by
      rcases c465 with a|a|a|a
      · exact a
      · exact absurd a hc
      · exact absurd u8 a
      · exact absurd a u2
    have u52 : v154 := by
      rcases c754 with a|a
      · exact a
      · exact absurd a hc
    have u53 : ¬v146 := by
      rcases c782 with a|a
      · exact a
      · exact absurd a hc
    have u54 : ¬v216 := by
      rcases c18 with a|a|a|a|a|a
      · exact a
      · exact absurd u52 a
      · exact absurd a u49
      · exact absurd a u53
      · exact absurd a u37
      · exact absurd a u2
    have u55 : ¬v212 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd a u49
      · exact absurd u48 a
      · exact absurd a u37
      · exact absurd a u25
    have u56 : ¬v241 := by
      rcases c363 with a|a|a|a
      · exact absurd u40 a
      · exact absurd a u41
      · exact absurd a u54
      · exact a
    have u57 : v209 := by
      rcases c191 with a|a|a|a|a|a
      · exact absurd u40 a
      · exact absurd a u28
      · exact absurd a u54
      · exact a
      · exact absurd a u36
      · exact absurd a u41
    have u58 : v302 := by
      rcases c205 with a|a|a|a|a|a
      · exact absurd u40 a
      · exact absurd a u55
      · exact absurd a u54
      · exact absurd a u35
      · exact a
      · exact absurd a u41
    have u59 : ¬v357 := by
      rcases c207 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd a u35
      · exact absurd u30 a
      · exact absurd u40 a
      · exact absurd a u41
    have u60 : ¬v223 := by
      rcases c362 with a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd u57 a
      · exact absurd a u54
    have u61 : ¬v201 := by
      rcases c397 with a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u57 a
      · exact absurd a u32
    have u62 : ¬v360 := by
      rcases c325 with a|a|a|a|a|a
      · exact absurd u58 a
      · exact absurd u50 a
      · exact a
      · exact absurd a u41
      · exact absurd a u12
      · exact absurd a u59
    have u63 : v323 := by
      rcases c385 with a|a|a|a
      · exact absurd u58 a
      · exact a
      · exact absurd u22 a
      · exact absurd a u36
    have u64 : ¬v356 := by
      rcases c406 with a|a|a|a
      · exact absurd u50 a
      · exact a
      · exact absurd a u62
      · exact absurd a u59
    have u65 : v259 := by
      rcases c104 with a|a|a|a|a|a
      · exact a
      · exact absurd a u60
      · exact absurd a u61
      · exact absurd a u32
      · exact absurd u57 a
      · exact absurd a u36
    have u66 : ¬v258 := by
      rcases c99 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u61
      · exact absurd u51 a
      · exact absurd a u32
      · exact absurd a u6
    have u67 : ¬v322 := by
      rcases c287 with a|a|a|a|a|a
      · exact absurd u24 a
      · exact absurd u63 a
      · exact a
      · exact absurd u65 a
      · exact absurd u43 a
      · exact absurd a u66
    rcases c338 with a|a|a|a|a|a
    · exact absurd a u67
    · exact absurd u39 a
    · exact absurd a u64
    · exact absurd u63 a
    · exact absurd a u59
    · exact absurd a u62
  have u1 : ¬v208 := c779
  have u2 : v265 := by
    rcases c743 with a|a
    · exact absurd a u1
    · exact a
  have u3 : v252 := by
    rcases c765 with a|a
    · exact a
    · exact absurd u2 a
  have u4 : ¬v251 := by
    rcases c739 with a|a
    · exact a
    · exact absurd u3 a
  have u5 : v280 := by
    rcases c604 with a|a
    · exact a
    · exact absurd a u4
  have u6 : v244 := c783
  have u7 : v207 := by
    rcases c466 with a|a|a|a
    · exact absurd a u1
    · exact a
    · exact absurd u5 a
    · exact absurd u6 a
  rcases c470 with a|a|a|a
  · exact absurd a u1
  · exact absurd u6 a
  · exact absurd u5 a
  · exact absurd u7 a
