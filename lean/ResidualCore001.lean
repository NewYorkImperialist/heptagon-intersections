import Mathlib.Tactic

-- The tail of a long propagation chain elaborates against a context holding
-- every core clause and every clause derived so far, which outruns the default
-- elaboration budget.  Kernel checking is unaffected by this option.
set_option maxHeartbeats 2000000

/-- The 371-clause unsatisfiable core of orbit_001, contradictory.
164 steps, transcribed from the LRAT proof: each is unit propagation
in the order the hints give, so no tactic searches. -/
theorem core001_false
    (v145 v146 v147 v148 v149 v150 v151 v152 v153 v154 v155 v159 v160 v161 v163 v164 v165 v168 v169 v170 v171 v178 v179 v185 v190 v194 v195 v196 v197 v198 v199 v200 v201 v202 v203 v204 v205 v206 v207 v208 v209 v210 v212 v213 v214 v216 v219 v220 v221 v223 v224 v229 v230 v231 v234 v235 v236 v237 v238 v239 v240 v241 v242 v243 v244 v245 v246 v247 v248 v249 v250 v251 v252 v255 v256 v257 v260 v262 v265 v266 v271 v272 v273 v274 v275 v276 v277 v278 v279 v280 v282 v283 v284 v285 v286 v287 v288 v290 v293 v294 v299 v302 v303 v304 v305 v306 v307 v308 v315 v324 v326 v327 v328 v329 v345 v348 v355 v356 v357 v358 v360 v361 v362 v363 v364 : Prop)
    (c1 : v200 ∨ ¬v216 ∨ ¬v145 ∨ ¬v208 ∨ v154 ∨ v146)
    (c2 : ¬v148 ∨ v224 ∨ ¬v203 ∨ ¬v145 ∨ ¬v149 ∨ v202)
    (c3 : v229 ∨ ¬v148 ∨ ¬v154 ∨ v145 ∨ v208 ∨ ¬v202)
    (c4 : v149 ∨ v150 ∨ ¬v145 ∨ ¬v203 ∨ v204 ∨ v230)
    (c5 : v185 ∨ ¬v159 ∨ ¬v266 ∨ ¬v150 ∨ v204 ∨ v230)
    (c6 : v231 ∨ ¬v149 ∨ v203 ∨ v151 ∨ v205 ∨ v145)
    (c7 : ¬v234 ∨ v149 ∨ v145 ∨ ¬v154 ∨ v203 ∨ v208)
    (c8 : ¬v150 ∨ ¬v145 ∨ ¬v205 ∨ v235 ∨ v204 ∨ ¬v151)
    (c9 : ¬v150 ∨ v145 ∨ v204 ∨ v151 ∨ v205 ∨ v235)
    (c10 : v190 ∨ v160 ∨ ¬v151 ∨ ¬v205 ∨ v235 ∨ v271)
    (c11 : ¬v272 ∨ ¬v145 ∨ v161 ∨ ¬v206 ∨ v159 ∨ v204)
    (c12 : ¬v145 ∨ v205 ∨ v151 ∨ ¬v152 ∨ v206 ∨ v239)
    (c13 : v145 ∨ ¬v151 ∨ ¬v205 ∨ ¬v206 ∨ ¬v239 ∨ v152)
    (c14 : ¬v160 ∨ ¬v205 ∨ v194 ∨ v275 ∨ ¬v239 ∨ ¬v151)
    (c15 : ¬v145 ∨ ¬v240 ∨ ¬v205 ∨ ¬v151 ∨ ¬v153 ∨ v207)
    (c16 : v145 ∨ v153 ∨ v240 ∨ v151 ∨ v205 ∨ ¬v207)
    (c17 : v241 ∨ ¬v145 ∨ ¬v151 ∨ v154 ∨ ¬v208 ∨ ¬v205)
    (c18 : v145 ∨ v151 ∨ ¬v241 ∨ ¬v154 ∨ v205 ∨ v208)
    (c19 : v163 ∨ ¬v196 ∨ v277 ∨ v208 ∨ v241 ∨ ¬v154)
    (c20 : v145 ∨ ¬v152 ∨ ¬v153 ∨ ¬v207 ∨ ¬v242 ∨ v206)
    (c21 : v220 ∨ ¬v147 ∨ ¬v213 ∨ ¬v146 ∨ v151 ∨ ¬v209)
    (c22 : ¬v164 ∨ v171 ∨ ¬v216 ∨ ¬v146 ∨ ¬v209 ∨ v287)
    (c23 : ¬v210 ∨ v148 ∨ v146 ∨ ¬v229 ∨ v154 ∨ v216)
    (c24 : ¬v214 ∨ v146 ∨ ¬v152 ∨ ¬v213 ∨ v151 ∨ v239)
    (c25 : ¬v171 ∨ ¬v146 ∨ ¬v151 ∨ ¬v168 ∨ v154 ∨ v196)
    (c26 : ¬v146 ∨ v216 ∨ ¬v151 ∨ v154 ∨ ¬v241 ∨ v213)
    (c27 : v150 ∨ ¬v235 ∨ ¬v240 ∨ v151 ∨ v153 ∨ v237)
    (c28 : ¬v150 ∨ v238 ∨ v154 ∨ ¬v151 ∨ ¬v241 ∨ v235)
    (c29 : v196 ∨ ¬v357 ∨ v151 ∨ ¬v235 ∨ v190 ∨ v241)
    (c30 : v151 ∨ ¬v152 ∨ ¬v242 ∨ ¬v239 ∨ ¬v240 ∨ v153)
    (c31 : v195 ∨ v361 ∨ v240 ∨ ¬v239 ∨ v194 ∨ ¬v151)
    (c32 : ¬v194 ∨ v242 ∨ ¬v239 ∨ v361 ∨ v152 ∨ ¬v197)
    (c33 : ¬v194 ∨ ¬v152 ∨ ¬v242 ∨ ¬v239 ∨ v197 ∨ v361)
    (c34 : ¬v154 ∨ ¬v241 ∨ ¬v239 ∨ ¬v151 ∨ ¬v243 ∨ v152)
    (c35 : ¬v241 ∨ ¬v154 ∨ ¬v152 ∨ ¬v243 ∨ v151 ∨ v239)
    (c36 : ¬v196 ∨ ¬v195 ∨ ¬v153 ∨ ¬v151 ∨ v154 ∨ v199)
    (c37 : v241 ∨ v240 ∨ ¬v244 ∨ ¬v153 ∨ ¬v151 ∨ v154)
    (c38 : v198 ∨ v199 ∨ ¬v152 ∨ v197 ∨ v153 ∨ ¬v154)
    (c39 : ¬v154 ∨ ¬v243 ∨ ¬v244 ∨ ¬v153 ∨ v152 ∨ v242)
    (c40 : ¬v199 ∨ ¬v244 ∨ v364 ∨ ¬v153 ∨ v242 ∨ ¬v197)
    (c41 : ¬v155 ∨ v159 ∨ v160 ∨ ¬v248 ∨ v249 ∨ v271)
    (c42 : ¬v155 ∨ v159 ∨ v250 ∨ ¬v248 ∨ v161 ∨ v272)
    (c43 : v155 ∨ ¬v272 ∨ ¬v250 ∨ ¬v159 ∨ ¬v161 ∨ v248)
    (c44 : ¬v161 ∨ v275 ∨ ¬v250 ∨ ¬v303 ∨ ¬v194 ∨ ¬v169)
    (c45 : ¬v171 ∨ ¬v305 ∨ ¬v252 ∨ ¬v196 ∨ ¬v163 ∨ v277)
    (c46 : v170 ∨ v155 ∨ ¬v250 ∨ ¬v306 ∨ v169 ∨ v251)
    (c47 : v161 ∨ v361 ∨ v275 ∨ v197 ∨ v278 ∨ ¬v194)
    (c48 : ¬v161 ∨ ¬v275 ∨ v194 ∨ ¬v361 ∨ ¬v278 ∨ ¬v197)
    (c49 : v196 ∨ ¬v363 ∨ ¬v277 ∨ ¬v195 ∨ v160 ∨ ¬v276)
    (c50 : ¬v178 ∨ ¬v171 ∨ ¬v328 ∨ v198 ∨ v287 ∨ v307)
    (c51 : v165 ∨ v171 ∨ ¬v293 ∨ ¬v168 ∨ ¬v305 ∨ ¬v290)
    (c52 : v168 ∨ ¬v195 ∨ ¬v190 ∨ ¬v299 ∨ v304 ∨ v356)
    (c53 : ¬v169 ∨ v198 ∨ v197 ∨ ¬v306 ∨ v307 ∨ v364)
    (c54 : v178 ∨ v198 ∨ ¬v329 ∨ ¬v328 ∨ ¬v199 ∨ v364)
    (c55 : ¬v198 ∨ ¬v194 ∨ v362 ∨ v361 ∨ v197 ∨ v364)
    (c56 : ¬v212 ∨ ¬v283 ∨ ¬v204 ∨ v219 ∨ v248 ∨ v255)
    (c57 : v202 ∨ ¬v200 ∨ v203 ∨ ¬v247 ∨ ¬v260 ∨ v246)
    (c58 : ¬v202 ∨ v200 ∨ ¬v205 ∨ ¬v246 ∨ v249 ∨ v262)
    (c59 : v210 ∨ v200 ∨ ¬v246 ∨ ¬v290 ∨ v213 ∨ v249)
    (c60 : ¬v202 ∨ v200 ∨ ¬v208 ∨ ¬v246 ∨ v252 ∨ v265)
    (c61 : ¬v235 ∨ v213 ∨ v205 ∨ ¬v271 ∨ ¬v249 ∨ v299)
    (c62 : ¬v213 ∨ v235 ∨ ¬v299 ∨ ¬v205 ∨ v249 ∨ v271)
    (c63 : ¬v200 ∨ ¬v272 ∨ ¬v250 ∨ v248 ∨ v206 ∨ v204)
    (c64 : v302 ∨ v216 ∨ ¬v252 ∨ v208 ∨ ¬v238 ∨ ¬v274)
    (c65 : ¬v213 ∨ ¬v275 ∨ ¬v303 ∨ ¬v249 ∨ v205 ∨ v239)
    (c66 : v214 ∨ v275 ∨ v206 ∨ ¬v303 ∨ v239 ∨ ¬v250)
    (c67 : ¬v216 ∨ ¬v305 ∨ ¬v252 ∨ ¬v277 ∨ v208 ∨ v241)
    (c68 : ¬v216 ∨ v305 ∨ ¬v277 ∨ ¬v208 ∨ v252 ∨ ¬v241)
    (c69 : ¬v219 ∨ ¬v220 ∨ ¬v235 ∨ ¬v204 ∨ v201 ∨ v205)
    (c70 : ¬v201 ∨ ¬v256 ∨ v205 ∨ v206 ∨ v257 ∨ v275)
    (c71 : ¬v201 ∨ ¬v220 ∨ v205 ∨ v208 ∨ v223 ∨ v241)
    (c72 : ¬v220 ∨ v205 ∨ v277 ∨ v241 ∨ v256 ∨ v326)
    (c73 : ¬v231 ∨ ¬v230 ∨ v203 ∨ ¬v204 ∨ ¬v235 ∨ v205)
    (c74 : v345 ∨ ¬v235 ∨ ¬v230 ∨ ¬v204 ∨ v266 ∨ ¬v271)
    (c75 : ¬v236 ∨ v235 ∨ ¬v206 ∨ ¬v239 ∨ v204 ∨ ¬v205)
    (c76 : ¬v271 ∨ ¬v205 ∨ ¬v204 ∨ ¬v272 ∨ v206 ∨ v275)
    (c77 : v205 ∨ v272 ∨ ¬v275 ∨ v271 ∨ v204 ∨ ¬v206)
    (c78 : v355 ∨ v235 ∨ v275 ∨ ¬v239 ∨ ¬v205 ∨ v271)
    (c79 : v237 ∨ v235 ∨ v207 ∨ v204 ∨ ¬v205 ∨ v240)
    (c80 : ¬v237 ∨ ¬v235 ∨ ¬v240 ∨ ¬v207 ∨ ¬v204 ∨ v205)
    (c81 : ¬v356 ∨ v235 ∨ ¬v276 ∨ ¬v205 ∨ v240 ∨ v271)
    (c82 : ¬v238 ∨ v235 ∨ ¬v208 ∨ ¬v241 ∨ ¬v205 ∨ v204)
    (c83 : v238 ∨ ¬v235 ∨ v205 ∨ v208 ∨ ¬v204 ∨ v241)
    (c84 : v357 ∨ v235 ∨ v277 ∨ v271 ∨ ¬v205 ∨ ¬v241)
    (c85 : ¬v273 ∨ ¬v272 ∨ ¬v278 ∨ ¬v206 ∨ v204 ∨ v207)
    (c86 : ¬v240 ∨ ¬v206 ∨ ¬v205 ∨ v207 ∨ ¬v239 ∨ v242)
    (c87 : v275 ∨ ¬v205 ∨ v206 ∨ v276 ∨ ¬v207 ∨ v278)
    (c88 : v275 ∨ ¬v205 ∨ v276 ∨ v207 ∨ ¬v206 ∨ ¬v278)
    (c89 : ¬v361 ∨ v206 ∨ v278 ∨ v275 ∨ ¬v242 ∨ v239)
    (c90 : v242 ∨ v239 ∨ ¬v278 ∨ ¬v361 ∨ v275 ∨ ¬v206)
    (c91 : ¬v361 ∨ ¬v239 ∨ v275 ∨ v278 ∨ ¬v206 ∨ v242)
    (c92 : ¬v275 ∨ v361 ∨ ¬v206 ∨ ¬v239 ∨ v242 ∨ ¬v278)
    (c93 : ¬v240 ∨ ¬v361 ∨ v207 ∨ ¬v278 ∨ ¬v276 ∨ v242)
    (c94 : v240 ∨ v276 ∨ ¬v207 ∨ ¬v242 ∨ v278 ∨ v361)
    (c95 : ¬v279 ∨ ¬v275 ∨ v277 ∨ ¬v206 ∨ ¬v208 ∨ ¬v205)
    (c96 : ¬v241 ∨ v362 ∨ ¬v205 ∨ ¬v239 ∨ v275 ∨ ¬v277)
    (c97 : v244 ∨ v207 ∨ ¬v280 ∨ v240 ∨ v276 ∨ v363)
    (c98 : ¬v276 ∨ ¬v240 ∨ ¬v244 ∨ v207 ∨ v280 ∨ v363)
    (c99 : ¬v244 ∨ ¬v207 ∨ v278 ∨ ¬v242 ∨ ¬v280 ∨ v364)
    (c100 : v219 ∨ ¬v230 ∨ ¬v294 ∨ ¬v283 ∨ v212 ∨ v315)
    (c101 : v209 ∨ v221 ∨ ¬v285 ∨ ¬v328 ∨ v223 ∨ v287)
    (c102 : v216 ∨ ¬v243 ∨ ¬v328 ∨ v223 ∨ v287 ∨ v307)
    (c103 : ¬v210 ∨ ¬v216 ∨ ¬v293 ∨ ¬v305 ∨ ¬v290 ∨ v213)
    (c104 : ¬v357 ∨ ¬v235 ∨ v305 ∨ v241 ∨ v299 ∨ ¬v213)
    (c105 : v213 ∨ ¬v239 ∨ v303 ∨ v304 ∨ v240 ∨ v361)
    (c106 : v213 ∨ v361 ∨ ¬v303 ∨ ¬v304 ∨ ¬v240 ∨ v239)
    (c107 : ¬v221 ∨ ¬v243 ∨ ¬v242 ∨ ¬v328 ∨ v327 ∨ v364)
    (c108 : ¬v223 ∨ ¬v243 ∨ ¬v329 ∨ ¬v328 ∨ v244 ∨ v364)
    (c109 : ¬v358 ∨ ¬v355 ∨ ¬v361 ∨ ¬v239 ∨ v236 ∨ v242)
    (c110 : ¬v357 ∨ v360 ∨ v363 ∨ ¬v241 ∨ v238 ∨ ¬v244)
    (c111 : v241 ∨ v362 ∨ v240 ∨ ¬v361 ∨ ¬v239 ∨ v363)
    (c112 : v241 ∨ v363 ∨ v239 ∨ v362 ∨ v361 ∨ ¬v240)
    (c113 : v243 ∨ v362 ∨ v239 ∨ v361 ∨ ¬v242 ∨ v364)
    (c114 : ¬v243 ∨ v362 ∨ ¬v239 ∨ v361 ∨ v242 ∨ v364)
    (c115 : v243 ∨ ¬v361 ∨ v242 ∨ v364 ∨ v362 ∨ ¬v239)
    (c116 : ¬v363 ∨ v240 ∨ v364 ∨ ¬v361 ∨ v242 ∨ ¬v244)
    (c117 : v363 ∨ v240 ∨ ¬v242 ∨ v361 ∨ v244 ∨ v364)
    (c118 : ¬v364 ∨ v363 ∨ ¬v240 ∨ v244 ∨ ¬v242 ∨ v361)
    (c119 : ¬v240 ∨ ¬v361 ∨ v244 ∨ v242 ∨ v363 ∨ v364)
    (c120 : ¬v241 ∨ v362 ∨ ¬v244 ∨ v243 ∨ v363 ∨ v364)
    (c121 : v283 ∨ v248 ∨ v284 ∨ ¬v249 ∨ v299 ∨ ¬v245)
    (c122 : v245 ∨ ¬v285 ∨ ¬v286 ∨ ¬v250 ∨ ¬v306 ∨ v251)
    (c123 : ¬v257 ∨ ¬v285 ∨ ¬v306 ∨ ¬v250 ∨ v278 ∨ v327)
    (c124 : ¬v262 ∨ v277 ∨ v249 ∨ v252 ∨ v265 ∨ ¬v246)
    (c125 : v290 ∨ ¬v305 ∨ v249 ∨ ¬v246 ∨ v252 ∨ ¬v293)
    (c126 : v272 ∨ ¬v271 ∨ v275 ∨ ¬v250 ∨ v248 ∨ ¬v249)
    (c127 : ¬v272 ∨ ¬v275 ∨ ¬v248 ∨ v250 ∨ v249 ∨ v271)
    (c128 : v356 ∨ ¬v276 ∨ ¬v304 ∨ v249 ∨ v271 ∨ ¬v299)
    (c129 : ¬v357 ∨ v305 ∨ v277 ∨ v271 ∨ ¬v299 ∨ v249)
    (c130 : ¬v305 ∨ ¬v299 ∨ ¬v277 ∨ v249 ∨ v271 ∨ v357)
    (c131 : ¬v272 ∨ ¬v251 ∨ ¬v250 ∨ ¬v278 ∨ ¬v248 ∨ v273)
    (c132 : ¬v304 ∨ ¬v251 ∨ ¬v303 ∨ v249 ∨ v250 ∨ v306)
    (c133 : ¬v361 ∨ v276 ∨ ¬v303 ∨ v275 ∨ v249 ∨ v304)
    (c134 : ¬v361 ∨ v250 ∨ v303 ∨ v275 ∨ ¬v278 ∨ v306)
    (c135 : ¬v275 ∨ v361 ∨ ¬v303 ∨ ¬v250 ∨ v278 ∨ ¬v306)
    (c136 : v304 ∨ ¬v306 ∨ ¬v278 ∨ ¬v251 ∨ ¬v276 ∨ v361)
    (c137 : ¬v279 ∨ ¬v251 ∨ ¬v250 ∨ ¬v278 ∨ v252 ∨ v280)
    (c138 : ¬v279 ∨ ¬v278 ∨ v251 ∨ ¬v252 ∨ ¬v250 ∨ ¬v280)
    (c139 : ¬v306 ∨ ¬v251 ∨ v364 ∨ ¬v278 ∨ v280 ∨ ¬v308)
    (c140 : ¬v357 ∨ ¬v363 ∨ ¬v280 ∨ ¬v277 ∨ ¬v274 ∨ v360)
    (c141 : ¬v277 ∨ ¬v361 ∨ v362 ∨ ¬v276 ∨ v275 ∨ v363)
    (c142 : v279 ∨ ¬v362 ∨ ¬v278 ∨ ¬v275 ∨ ¬v361 ∨ v364)
    (c143 : v361 ∨ v276 ∨ ¬v278 ∨ v280 ∨ v363 ∨ v364)
    (c144 : ¬v276 ∨ v363 ∨ v278 ∨ v361 ∨ ¬v280 ∨ v364)
    (c145 : ¬v327 ∨ ¬v324 ∨ ¬v306 ∨ v285 ∨ v303 ∨ v361)
    (c146 : v326 ∨ ¬v284 ∨ v287 ∨ ¬v285 ∨ ¬v328 ∨ v324)
    (c147 : v326 ∨ v305 ∨ v287 ∨ v307 ∨ ¬v328 ∨ v362)
    (c148 : ¬v307 ∨ ¬v285 ∨ ¬v286 ∨ ¬v306 ∨ v287 ∨ v308)
    (c149 : v328 ∨ v327 ∨ ¬v329 ∨ v287 ∨ ¬v286 ∨ ¬v285)
    (c150 : ¬v327 ∨ ¬v306 ∨ v364 ∨ ¬v286 ∨ v308 ∨ ¬v329)
    (c151 : ¬v302 ∨ ¬v357 ∨ ¬v345 ∨ ¬v348 ∨ ¬v294 ∨ v299)
    (c152 : ¬v305 ∨ ¬v362 ∨ ¬v355 ∨ ¬v299 ∨ ¬v303 ∨ v357)
    (c153 : ¬v362 ∨ ¬v361 ∨ ¬v303 ∨ ¬v306 ∨ v307 ∨ v364)
    (c154 : v304 ∨ v363 ∨ ¬v306 ∨ v361 ∨ v308 ∨ v364)
    (c155 : ¬v326 ∨ ¬v363 ∨ ¬v329 ∨ ¬v328 ∨ v362 ∨ v364)
    (c156 : ¬v159 ∨ v150 ∨ ¬v145 ∨ v204)
    (c157 : v159 ∨ ¬v150 ∨ v145 ∨ ¬v204)
    (c158 : ¬v165 ∨ ¬v146 ∨ v148 ∨ v210)
    (c159 : v146 ∨ ¬v216 ∨ ¬v154 ∨ v171)
    (c160 : v179 ∨ v148 ∨ ¬v149 ∨ ¬v224)
    (c161 : ¬v194 ∨ ¬v151 ∨ v152 ∨ v239)
    (c162 : v194 ∨ v151 ∨ ¬v152 ∨ ¬v239)
    (c163 : ¬v152 ∨ v242 ∨ ¬v197 ∨ v153)
    (c164 : v152 ∨ v197 ∨ ¬v242 ∨ ¬v153)
    (c165 : ¬v199 ∨ v244 ∨ ¬v153 ∨ v154)
    (c166 : v169 ∨ v155 ∨ ¬v250 ∨ ¬v161)
    (c167 : v171 ∨ ¬v170 ∨ ¬v199 ∨ v308)
    (c168 : ¬v255 ∨ v201 ∨ ¬v204 ∨ v219)
    (c169 : ¬v202 ∨ v203 ∨ v260 ∨ ¬v224)
    (c170 : ¬v229 ∨ ¬v202 ∨ v208 ∨ v265)
    (c171 : ¬v203 ∨ v204 ∨ v266 ∨ ¬v230)
    (c172 : ¬v204 ∨ v203 ∨ ¬v266 ∨ v230)
    (c173 : v274 ∨ ¬v238 ∨ ¬v204 ∨ v208)
    (c174 : ¬v205 ∨ ¬v240 ∨ v207 ∨ v276)
    (c175 : ¬v206 ∨ ¬v242 ∨ v278 ∨ v207)
    (c176 : v206 ∨ v242 ∨ ¬v278 ∨ ¬v207)
    (c177 : ¬v208 ∨ v207 ∨ ¬v280 ∨ v244)
    (c178 : ¬v216 ∨ v241 ∨ ¬v305 ∨ v213)
    (c179 : v348 ∨ v234 ∨ ¬v230 ∨ ¬v238)
    (c180 : v237 ∨ v356 ∨ ¬v240 ∨ ¬v235)
    (c181 : ¬v356 ∨ ¬v237 ∨ v235 ∨ v240)
    (c182 : v360 ∨ v238 ∨ ¬v244 ∨ ¬v237)
    (c183 : ¬v238 ∨ v237 ∨ ¬v360 ∨ v244)
    (c184 : v241 ∨ ¬v243 ∨ ¬v239 ∨ v362)
    (c185 : v288 ∨ v247 ∨ ¬v246 ∨ ¬v260)
    (c186 : ¬v288 ∨ v246 ∨ v260 ∨ ¬v247)
    (c187 : v293 ∨ ¬v265 ∨ v252 ∨ ¬v246)
    (c188 : v294 ∨ v248 ∨ ¬v247 ∨ ¬v266)
    (c189 : ¬v294 ∨ ¬v248 ∨ v247 ∨ v266)
    (c190 : v299 ∨ ¬v271 ∨ v249 ∨ ¬v248)
    (c191 : ¬v299 ∨ v271 ∨ v248 ∨ ¬v249)
    (c192 : ¬v306 ∨ ¬v251 ∨ v250 ∨ v278)
    (c193 : ¬v251 ∨ v308 ∨ v252 ∨ ¬v280)
    (c194 : v251 ∨ ¬v252 ∨ ¬v308 ∨ v280)
    (c195 : v277 ∨ ¬v276 ∨ ¬v280 ∨ v363)
    (c196 : v279 ∨ v364 ∨ ¬v280 ∨ ¬v278)
    (c197 : ¬v324 ∨ ¬v285 ∨ v284 ∨ v303)
    (c198 : v286 ∨ ¬v329 ∨ ¬v287 ∨ v308)
    (c199 : v326 ∨ ¬v324 ∨ ¬v328 ∨ v362)
    (c200 : v362 ∨ ¬v363 ∨ ¬v361 ∨ v364)
    (c201 : v179 ∨ v149 ∨ v148 ∨ v224)
    (c202 : ¬v179 ∨ v149 ∨ v148 ∨ v224)
    (c203 : ¬v179 ∨ v148 ∨ ¬v149 ∨ ¬v224)
    (c204 : v179 ∨ ¬v224 ∨ ¬v149 ∨ ¬v148)
    (c205 : ¬v179 ∨ ¬v224 ∨ ¬v149 ∨ ¬v148)
    (c206 : ¬v185 ∨ ¬v150 ∨ v230 ∨ v149)
    (c207 : v190 ∨ v150 ∨ v151 ∨ v235)
    (c208 : ¬v190 ∨ v150 ∨ v151 ∨ v235)
    (c209 : ¬v190 ∨ ¬v150 ∨ ¬v235 ∨ v151)
    (c210 : v194 ∨ v151 ∨ v152 ∨ v239)
    (c211 : v194 ∨ v151 ∨ ¬v239 ∨ v152)
    (c212 : ¬v194 ∨ v151 ∨ v152 ∨ v239)
    (c213 : ¬v194 ∨ v151 ∨ ¬v239 ∨ v152)
    (c214 : v151 ∨ v194 ∨ ¬v152 ∨ v239)
    (c215 : ¬v194 ∨ v151 ∨ ¬v152 ∨ ¬v239)
    (c216 : v194 ∨ ¬v151 ∨ v152 ∨ v239)
    (c217 : ¬v194 ∨ ¬v151 ∨ ¬v239 ∨ v152)
    (c218 : v194 ∨ v239 ∨ ¬v152 ∨ ¬v151)
    (c219 : ¬v151 ∨ ¬v152 ∨ ¬v239 ∨ v194)
    (c220 : ¬v194 ∨ ¬v151 ∨ ¬v152 ∨ v239)
    (c221 : ¬v151 ∨ ¬v194 ∨ ¬v239 ∨ ¬v152)
    (c222 : v152 ∨ v242 ∨ v153 ∨ v197)
    (c223 : v152 ∨ v197 ∨ v153 ∨ ¬v242)
    (c224 : v152 ∨ v242 ∨ ¬v197 ∨ v153)
    (c225 : v152 ∨ v153 ∨ ¬v242 ∨ ¬v197)
    (c226 : v152 ∨ v242 ∨ v197 ∨ ¬v153)
    (c227 : v152 ∨ ¬v197 ∨ ¬v242 ∨ ¬v153)
    (c228 : ¬v152 ∨ v242 ∨ v153 ∨ v197)
    (c229 : ¬v197 ∨ ¬v152 ∨ ¬v242 ∨ v153)
    (c230 : ¬v152 ∨ v242 ∨ ¬v153 ∨ v197)
    (c231 : ¬v152 ∨ v197 ∨ ¬v153 ∨ ¬v242)
    (c232 : ¬v152 ∨ v242 ∨ ¬v197 ∨ ¬v153)
    (c233 : ¬v152 ∨ ¬v197 ∨ ¬v153 ∨ ¬v242)
    (c234 : v199 ∨ v154 ∨ v153 ∨ v244)
    (c235 : ¬v199 ∨ v154 ∨ v153 ∨ v244)
    (c236 : v199 ∨ v244 ∨ ¬v153 ∨ v154)
    (c237 : ¬v154 ∨ v199 ∨ ¬v153 ∨ ¬v244)
    (c238 : v202 ∨ v224 ∨ ¬v260 ∨ v203)
    (c239 : v202 ∨ ¬v224 ∨ ¬v260 ∨ v203)
    (c240 : v224 ∨ v202 ∨ v260 ∨ ¬v203)
    (c241 : ¬v202 ∨ ¬v224 ∨ ¬v260 ∨ v203)
    (c242 : ¬v202 ∨ v224 ∨ ¬v203 ∨ v260)
    (c243 : ¬v202 ∨ ¬v224 ∨ ¬v203 ∨ v260)
    (c244 : v230 ∨ v204 ∨ v203 ∨ v266)
    (c245 : v230 ∨ v204 ∨ v203 ∨ ¬v266)
    (c246 : v203 ∨ v204 ∨ v266 ∨ ¬v230)
    (c247 : v203 ∨ ¬v230 ∨ ¬v266 ∨ v204)
    (c248 : v230 ∨ ¬v204 ∨ v266 ∨ v203)
    (c249 : ¬v230 ∨ v203 ∨ ¬v204 ∨ ¬v266)
    (c250 : ¬v203 ∨ v204 ∨ v266 ∨ v230)
    (c251 : ¬v230 ∨ v204 ∨ ¬v266 ∨ ¬v203)
    (c252 : v230 ∨ ¬v204 ∨ v266 ∨ ¬v203)
    (c253 : v230 ∨ ¬v203 ∨ ¬v266 ∨ ¬v204)
    (c254 : ¬v230 ∨ ¬v204 ∨ v266 ∨ ¬v203)
    (c255 : ¬v230 ∨ ¬v204 ∨ ¬v266 ∨ ¬v203)
    (c256 : ¬v235 ∨ v204 ∨ ¬v205 ∨ v271)
    (c257 : v235 ∨ v205 ∨ ¬v204 ∨ ¬v271)
    (c258 : v205 ∨ v275 ∨ ¬v239 ∨ ¬v206)
    (c259 : ¬v275 ∨ v239 ∨ ¬v205 ∨ v206)
    (c260 : v242 ∨ v207 ∨ v206 ∨ v278)
    (c261 : v206 ∨ v242 ∨ ¬v278 ∨ v207)
    (c262 : v206 ∨ v207 ∨ v278 ∨ ¬v242)
    (c263 : v206 ∨ ¬v242 ∨ ¬v278 ∨ v207)
    (c264 : v242 ∨ ¬v207 ∨ v206 ∨ v278)
    (c265 : v206 ∨ ¬v242 ∨ ¬v278 ∨ ¬v207)
    (c266 : ¬v242 ∨ ¬v206 ∨ ¬v278 ∨ v207)
    (c267 : v242 ∨ ¬v207 ∨ ¬v206 ∨ v278)
    (c268 : v242 ∨ ¬v207 ∨ ¬v278 ∨ ¬v206)
    (c269 : ¬v206 ∨ ¬v207 ∨ v278 ∨ ¬v242)
    (c270 : ¬v206 ∨ ¬v207 ∨ ¬v278 ∨ ¬v242)
    (c271 : v208 ∨ v244 ∨ v207 ∨ v280)
    (c272 : v208 ∨ v244 ∨ ¬v280 ∨ v207)
    (c273 : v208 ∨ v207 ∨ v280 ∨ ¬v244)
    (c274 : ¬v244 ∨ v207 ∨ ¬v280 ∨ v208)
    (c275 : ¬v208 ∨ v207 ∨ v280 ∨ v244)
    (c276 : ¬v208 ∨ ¬v244 ∨ ¬v280 ∨ v207)
    (c277 : v208 ∨ ¬v244 ∨ ¬v207 ∨ ¬v280)
    (c278 : ¬v208 ∨ v244 ∨ ¬v207 ∨ ¬v280)
    (c279 : ¬v208 ∨ ¬v207 ∨ ¬v280 ∨ ¬v244)
    (c280 : ¬v229 ∨ ¬v202 ∨ ¬v265 ∨ v208)
    (c281 : v229 ∨ v202 ∨ ¬v208 ∨ v265)
    (c282 : v260 ∨ v247 ∨ v246 ∨ v288)
    (c283 : ¬v288 ∨ v246 ∨ v260 ∨ v247)
    (c284 : ¬v260 ∨ v247 ∨ v246 ∨ v288)
    (c285 : ¬v260 ∨ ¬v288 ∨ v246 ∨ v247)
    (c286 : v260 ∨ v246 ∨ ¬v247 ∨ v288)
    (c287 : ¬v288 ∨ v247 ∨ ¬v246 ∨ ¬v260)
    (c288 : v288 ∨ v260 ∨ ¬v247 ∨ ¬v246)
    (c289 : ¬v288 ∨ ¬v247 ∨ ¬v246 ∨ v260)
    (c290 : v288 ∨ ¬v260 ∨ ¬v247 ∨ ¬v246)
    (c291 : ¬v288 ∨ ¬v260 ∨ ¬v247 ∨ ¬v246)
    (c292 : v294 ∨ v266 ∨ v247 ∨ v248)
    (c293 : ¬v294 ∨ v247 ∨ v248 ∨ v266)
    (c294 : v294 ∨ v247 ∨ ¬v266 ∨ v248)
    (c295 : ¬v294 ∨ v247 ∨ ¬v266 ∨ v248)
    (c296 : ¬v248 ∨ v247 ∨ v266 ∨ v294)
    (c297 : v294 ∨ v248 ∨ v266 ∨ ¬v247)
    (c298 : ¬v294 ∨ ¬v266 ∨ ¬v247 ∨ v248)
    (c299 : v294 ∨ v266 ∨ ¬v248 ∨ ¬v247)
    (c300 : ¬v294 ∨ ¬v248 ∨ ¬v247 ∨ v266)
    (c301 : ¬v248 ∨ ¬v266 ∨ ¬v247 ∨ v294)
    (c302 : ¬v294 ∨ ¬v266 ∨ ¬v248 ∨ ¬v247)
    (c303 : v271 ∨ v249 ∨ v248 ∨ v299)
    (c304 : ¬v299 ∨ v249 ∨ v248 ∨ v271)
    (c305 : v299 ∨ ¬v271 ∨ v248 ∨ v249)
    (c306 : ¬v299 ∨ ¬v271 ∨ v248 ∨ v249)
    (c307 : v271 ∨ ¬v249 ∨ v248 ∨ v299)
    (c308 : ¬v299 ∨ ¬v249 ∨ ¬v271 ∨ v248)
    (c309 : v299 ∨ v271 ∨ ¬v248 ∨ v249)
    (c310 : ¬v299 ∨ ¬v271 ∨ ¬v248 ∨ v249)
    (c311 : v299 ∨ ¬v249 ∨ v271 ∨ ¬v248)
    (c312 : ¬v299 ∨ ¬v249 ∨ ¬v248 ∨ v271)
    (c313 : ¬v271 ∨ ¬v249 ∨ ¬v248 ∨ v299)
    (c314 : ¬v299 ∨ ¬v249 ∨ ¬v271 ∨ ¬v248)
    (c315 : ¬v249 ∨ v250 ∨ ¬v303 ∨ v275)
    (c316 : v250 ∨ v278 ∨ v251 ∨ v306)
    (c317 : ¬v306 ∨ v250 ∨ v278 ∨ v251)
    (c318 : v306 ∨ v250 ∨ ¬v278 ∨ v251)
    (c319 : ¬v306 ∨ v250 ∨ ¬v278 ∨ v251)
    (c320 : v306 ∨ ¬v251 ∨ v278 ∨ v250)
    (c321 : v306 ∨ v278 ∨ ¬v250 ∨ v251)
    (c322 : v306 ∨ v278 ∨ ¬v250 ∨ ¬v251)
    (c323 : ¬v306 ∨ ¬v251 ∨ ¬v250 ∨ v278)
    (c324 : v306 ∨ ¬v251 ∨ ¬v250 ∨ ¬v278)
    (c325 : v251 ∨ v308 ∨ v280 ∨ v252)
    (c326 : v252 ∨ ¬v308 ∨ v251 ∨ v280)
    (c327 : v251 ∨ ¬v280 ∨ v252 ∨ v308)
    (c328 : ¬v280 ∨ ¬v308 ∨ v251 ∨ v252)
    (c329 : v251 ∨ v308 ∨ v280 ∨ ¬v252)
    (c330 : v251 ∨ ¬v280 ∨ ¬v308 ∨ ¬v252)
    (c331 : ¬v251 ∨ v252 ∨ v280 ∨ v308)
    (c332 : ¬v251 ∨ ¬v308 ∨ ¬v280 ∨ v252)
    (c333 : ¬v251 ∨ v308 ∨ ¬v252 ∨ v280)
    (c334 : ¬v251 ∨ ¬v308 ∨ ¬v252 ∨ v280)
    (c335 : ¬v251 ∨ ¬v280 ∨ ¬v252 ∨ v308)
    (c336 : ¬v280 ∨ ¬v252 ∨ ¬v308 ∨ ¬v251)
    (c337 : ¬v293 ∨ v246 ∨ ¬v265 ∨ v252)
    (c338 : ¬v265 ∨ v246 ∨ v252 ∨ v293)
    (c339 : ¬v293 ∨ v265 ∨ v252 ∨ v246)
    (c340 : v293 ∨ v246 ∨ v265 ∨ v252)
    (c341 : ¬v293 ∨ ¬v265 ∨ ¬v246 ∨ v252)
    (c342 : v293 ∨ v265 ∨ v252 ∨ ¬v246)
    (c343 : ¬v293 ∨ ¬v252 ∨ ¬v265 ∨ ¬v246)
    (c344 : ¬v265 ∨ ¬v252 ∨ ¬v246 ∨ v293)
    (c345 : ¬v293 ∨ ¬v252 ∨ ¬v246 ∨ v265)
    (c346 : v293 ∨ v265 ∨ ¬v252 ∨ ¬v246)
    (c347 : v282 ∨ ¬v315 ∨ ¬v294 ∨ ¬v283)
    (c348 : v315 ∨ ¬v282 ∨ ¬v283 ∨ ¬v294)
    (c349 : ¬v315 ∨ ¬v294 ∨ ¬v283 ∨ ¬v282)
    (c350 : v324 ∨ v303 ∨ v285 ∨ v284)
    (c351 : ¬v324 ∨ v284 ∨ v285 ∨ v303)
    (c352 : v324 ∨ ¬v303 ∨ v285 ∨ v284)
    (c353 : ¬v324 ∨ ¬v303 ∨ v284 ∨ v285)
    (c354 : v303 ∨ ¬v285 ∨ v284 ∨ v324)
    (c355 : v324 ∨ ¬v284 ∨ v285 ∨ v303)
    (c356 : ¬v284 ∨ v303 ∨ ¬v285 ∨ v324)
    (c357 : ¬v324 ∨ ¬v284 ∨ ¬v285 ∨ v303)
    (c358 : v327 ∨ ¬v286 ∨ v285 ∨ ¬v306)
    (c359 : v286 ∨ v287 ∨ v308 ∨ v329)
    (c360 : v286 ∨ ¬v329 ∨ v287 ∨ v308)
    (c361 : v286 ∨ ¬v287 ∨ v308 ∨ v329)
    (c362 : ¬v286 ∨ v287 ∨ v308 ∨ v329)
    (c363 : ¬v286 ∨ ¬v287 ∨ v308 ∨ v329)
    (c364 : ¬v287 ∨ ¬v286 ∨ ¬v329 ∨ v308)
    (c365 : v200 ∨ ¬v146 ∨ v145 ∨ ¬v155)
    (c366 : ¬v200 ∨ v146 ∨ ¬v145 ∨ v155)
    (c367 : v147 ∨ v164 ∨ ¬v146 ∨ ¬v209)
    (c368 : v358 ∨ ¬v355 ∨ ¬v361 ∨ v356)
    (c369 : ¬v357 ∨ v356 ∨ ¬v360 ∨ v363)
    (c370 : ¬v356 ∨ ¬v363 ∨ v357 ∨ v360)
    (c371 : ¬v363 ∨ v361 ∨ v364 ∨ ¬v362)
    : False := by
  have c372 : v287 ∨ v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v286 := by
      rcases c359 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c362 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c373 : ¬v287 ∨ v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v286 := by
      rcases c361 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c363 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c374 : v308 ∨ v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v287 := by
      rcases c372 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c373 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n1
  have c375 : ¬v247 ∨ ¬v246 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c289 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c288 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd n1 a
  have c376 : ¬v250 ∨ ¬v251 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v306 := by
      rcases c322 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c323 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c377 : v303 ∨ v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c351 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c350 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
  have c378 : ¬v303 ∨ v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c353 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c352 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd a n1
  have c379 : v284 ∨ v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v303 := by
      rcases c378 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c377 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c380 : ¬v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c337 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c338 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
  have c381 : ¬v246 ∨ v252 ∨ ¬v265 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v293 := by
      rcases c187 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd n0 a
    rcases c341 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c382 : ¬v265 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v246 := by
      rcases c380 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n1
    rcases c381 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd n0 a
  have c383 : ¬v280 ∨ v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c328 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c332 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd a n1
  have c384 : ¬v280 ∨ ¬v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c330 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c336 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd u1 a
  have c385 : v280 ∨ ¬v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c194 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c334 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a n0
  have c386 : ¬v252 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v280 := by
      rcases c384 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c385 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c387 : ¬v252 ∨ v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v251 := by
      rcases c329 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd n0 a
    rcases c333 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a n1
  have c388 : v252 ∨ v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c331 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c325 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c389 : v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c387 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    rcases c388 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c390 : v252 ∨ ¬v280 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v251 := by
      rcases c193 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
      · exact absurd n1 a
    rcases c327 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd a n2
  have c391 : ¬v278 ∨ ¬v250 ∨ v308 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v280 := by
      rcases c389 with a|a
      · exact a
      · exact absurd a n2
    have u2 : v252 := by
      rcases c390 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n2
    have u3 : v279 := by
      rcases c196 with a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd u1 a
      · exact absurd n0 a
    have u4 : ¬v251 := by
      rcases c335 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n2
    rcases c138 with a|a|a|a|a|a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd a u4
    · exact absurd u2 a
    · exact absurd n1 a
    · exact absurd u1 a
  have c392 : v278 ∨ v250 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v306 := by
      rcases c316 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
      · exact a
    rcases c317 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c393 : v250 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v280 := by
      rcases c389 with a|a
      · exact a
      · exact absurd a n1
    have u2 : v252 := by
      rcases c390 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    have u3 : ¬v251 := by
      rcases c335 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd a n1
    have u4 : v278 := by
      rcases c392 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u3
    have u5 : ¬v306 := by
      rcases c319 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd a u3
    rcases c318 with a|a|a|a
    · exact absurd a u5
    · exact absurd a n0
    · exact absurd u4 a
    · exact absurd a u3
  have c394 : ¬v260 ∨ ¬v246 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c291 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c290 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c395 : ¬v246 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v260 := by
      rcases c394 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c375 with a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a u1
  have c396 : v266 ∨ ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c300 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c299 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd n1 a
  have c397 : v280 ∨ v251 ∨ ¬v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd n2 a
    rcases c326 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
  have c398 : v280 ∨ v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v308 := by
      rcases c389 with a|a
      · exact absurd a n0
      · exact a
    rcases c397 with a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd u1 a
  have c399 : ¬v308 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd n0 a
    rcases c383 with a|a|a
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd n0 a
  have c400 : ¬v280 ∨ ¬v251 ∨ v308 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v252 := by
      rcases c390 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c335 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd a n2
  have c401 : v308 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v280 := by
      rcases c389 with a|a
      · exact a
      · exact absurd a n0
    rcases c400 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
  have c402 : v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c293 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c292 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c403 : v278 ∨ v250 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v306 := by
      rcases c192 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c320 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a n1
  have c404 : v278 ∨ ¬v251 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v250 := by
      rcases c403 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c376 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n0
  have c405 : v265 ∨ v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c339 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n1
    rcases c340 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c406 : v246 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v265 := by
      rcases c382 with a|a
      · exact a
      · exact absurd a n1
    rcases c405 with a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
  have c407 : ¬v266 ∨ ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c302 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c301 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c408 : ¬v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v266 := by
      rcases c407 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c396 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c409 : ¬v266 ∨ v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c295 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd a n2
    rcases c294 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a n2
  have c410 : v248 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v266 := by
      rcases c402 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c409 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c411 : v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c345 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd a n0
    rcases c346 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd n1 a
  have c412 : ¬v265 ∨ ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v293 := by
      rcases c343 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c344 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd a u1
  have c413 : ¬v246 ∨ ¬v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v265 := by
      rcases c412 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c411 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c414 : v288 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v260 := by
      rcases c282 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c284 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a n0
  have c415 : ¬v288 ∨ v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v260 := by
      rcases c285 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c283 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n2
  have c416 : v247 ∨ v246 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v288 := by
      rcases c415 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c414 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c417 : ¬v280 ∨ v252 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd n0 a
    rcases c390 with a|a|a
    · exact absurd a n1
    · exact absurd n0 a
    · exact absurd a u1
  have c418 : v266 ∨ v247 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c189 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c296 with a|a|a|a
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a u1
  have c419 : v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c263 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
    rcases c266 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c420 : ¬v207 ∨ ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v206 := by
      rcases c270 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c265 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c421 : ¬v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v207 := by
      rcases c420 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c419 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c422 : v206 ∨ v242 ∨ ¬v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v207 := by
      rcases c176 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
    rcases c261 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
  have c423 : ¬v260 ∨ ¬v246 ∨ v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c287 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c185 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c424 : ¬v203 ∨ ¬v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c255 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd n0 a
    rcases c253 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c425 : v203 ∨ ¬v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v230 := by
      rcases c249 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c172 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a u1
  have c426 : ¬v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v203 := by
      rcases c425 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c424 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c427 : ¬v244 ∨ v207 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v208 := by
      rcases c274 with a|a|a|a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact a
    rcases c276 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd a n1
  have c428 : v240 ∨ v207 ∨ v276 ∨ ¬v280 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v244 := by
      rcases c427 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n3 a
    rcases c97 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n3 a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n4
  have c429 : v207 ∨ ¬v205 ∨ v276 ∨ ¬v280 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v240 := by
      rcases c428 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd n3 a
      · exact absurd a n4
    rcases c174 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a n2
  have c430 : ¬v206 ∨ ¬v207 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v242 := by
      rcases c267 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n2
    rcases c269 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd u1 a
  have c431 : ¬v207 ∨ ¬v205 ∨ v275 ∨ v276 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v206 := by
      rcases c430 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n4
    rcases c87 with a|a|a|a|a|a
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n4
  have c432 : ¬v205 ∨ v275 ∨ v276 ∨ v278 ∨ ¬v280 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v207 := by
      rcases c431 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    rcases c429 with a|a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n4 a
    · exact absurd a n5
  have c433 : v286 ∨ v308 ∨ ¬v329 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v287 := by
      rcases c360 with a|a|a|a
      · exact absurd a n0
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c198 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd u1 a
    · exact absurd a n1
  have c434 : ¬v282 ∨ ¬v283 ∨ ¬v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v315 := by
      rcases c348 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c349 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c435 : v153 ∨ ¬v197 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v152 := by
      rcases c225 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c229 with a|a|a|a
    · exact absurd n1 a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c436 : ¬v153 ∨ ¬v197 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v152 := by
      rcases c233 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c227 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd n0 a
  have c437 : ¬v197 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v153 := by
      rcases c435 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c436 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c438 : ¬v153 ∨ v197 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v152 := by
      rcases c231 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd n2 a
    rcases c164 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd n0 a
  have c439 : ¬v239 ∨ ¬v240 ∨ ¬v242 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v197 := by
      rcases c437 with a|a
      · exact a
      · exact absurd n2 a
    have u2 : ¬v153 := by
      rcases c438 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n2 a
    have u3 : v152 := by
      rcases c223 with a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u2
      · exact absurd n2 a
    have u4 : ¬v194 := by
      rcases c33 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd n2 a
      · exact absurd n0 a
      · exact absurd a u1
      · exact absurd a n3
    have u5 : v151 := by
      rcases c162 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd n0 a
    rcases c219 with a|a|a|a
    · exact absurd u5 a
    · exact absurd u3 a
    · exact absurd n0 a
    · exact absurd a u4
  have c440 : ¬v151 ∨ ¬v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c220 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c218 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c441 : v154 ∨ v153 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v199 := by
      rcases c235 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c234 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c442 : v207 ∨ v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v208 := by
      rcases c177 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c272 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n0
  have c443 : v207 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v244 := by
      rcases c442 with a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
    rcases c427 with a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd n1 a
  have c444 : v363 ∨ ¬v280 ∨ v361 ∨ v362 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd n1 a
    have u3 : v250 := by
      rcases c393 with a|a
      · exact a
      · exact absurd a u2
    have u4 : ¬v278 := by
      rcases c391 with a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd a n4
    have u5 : ¬v276 := by
      rcases c144 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n4
    have u6 : ¬v206 := by
      rcases c430 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
    have u7 : v242 := by
      rcases c264 with a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u6
      · exact absurd a u4
    have u8 : ¬v197 := by
      rcases c437 with a|a
      · exact a
      · exact absurd u7 a
    have u9 : ¬v244 := by
      rcases c99 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u4
      · exact absurd u7 a
      · exact absurd n1 a
      · exact absurd a n4
    have u10 : v240 := by
      rcases c94 with a|a|a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u1 a
      · exact absurd u7 a
      · exact absurd a u4
      · exact absurd a n2
    have u11 : ¬v153 := by
      rcases c438 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u7 a
    have u12 : v154 := by
      rcases c441 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u9
    have u13 : ¬v239 := by
      rcases c439 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact absurd a n2
    have u14 : v152 := by
      rcases c223 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd a u11
      · exact absurd u7 a
    have u15 : v241 := by
      rcases c112 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u13
      · exact absurd a n3
      · exact absurd a n2
      · exact absurd u10 a
    have u16 : v243 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a n3
      · exact absurd a u13
      · exact absurd a n2
      · exact absurd u7 a
      · exact absurd a n4
    have u17 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u13
    rcases c35 with a|a|a|a|a|a
    · exact absurd u15 a
    · exact absurd u12 a
    · exact absurd u14 a
    · exact absurd u16 a
    · exact absurd a u17
    · exact absurd a u13
  have c445 : v153 ∨ ¬v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v197 := by
      rcases c163 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
    rcases c228 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a n0
    · exact absurd a u1
  have c446 : ¬v153 ∨ ¬v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v197 := by
      rcases c232 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
      · exact absurd n0 a
    rcases c230 with a|a|a|a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd n0 a
    · exact absurd a u1
  have c447 : ¬v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v153 := by
      rcases c446 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    rcases c445 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
  have c448 : ¬v271 ∨ ¬v248 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c310 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c190 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
  have c449 : v244 ∨ v207 ∨ v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v208 := by
      rcases c275 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
    rcases c271 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c450 : v151 ∨ v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c212 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c210 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c451 : ¬v151 ∨ v152 ∨ v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c161 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c216 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c452 : v239 ∨ v152 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v151 := by
      rcases c450 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c451 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c453 : ¬v197 ∨ v361 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v242 := by
      rcases c437 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v280 := by
      rcases c444 with a|a|a|a|a
      · exact absurd a n3
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n4
    have u3 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v251 := by
      rcases c398 with a|a
      · exact absurd a u2
      · exact a
    have u5 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v194 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u3
      · exact absurd n0 a
    have u7 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u3
      · exact absurd a u1
      · exact absurd n0 a
      · exact a
    have u8 : v278 := by
      rcases c404 with a|a
      · exact a
      · exact absurd u4 a
    have u9 : ¬v243 := by
      rcases c114 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u5 a
      · exact absurd a n1
      · exact absurd a u1
      · exact absurd a n4
    have u10 : v151 := by
      rcases c211 with a|a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd u5 a
      · exact absurd a u3
    have u11 : v206 := by
      rcases c422 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u8 a
    have u12 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd u8 a
      · exact absurd u11 a
    have u13 : ¬v275 := by
      rcases c92 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u11 a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd u8 a
    have u14 : v244 := by
      rcases c449 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
    have u15 : v208 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd a u2
      · exact absurd u14 a
    have u16 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u5 a
      · exact absurd u11 a
    have u17 : ¬v199 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a n4
      · exact absurd u7 a
      · exact absurd a u1
      · exact absurd n0 a
    have u18 : ¬v241 := by
      rcases c120 with a|a|a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd u14 a
      · exact absurd a u9
      · exact absurd a n3
      · exact absurd a n4
    have u19 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u16 a
      · exact absurd u11 a
      · exact absurd u5 a
      · exact absurd a u3
    have u20 : ¬v154 := by
      rcases c237 with a|a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u7 a
      · exact absurd u14 a
    rcases c17 with a|a|a|a|a|a
    · exact absurd a u18
    · exact absurd u19 a
    · exact absurd u10 a
    · exact absurd a u20
    · exact absurd u15 a
    · exact absurd u16 a
  have c454 : v197 ∨ v152 ∨ v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v153 := by
      rcases c226 with a|a|a|a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n0
      · exact a
    rcases c222 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd a n0
  have c455 : v361 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v280 := by
      rcases c444 with a|a|a|a|a
      · exact absurd a n2
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n3
    have u2 : v251 := by
      rcases c398 with a|a
      · exact absurd a u1
      · exact a
    have u3 : v278 := by
      rcases c404 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u4
    have u6 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u4
    rcases c453 with a|a|a|a|a
    · exact absurd u6 a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n3
  have c456 : v275 ∨ ¬v241 ∨ ¬v276 ∨ ¬v278 ∨ v306 ∨ ¬v360 ∨ ¬v361 ∨ v362 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8⟩ := hc
    have u1 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd n3 a
    have u2 : v206 := by
      rcases c422 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n3 a
    have u3 : ¬v277 := by
      rcases c141 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a n7
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd a n8
    have u4 : v239 := by
      rcases c90 with a|a|a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n3 a
      · exact absurd n6 a
      · exact absurd a n0
      · exact absurd u2 a
    have u5 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n3 a
      · exact absurd u2 a
    have u6 : ¬v280 := by
      rcases c195 with a|a|a|a
      · exact absurd a u3
      · exact absurd n2 a
      · exact a
      · exact absurd a n8
    have u7 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u4 a
      · exact absurd u2 a
    have u8 : ¬v240 := by
      rcases c93 with a|a|a|a|a|a
      · exact a
      · exact absurd n6 a
      · exact absurd a u5
      · exact absurd n3 a
      · exact absurd n2 a
      · exact absurd a u1
    have u9 : v308 := by
      rcases c389 with a|a
      · exact absurd a u6
      · exact a
    have u10 : v251 := by
      rcases c398 with a|a
      · exact absurd a u6
      · exact a
    have u11 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : ¬v250 := by
      rcases c324 with a|a|a|a
      · exact absurd a n4
      · exact absurd u10 a
      · exact a
      · exact absurd n3 a
    have u13 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u11
    have u14 : v303 := by
      rcases c134 with a|a|a|a|a|a
      · exact absurd n6 a
      · exact absurd a u12
      · exact a
      · exact absurd a n0
      · exact absurd n3 a
      · exact absurd a n4
    have u15 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u13 a
      · exact a
    have u16 : ¬v249 := by
      rcases c315 with a|a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u14 a
      · exact absurd a n0
    have u17 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u15
    have u18 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd u17 a
    have u19 : ¬v271 := by
      rcases c448 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u16
    have u20 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u18 a
    have u21 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u7 a
      · exact absurd a u19
    have u22 : ¬v356 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd n2 a
      · exact absurd u7 a
      · exact absurd a u8
      · exact absurd a u19
    have u23 : v357 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd a u3
      · exact absurd a u19
      · exact absurd u7 a
      · exact absurd n1 a
    rcases c369 with a|a|a|a
    · exact absurd u23 a
    · exact absurd a u22
    · exact absurd n5 a
    · exact absurd a n8
  have c457 : ¬v285 ∨ ¬v284 ∨ v303 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v324 := by
      rcases c356 with a|a|a|a
      · exact absurd n1 a
      · exact absurd a n2
      · exact absurd n0 a
      · exact a
    rcases c357 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c458 : ¬v230 ∨ v204 ∨ ¬v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v203 := by
      rcases c247 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c251 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd u1 a
  have c459 : ¬v148 ∨ ¬v149 ∨ ¬v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c205 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c204 with a|a|a|a
    · exact absurd a u1
    · exact absurd n2 a
    · exact absurd n1 a
    · exact absurd n0 a
  have c460 : v151 ∨ v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v194 := by
      rcases c213 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n2 a
      · exact absurd a n1
    rcases c211 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
  have c461 : ¬v249 ∨ ¬v248 ∨ ¬v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c314 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c313 with a|a|a|a
    · exact absurd n2 a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c462 : ¬v271 ∨ ¬v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v249 := by
      rcases c461 with a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n0 a
    rcases c448 with a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a u1
  have c463 : ¬v249 ∨ ¬v248 ∨ v271 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c312 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c311 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd n1 a
  have c464 : ¬v275 ∨ v154 ∨ ¬v241 ∨ ¬v244 ∨ ¬v278 ∨ v306 ∨ ¬v361 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7⟩ := hc
    have u1 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd n4 a
    have u2 : v206 := by
      rcases c422 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n4 a
    have u3 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd a u1
    have u5 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n4 a
      · exact absurd u2 a
    have u6 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u3
    have u7 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u6 a
    have u8 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u5
      · exact a
    have u9 : v208 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd n3 a
    have u10 : ¬v194 := by
      rcases c217 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact absurd a u3
    have u11 : v308 := by
      rcases c389 with a|a
      · exact absurd a u8
      · exact a
    have u12 : v251 := by
      rcases c398 with a|a
      · exact absurd a u8
      · exact a
    have u13 : ¬v161 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a u10
      · exact absurd n6 a
      · exact absurd n4 a
      · exact absurd u4 a
    have u14 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u11 a
    have u15 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u14
    have u16 : ¬v265 := by
      rcases c382 with a|a
      · exact a
      · exact absurd a u14
    have u17 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u17
    have u19 : ¬v260 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u17
    have u20 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u18 a
    have u21 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u18 a
    have u22 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u18 a
      · exact absurd a u21
    have u23 : v299 := by
      rcases c309 with a|a|a|a
      · exact a
      · exact absurd a u21
      · exact absurd u18 a
      · exact absurd a u22
    have u24 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u20 a
    have u25 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u20 a
    have u26 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u25
      · exact absurd a u24
      · exact a
      · exact absurd u20 a
    have u27 : ¬v250 := by
      rcases c324 with a|a|a|a
      · exact absurd a n5
      · exact absurd u12 a
      · exact a
      · exact absurd n4 a
    have u28 : ¬v272 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd u18 a
      · exact absurd a u27
      · exact absurd a u22
      · exact absurd a u21
    have u29 : v205 := by
      rcases c77 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd n0 a
      · exact absurd a u21
      · exact absurd a u24
      · exact absurd u2 a
    have u30 : ¬v240 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u29 a
      · exact absurd a u5
      · exact absurd u6 a
      · exact absurd a u1
    have u31 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u24
      · exact absurd u29 a
      · exact absurd a u21
    have u32 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u29 a
      · exact absurd u2 a
      · exact absurd u6 a
      · exact absurd a u3
    have u33 : ¬v238 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u9 a
      · exact absurd n2 a
      · exact absurd u29 a
      · exact absurd a u24
    have u34 : v237 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd a u5
      · exact absurd a u24
      · exact absurd u29 a
      · exact absurd a u30
    have u35 : ¬v150 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd u29 a
      · exact absurd a u31
      · exact absurd a u24
      · exact absurd u7 a
    have u36 : ¬v213 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u23 a
      · exact absurd u29 a
      · exact absurd a u22
      · exact absurd a u21
    have u37 : ¬v356 := by
      rcases c181 with a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd a u31
      · exact absurd a u30
    have u38 : v360 := by
      rcases c182 with a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd n3 a
      · exact absurd u34 a
    have u39 : v149 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd u32 a
      · exact absurd u26 a
      · exact absurd a u24
      · exact absurd a u25
    have u40 : ¬v159 := by
      rcases c156 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd u32 a
      · exact absurd a u24
    have u41 : ¬v357 := by
      rcases c369 with a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u38 a
      · exact absurd a n7
    have u42 : ¬v155 := by
      rcases c42 with a|a|a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd a u27
      · exact absurd u18 a
      · exact absurd a u13
      · exact absurd a u28
    have u43 : v277 := by
      rcases c84 with a|a|a|a|a|a
      · exact absurd a u41
      · exact absurd a u31
      · exact a
      · exact absurd a u21
      · exact absurd u29 a
      · exact absurd n2 a
    have u44 : ¬v305 := by
      rcases c130 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd u43 a
      · exact absurd a u22
      · exact absurd a u21
      · exact absurd a u41
    have u45 : ¬v216 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u43 a
      · exact absurd u9 a
      · exact absurd a u14
      · exact absurd n2 a
    have u46 : ¬v146 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u7 a
      · exact absurd a n1
      · exact absurd n2 a
      · exact absurd a u36
    have u47 : ¬v200 := by
      rcases c366 with a|a|a|a
      · exact a
      · exact absurd a u46
      · exact absurd u32 a
      · exact absurd a u42
    have u48 : ¬v202 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u47
      · exact absurd u9 a
      · exact absurd u15 a
      · exact absurd a u14
      · exact absurd a u16
    have u49 : v224 := by
      rcases c240 with a|a|a|a
      · exact a
      · exact absurd a u48
      · exact absurd a u19
      · exact absurd u26 a
    have u50 : ¬v148 := by
      rcases c459 with a|a|a
      · exact a
      · exact absurd u39 a
      · exact absurd u49 a
    have u51 : v179 := by
      rcases c160 with a|a|a|a
      · exact a
      · exact absurd a u50
      · exact absurd u39 a
      · exact absurd u49 a
    rcases c203 with a|a|a|a
    · exact absurd u51 a
    · exact absurd a u50
    · exact absurd u39 a
    · exact absurd u49 a
  have c465 : ¬v278 ∨ ¬v244 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v206 := by
      rcases c422 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
    have u3 : v361 := by
      rcases c455 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
      · exact absurd a n4
    have u4 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u1
    have u5 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u1
    have u6 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u7 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u4
    have u8 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u4
      · exact absurd a u1
      · exact absurd u5 a
      · exact a
    have u9 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u6
      · exact a
    have u10 : v208 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u9
      · exact absurd n1 a
    have u11 : v243 := by
      rcases c115 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u1
      · exact absurd a n4
      · exact absurd a n2
      · exact absurd u7 a
    have u12 : v308 := by
      rcases c389 with a|a
      · exact absurd a u9
      · exact a
    have u13 : v251 := by
      rcases c398 with a|a
      · exact absurd a u9
      · exact a
    have u14 : ¬v154 := by
      rcases c39 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd n1 a
      · exact absurd u8 a
      · exact absurd a u4
      · exact absurd a u1
    have u15 : v241 := by
      rcases c184 with a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u7 a
      · exact absurd a n2
    have u16 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v306 := by
      rcases c139 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n4
      · exact absurd n0 a
      · exact absurd a u9
      · exact absurd u12 a
    have u18 : ¬v275 := by
      rcases c464 with a|a|a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u15 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a u17
      · exact absurd u3 a
      · exact absurd a n3
    have u19 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u16
    have u20 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u7 a
      · exact absurd u2 a
    have u21 : v276 := by
      rcases c88 with a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u20 a
      · exact a
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd n0 a
    have u22 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : ¬v240 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd u20 a
      · exact absurd a u6
      · exact absurd u7 a
      · exact absurd a u1
    have u24 : ¬v360 := by
      rcases c456 with a|a|a|a|a|a|a|a|a
      · exact absurd a u18
      · exact absurd u15 a
      · exact absurd u21 a
      · exact absurd n0 a
      · exact absurd a u17
      · exact a
      · exact absurd u3 a
      · exact absurd a n2
      · exact absurd a n3
    have u25 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u22
    have u26 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u25 a
    have u27 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u25 a
    have u28 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u26 a
    have u29 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u20 a
      · exact absurd a u27
    have u30 : ¬v238 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd u10 a
      · exact absurd u15 a
      · exact absurd u20 a
      · exact absurd a u28
    have u31 : v237 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u29
      · exact absurd a u6
      · exact absurd a u28
      · exact absurd u20 a
      · exact absurd a u23
    rcases c182 with a|a|a|a
    · exact absurd a u24
    · exact absurd a u30
    · exact absurd n1 a
    · exact absurd u31 a
  have c466 : ¬v207 ∨ ¬v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v208 := by
      rcases c279 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c277 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd n2 a
  have c467 : ¬v244 ∨ ¬v280 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd n1 a
    rcases c466 with a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c468 : ¬v244 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v280 := by
      rcases c467 with a|a
      · exact absurd n0 a
      · exact a
    have u2 : ¬v278 := by
      rcases c465 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : v251 := by
      rcases c398 with a|a
      · exact absurd a u1
      · exact a
    rcases c404 with a|a
    · exact absurd a u2
    · exact absurd u3 a
  have c469 : ¬v242 ∨ v206 ∨ v239 ∨ v275 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd n0 a
      · exact a
    rcases c89 with a|a|a|a|a|a
    · exact absurd n4 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd a n3
    · exact absurd n0 a
    · exact absurd a n2
  have c470 : v271 ∨ v248 ∨ ¬v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c191 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd n2 a
    rcases c307 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c471 : ¬v194 ∨ ¬v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v151 := by
      rcases c215 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c221 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd n1 a
  have c472 : v194 ∨ ¬v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v151 := by
      rcases c162 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c219 with a|a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
  have c473 : ¬v152 ∨ ¬v239 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v194 := by
      rcases c471 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
    rcases c472 with a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd n1 a
  have c474 : ¬v242 ∨ v152 ∨ v197 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v153 := by
      rcases c438 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n0 a
    rcases c223 with a|a|a|a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a u1
    · exact absurd n0 a
  have c475 : ¬v242 ∨ v152 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v197 := by
      rcases c437 with a|a
      · exact a
      · exact absurd n0 a
    rcases c474 with a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
  have c476 : v242 ∨ v206 ∨ v278 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v207 := by
      rcases c264 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd a n1
      · exact absurd a n2
    rcases c260 with a|a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
  have c477 : v242 ∨ v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v278 := by
      rcases c476 with a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
    rcases c422 with a|a|a
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd u1 a
  have c478 : v206 ∨ v275 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v242 := by
      rcases c477 with a|a
      · exact a
      · exact absurd a n0
    have u2 : v152 := by
      rcases c475 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v239 := by
      rcases c473 with a|a
      · exact absurd u2 a
      · exact a
    rcases c469 with a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n0
    · exact absurd a u3
    · exact absurd a n1
    · exact absurd n2 a
  have c479 : v205 ∨ v275 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c478 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n2 a
    have u2 : ¬v239 := by
      rcases c258 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd u1 a
    have u3 : v152 := by
      rcases c452 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v242 := by
      rcases c447 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : v207 := by
      rcases c175 with a|a|a|a
      · exact absurd u1 a
      · exact absurd u4 a
      · exact absurd a u5
      · exact a
    rcases c269 with a|a|a|a
    · exact absurd u1 a
    · exact absurd u6 a
    · exact absurd a u5
    · exact absurd u4 a
  have c480 : v278 ∨ ¬v206 ∨ ¬v242 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v207 := by
      rcases c430 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
    rcases c175 with a|a|a|a
    · exact absurd n1 a
    · exact absurd n2 a
    · exact absurd a n0
    · exact absurd a u1
  have c481 : ¬v242 ∨ ¬v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd n0 a
      · exact a
    rcases c480 with a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
  have c482 : v154 ∨ ¬v153 ∨ v244 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v199 := by
      rcases c165 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd n1 a
      · exact absurd a n0
    rcases c236 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd a n0
  have c483 : v242 ∨ v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a n0
    have u2 : v361 := by
      rcases c455 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u3 : ¬v244 := by
      rcases c468 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u4 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
    have u5 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u1
    have u6 : ¬v240 := by
      rcases c119 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
      · exact absurd a n0
      · exact absurd a n2
      · exact absurd a n3
    have u7 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd u4 a
      · exact a
    have u8 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u5 a
    have u9 : v243 := by
      rcases c115 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n0
      · exact absurd a n3
      · exact absurd a n1
      · exact absurd u5 a
    have u10 : v241 := by
      rcases c111 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u6
      · exact absurd u2 a
      · exact absurd u5 a
      · exact absurd a n2
    have u11 : v154 := by
      rcases c482 with a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd a u3
    rcases c34 with a|a|a|a|a|a
    · exact absurd u11 a
    · exact absurd u10 a
    · exact absurd u5 a
    · exact absurd u8 a
    · exact absurd u9 a
    · exact absurd a u1
  have c484 : v150 ∨ v151 ∨ v235 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v190 := by
      rcases c208 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    rcases c207 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd a n2
  have c485 : v235 ∨ v145 ∨ v151 ∨ v204 ∨ v205 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v150 := by
      rcases c484 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n0
    rcases c9 with a|a|a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n3
    · exact absurd a n2
    · exact absurd a n4
    · exact absurd a n0
  have c486 : v303 ∨ v284 ∨ ¬v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v324 := by
      rcases c197 with a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
      · exact absurd a n0
    rcases c354 with a|a|a|a
    · exact absurd a n0
    · exact absurd n2 a
    · exact absurd a n1
    · exact absurd a u1
  have c487 : v303 ∨ ¬v285 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v284 := by
      rcases c457 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
    rcases c486 with a|a|a
    · exact absurd a n0
    · exact absurd a u1
    · exact absurd n1 a
  have c488 : ¬v271 ∨ v248 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c306 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
      · exact absurd a n2
    rcases c305 with a|a|a|a
    · exact absurd a u1
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a n2
  have c489 : v271 ∨ v248 ∨ v249 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v299 := by
      rcases c304 with a|a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n1
      · exact absurd a n0
    rcases c303 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n2
    · exact absurd a n1
    · exact absurd a u1
  have c490 : v249 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v271 := by
      rcases c488 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c489 with a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
  have c491 : v362 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v361 := by
      rcases c455 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u2 : v242 := by
      rcases c483 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : v152 := by
      rcases c475 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v206 := by
      rcases c481 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v239 := by
      rcases c473 with a|a
      · exact absurd u3 a
      · exact a
    have u7 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u4
      · exact a
    have u8 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u7
    have u9 : v275 := by
      rcases c478 with a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u1 a
    have u10 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u6
    have u11 : ¬v205 := by
      rcases c259 with a|a|a|a
      · exact absurd u9 a
      · exact absurd a u6
      · exact a
      · exact absurd a u5
    have u12 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u7
    have u13 : v306 := by
      rcases c321 with a|a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u8 a
      · exact absurd a u7
    have u14 : ¬v145 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd u3 a
      · exact absurd a u5
      · exact absurd a u6
    have u15 : v252 := by
      rcases c417 with a|a
      · exact absurd u12 a
      · exact a
    have u16 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd u12 a
    have u17 : ¬v246 := by
      rcases c413 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : v329 := by
      rcases c374 with a|a
      · exact absurd a u16
      · exact a
    have u19 : v247 := by
      rcases c416 with a|a
      · exact a
      · exact absurd a u17
    have u20 : v286 := by
      rcases c433 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u18 a
    have u21 : ¬v327 := by
      rcases c150 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a n2
      · exact absurd u20 a
      · exact absurd a u16
      · exact absurd u18 a
    have u22 : ¬v248 := by
      rcases c408 with a|a
      · exact absurd u19 a
      · exact a
    have u23 : v285 := by
      rcases c358 with a|a|a|a
      · exact absurd a u21
      · exact absurd u20 a
      · exact a
      · exact absurd u13 a
    have u24 : v249 := by
      rcases c490 with a|a
      · exact a
      · exact absurd a u22
    have u25 : v303 := by
      rcases c487 with a|a
      · exact a
      · exact absurd u23 a
    have u26 : v271 := by
      rcases c470 with a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u24 a
    have u27 : ¬v299 := by
      rcases c308 with a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd u26 a
      · exact absurd a u22
    have u28 : ¬v213 := by
      rcases c65 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd u25 a
      · exact absurd u24 a
      · exact absurd a u11
      · exact absurd a u6
    have u29 : ¬v235 := by
      rcases c61 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd a u11
      · exact absurd u26 a
      · exact absurd u24 a
      · exact absurd a u27
    have u30 : ¬v204 := by
      rcases c257 with a|a|a|a
      · exact absurd a u29
      · exact absurd a u11
      · exact a
      · exact absurd u26 a
    rcases c485 with a|a|a|a|a
    · exact absurd a u29
    · exact absurd a u14
    · exact absurd a u10
    · exact absurd a u30
    · exact absurd a u11
  have c492 : ¬v275 ∨ v278 ∨ ¬v362 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a n1
      · exact a
    have u2 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd a u1
    have u3 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u1
    have u4 : v306 := by
      rcases c321 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u1
    have u5 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd u3 a
    have u6 : v329 := by
      rcases c374 with a|a
      · exact absurd a u5
      · exact a
    have u7 : v286 := by
      rcases c433 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u6 a
    have u8 : ¬v287 := by
      rcases c364 with a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u6 a
      · exact absurd a u5
    have u9 : ¬v327 := by
      rcases c150 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a n3
      · exact absurd u7 a
      · exact absurd a u5
      · exact absurd u6 a
    have u10 : v285 := by
      rcases c358 with a|a|a|a
      · exact absurd a u9
      · exact absurd u7 a
      · exact a
      · exact absurd u4 a
    have u11 : ¬v307 := by
      rcases c148 with a|a|a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd u7 a
      · exact absurd u4 a
      · exact absurd a u8
      · exact absurd a u5
    have u12 : v303 := by
      rcases c487 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v361 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd u12 a
      · exact absurd u2 a
      · exact absurd a n1
      · exact absurd u4 a
    rcases c153 with a|a|a|a|a|a
    · exact absurd n2 a
    · exact absurd u13 a
    · exact absurd u12 a
    · exact absurd u4 a
    · exact absurd a u11
    · exact absurd a n3
  have c493 : ¬v361 ∨ ¬v275 ∨ ¬v362 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v278 := by
      rcases c492 with a|a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd n2 a
      · exact absurd a n3
    have u2 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v206 := by
      rcases c477 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u2
    have u5 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd u3 a
    have u6 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u2
    have u7 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u4
    have u8 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u5
      · exact a
    have u9 : v244 := by
      rcases c449 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
    have u10 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u4
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
    have u11 : ¬v199 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u9 a
      · exact absurd a n3
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd u6 a
    have u12 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u7 a
    have u13 : ¬v194 := by
      rcases c217 with a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u7 a
      · exact absurd a u4
    have u14 : v308 := by
      rcases c389 with a|a
      · exact absurd a u8
      · exact a
    have u15 : v251 := by
      rcases c398 with a|a
      · exact absurd a u8
      · exact a
    have u16 : v208 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u8
      · exact absurd u9 a
    have u17 : ¬v154 := by
      rcases c237 with a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u10 a
      · exact absurd u9 a
    have u18 : ¬v161 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u13
      · exact absurd n0 a
      · exact absurd u1 a
      · exact absurd u6 a
    have u19 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u19
    have u21 : ¬v265 := by
      rcases c382 with a|a
      · exact a
      · exact absurd a u19
    have u22 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u20 a
      · exact a
    have u23 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u22
    have u24 : ¬v260 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u22
    have u25 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u23 a
    have u26 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u23 a
    have u27 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u26
    have u28 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u25 a
    have u29 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u25 a
    have u30 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u29
      · exact absurd a u28
      · exact a
      · exact absurd u25 a
    have u31 : v299 := by
      rcases c309 with a|a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u23 a
      · exact absurd a u27
    have u32 : v279 := by
      rcases c142 with a|a|a|a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd u1 a
      · exact absurd n1 a
      · exact absurd n0 a
      · exact absurd a n3
    have u33 : ¬v250 := by
      rcases c137 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd u15 a
      · exact a
      · exact absurd u1 a
      · exact absurd a u19
      · exact absurd a u8
    have u34 : ¬v272 := by
      rcases c127 with a|a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd u23 a
      · exact absurd a u33
      · exact absurd a u27
      · exact absurd a u26
    have u35 : v205 := by
      rcases c77 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd n1 a
      · exact absurd a u26
      · exact absurd a u28
      · exact absurd u3 a
    have u36 : ¬v240 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd u35 a
      · exact absurd a u5
      · exact absurd u7 a
      · exact absurd a u2
    have u37 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u35 a
      · exact absurd a u26
    have u38 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd u35 a
      · exact absurd u3 a
      · exact absurd u7 a
      · exact absurd a u4
    have u39 : ¬v150 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u35 a
      · exact absurd a u37
      · exact absurd a u28
      · exact absurd u12 a
    have u40 : ¬v213 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u31 a
      · exact absurd u35 a
      · exact absurd a u27
      · exact absurd a u26
    have u41 : v237 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u5
      · exact absurd a u28
      · exact absurd u35 a
      · exact absurd a u36
    have u42 : v241 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u38 a
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd u16 a
      · exact absurd u35 a
    have u43 : v149 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u38 a
      · exact absurd u30 a
      · exact absurd a u28
      · exact absurd a u29
    have u44 : ¬v159 := by
      rcases c156 with a|a|a|a
      · exact a
      · exact absurd a u39
      · exact absurd u38 a
      · exact absurd a u28
    have u45 : ¬v238 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u16 a
      · exact absurd u42 a
      · exact absurd u35 a
      · exact absurd a u28
    have u46 : v360 := by
      rcases c182 with a|a|a|a
      · exact a
      · exact absurd a u45
      · exact absurd u9 a
      · exact absurd u41 a
    have u47 : v277 := by
      rcases c95 with a|a|a|a|a|a
      · exact absurd u32 a
      · exact absurd n1 a
      · exact a
      · exact absurd u3 a
      · exact absurd u16 a
      · exact absurd u35 a
    have u48 : ¬v363 := by
      rcases c116 with a|a|a|a|a|a
      · exact a
      · exact absurd a u36
      · exact absurd a n3
      · exact absurd n0 a
      · exact absurd a u2
      · exact absurd u9 a
    have u49 : ¬v356 := by
      rcases c181 with a|a|a|a
      · exact a
      · exact absurd u41 a
      · exact absurd a u37
      · exact absurd a u36
    have u50 : ¬v357 := by
      rcases c369 with a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u46 a
      · exact absurd a u48
    have u51 : ¬v155 := by
      rcases c42 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd a u33
      · exact absurd u23 a
      · exact absurd a u18
      · exact absurd a u34
    have u52 : ¬v305 := by
      rcases c130 with a|a|a|a|a|a
      · exact a
      · exact absurd u31 a
      · exact absurd u47 a
      · exact absurd a u27
      · exact absurd a u26
      · exact absurd a u50
    have u53 : ¬v216 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u52
      · exact absurd u47 a
      · exact absurd u16 a
      · exact absurd a u19
      · exact absurd u42 a
    have u54 : ¬v146 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u12 a
      · exact absurd a u17
      · exact absurd u42 a
      · exact absurd a u40
    have u55 : ¬v200 := by
      rcases c366 with a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u38 a
      · exact absurd a u51
    have u56 : ¬v202 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd u16 a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd a u21
    have u57 : v224 := by
      rcases c240 with a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd a u24
      · exact absurd u30 a
    have u58 : ¬v148 := by
      rcases c459 with a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd u57 a
    have u59 : v179 := by
      rcases c160 with a|a|a|a
      · exact a
      · exact absurd a u58
      · exact absurd u43 a
      · exact absurd u57 a
    rcases c203 with a|a|a|a
    · exact absurd u59 a
    · exact absurd a u58
    · exact absurd u43 a
    · exact absurd u57 a
  have c494 : v275 ∨ ¬v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v205 := by
      rcases c479 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u2 : v206 := by
      rcases c478 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
    have u3 : ¬v242 := by
      rcases c481 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u3
    have u5 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd a u3
    have u6 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u4
    have u7 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u4
      · exact absurd a u3
      · exact absurd u5 a
      · exact a
    have u8 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u4
      · exact absurd u6 a
    have u9 : v278 := by
      rcases c91 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd u6 a
      · exact absurd a n0
      · exact a
      · exact absurd u2 a
      · exact absurd a u3
    have u10 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u8 a
      · exact absurd u1 a
      · exact absurd u2 a
      · exact absurd u6 a
      · exact absurd a u4
    have u11 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd u9 a
      · exact absurd u2 a
    have u12 : ¬v240 := by
      rcases c15 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact a
      · exact absurd u1 a
      · exact absurd u8 a
      · exact absurd u7 a
      · exact absurd a u11
    have u13 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u11
      · exact a
    have u14 : v276 := by
      rcases c88 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u1 a
      · exact a
      · exact absurd a u11
      · exact absurd u2 a
      · exact absurd u9 a
    have u15 : v308 := by
      rcases c389 with a|a
      · exact absurd a u13
      · exact a
    have u16 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u16
    have u18 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u18
    have u20 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u19 a
    have u21 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u19 a
    have u22 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u20 a
    have u23 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u1 a
      · exact absurd a u21
    have u24 : ¬v236 := by
      rcases c75 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u2 a
      · exact absurd u6 a
      · exact absurd a u22
      · exact absurd u1 a
    have u25 : ¬v356 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd u14 a
      · exact absurd u1 a
      · exact absurd a u12
      · exact absurd a u21
    have u26 : v355 := by
      rcases c78 with a|a|a|a|a|a
      · exact a
      · exact absurd a u23
      · exact absurd a n0
      · exact absurd u6 a
      · exact absurd u1 a
      · exact absurd a u21
    have u27 : v358 := by
      rcases c368 with a|a|a|a
      · exact a
      · exact absurd u26 a
      · exact absurd n1 a
      · exact absurd a u25
    rcases c109 with a|a|a|a|a|a
    · exact absurd u27 a
    · exact absurd u26 a
    · exact absurd n1 a
    · exact absurd u6 a
    · exact absurd a u24
    · exact absurd a u3
  have c495 : ¬v361 ∨ ¬v362 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v275 := by
      rcases c494 with a|a
      · exact a
      · exact absurd n0 a
    rcases c493 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n2
  have c496 : ¬v308 ∨ v275 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v280 := by
      rcases c399 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v361 := by
      rcases c494 with a|a
      · exact absurd a n1
      · exact a
    have u4 : v362 := by
      rcases c491 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a n3
    have u5 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u1
    have u6 : ¬v265 := by
      rcases c382 with a|a
      · exact a
      · exact absurd a u1
    have u7 : v251 := by
      rcases c398 with a|a
      · exact absurd a u2
      · exact a
    have u8 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u5 a
      · exact a
    have u9 : v278 := by
      rcases c404 with a|a
      · exact a
      · exact absurd u7 a
    have u10 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u8
    have u11 : ¬v260 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
    have u12 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u9 a
    have u13 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u10 a
    have u14 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u10 a
    have u15 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u14
    have u16 : v206 := by
      rcases c477 with a|a
      · exact absurd a u12
      · exact a
    have u17 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u12
    have u18 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u13 a
    have u19 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u13 a
    have u20 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u19
      · exact absurd a u18
      · exact a
      · exact absurd u13 a
    have u21 : v299 := by
      rcases c309 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd a u15
    have u22 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u9 a
      · exact absurd u16 a
    have u23 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd a u12
    have u24 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u17
    have u25 : v244 := by
      rcases c449 with a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
    have u26 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u17
      · exact absurd a u12
      · exact absurd u23 a
      · exact a
    have u27 : ¬v199 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd a n3
      · exact absurd u26 a
      · exact absurd a u12
      · exact absurd u23 a
    have u28 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u24 a
    have u29 : ¬v194 := by
      rcases c217 with a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u24 a
      · exact absurd a u17
    have u30 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd u16 a
    have u31 : ¬v240 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd u30 a
      · exact absurd a u22
      · exact absurd u24 a
      · exact absurd a u12
    have u32 : v208 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u2
      · exact absurd u25 a
    have u33 : ¬v154 := by
      rcases c237 with a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd u26 a
      · exact absurd u25 a
    have u34 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u28 a
      · exact absurd u30 a
      · exact absurd u16 a
      · exact absurd u24 a
      · exact absurd a u17
    have u35 : ¬v160 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd a u29
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd u28 a
    have u36 : v276 := by
      rcases c88 with a|a|a|a|a|a
      · exact absurd a n1
      · exact absurd u30 a
      · exact a
      · exact absurd a u22
      · exact absurd u16 a
      · exact absurd u9 a
    have u37 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u30 a
      · exact absurd a u14
    have u38 : ¬v213 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u21 a
      · exact absurd u30 a
      · exact absurd a u15
      · exact absurd a u14
    have u39 : v241 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u28 a
      · exact absurd a u33
      · exact absurd u32 a
      · exact absurd u30 a
    have u40 : ¬v150 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u30 a
      · exact absurd a u37
      · exact absurd a u18
      · exact absurd u28 a
    have u41 : ¬v356 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u36 a
      · exact absurd u30 a
      · exact absurd a u31
      · exact absurd a u14
    have u42 : v149 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd u34 a
      · exact absurd u20 a
      · exact absurd a u18
      · exact absurd a u19
    have u43 : ¬v159 := by
      rcases c156 with a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd u34 a
      · exact absurd a u18
    have u44 : ¬v304 := by
      rcases c128 with a|a|a|a|a|a
      · exact absurd a u41
      · exact absurd u36 a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
      · exact absurd u21 a
    have u45 : ¬v155 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd a u43
      · exact absurd a u35
      · exact absurd u10 a
      · exact absurd a u15
      · exact absurd a u14
    have u46 : v237 := by
      rcases c79 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a u22
      · exact absurd a u18
      · exact absurd u30 a
      · exact absurd a u31
    have u47 : v355 := by
      rcases c78 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd a n1
      · exact absurd u24 a
      · exact absurd u30 a
      · exact absurd a u14
    have u48 : v303 := by
      rcases c105 with a|a|a|a|a|a
      · exact absurd a u38
      · exact absurd u24 a
      · exact a
      · exact absurd a u44
      · exact absurd a u31
      · exact absurd a u3
    have u49 : ¬v238 := by
      rcases c82 with a|a|a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u32 a
      · exact absurd u39 a
      · exact absurd u30 a
      · exact absurd a u18
    have u50 : v360 := by
      rcases c182 with a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u25 a
      · exact absurd u46 a
    have u51 : ¬v357 := by
      rcases c369 with a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd u50 a
      · exact absurd a n2
    have u52 : v277 := by
      rcases c84 with a|a|a|a|a|a
      · exact absurd a u51
      · exact absurd a u37
      · exact a
      · exact absurd a u14
      · exact absurd u30 a
      · exact absurd u39 a
    have u53 : ¬v305 := by
      rcases c152 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u47 a
      · exact absurd u21 a
      · exact absurd u48 a
      · exact absurd a u51
    have u54 : ¬v216 := by
      rcases c68 with a|a|a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u52 a
      · exact absurd u32 a
      · exact absurd a u1
      · exact absurd u39 a
    have u55 : ¬v146 := by
      rcases c26 with a|a|a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u28 a
      · exact absurd a u33
      · exact absurd u39 a
      · exact absurd a u38
    have u56 : ¬v200 := by
      rcases c366 with a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd u34 a
      · exact absurd a u45
    have u57 : ¬v202 := by
      rcases c60 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u32 a
      · exact absurd u5 a
      · exact absurd a u1
      · exact absurd a u6
    have u58 : v224 := by
      rcases c240 with a|a|a|a
      · exact a
      · exact absurd a u57
      · exact absurd a u11
      · exact absurd u20 a
    have u59 : ¬v148 := by
      rcases c459 with a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd u58 a
    have u60 : v179 := by
      rcases c160 with a|a|a|a
      · exact a
      · exact absurd a u59
      · exact absurd u42 a
      · exact absurd u58 a
    rcases c203 with a|a|a|a
    · exact absurd u60 a
    · exact absurd a u59
    · exact absurd u42 a
    · exact absurd u58 a
  have c497 : v306 ∨ v275 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : ¬v308 := by
      rcases c496 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd a n3
    have u2 : v280 := by
      rcases c389 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v251 := by
      rcases c401 with a|a
      · exact absurd a u1
      · exact a
    have u5 : v250 := by
      rcases c393 with a|a
      · exact a
      · exact absurd a u1
    have u6 : v278 := by
      rcases c321 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd u5 a
      · exact absurd a u4
    have u7 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u6 a
    have u8 : ¬v206 := by
      rcases c268 with a|a|a|a
      · exact absurd a u7
      · exact absurd u3 a
      · exact absurd u6 a
      · exact a
    rcases c477 with a|a
    · exact absurd a u7
    · exact absurd a u8
  have c498 : ¬v278 ∨ ¬v205 ∨ v275 ∨ ¬v306 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v206 := by
      rcases c477 with a|a
      · exact absurd a u1
      · exact a
    have u3 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u1
    have u4 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u1
      · exact a
      · exact absurd n0 a
      · exact absurd u2 a
    have u5 : v276 := by
      rcases c88 with a|a|a|a|a|a
      · exact absurd a n2
      · exact absurd n1 a
      · exact a
      · exact absurd a u4
      · exact absurd u2 a
      · exact absurd n0 a
    have u6 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u3
    have u7 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u4
      · exact a
    have u8 : ¬v240 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd n1 a
      · exact absurd a u4
      · exact absurd u6 a
      · exact absurd a u1
    have u9 : v308 := by
      rcases c389 with a|a
      · exact absurd a u7
      · exact a
    have u10 : v251 := by
      rcases c398 with a|a
      · exact absurd a u7
      · exact a
    have u11 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u9 a
    have u12 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u11
    have u13 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u12 a
      · exact a
    have u14 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u13
    have u15 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u14 a
    have u16 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u14 a
      · exact absurd a u16
    have u18 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : v299 := by
      rcases c309 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u14 a
      · exact absurd a u17
    have u20 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd n1 a
      · exact absurd a u16
    have u21 : ¬v356 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u5 a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd a u16
    have u22 : ¬v304 := by
      rcases c128 with a|a|a|a|a|a
      · exact absurd a u21
      · exact absurd u5 a
      · exact a
      · exact absurd a u17
      · exact absurd a u16
      · exact absurd u19 a
    rcases c136 with a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd n3 a
    · exact absurd n0 a
    · exact absurd u10 a
    · exact absurd u5 a
    · exact absurd a n4
  have c499 : v278 ∨ ¬v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a n0
      · exact a
    have u2 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd u2 a
    rcases c430 with a|a|a
    · exact absurd n1 a
    · exact absurd u3 a
    · exact absurd a n0
  have c500 : ¬v239 ∨ v275 ∨ ¬v306 ∨ v361 ∨ v363 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : ¬v152 := by
      rcases c473 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : ¬v242 := by
      rcases c475 with a|a
      · exact a
      · exact absurd a u1
    have u3 : v206 := by
      rcases c477 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v278 := by
      rcases c499 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd n0 a
      · exact absurd u3 a
    rcases c498 with a|a|a|a|a
    · exact absurd u4 a
    · exact absurd u5 a
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a n3
  have c501 : v230 ∨ ¬v204 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v203 := by
      rcases c248 with a|a|a|a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd a n2
      · exact a
    rcases c252 with a|a|a|a
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd u1 a
  have c502 : ¬v202 ∨ v203 ∨ ¬v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v260 := by
      rcases c241 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact a
      · exact absurd a n1
    rcases c169 with a|a|a|a
    · exact absurd n0 a
    · exact absurd a n1
    · exact absurd a u1
    · exact absurd n2 a
  have c503 : v260 ∨ v246 ∨ ¬v247 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v288 := by
      rcases c186 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd n2 a
    rcases c286 with a|a|a|a
    · exact absurd a n0
    · exact absurd a n1
    · exact absurd n2 a
    · exact absurd a u1
  have c504 : ¬v229 ∨ ¬v202 ∨ v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v265 := by
      rcases c280 with a|a|a|a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact a
      · exact absurd a n2
    rcases c170 with a|a|a|a
    · exact absurd n0 a
    · exact absurd n1 a
    · exact absurd a n2
    · exact absurd a u1
  have c505 : v148 ∨ v149 ∨ v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c202 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
      · exact absurd a n2
    rcases c201 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n0
    · exact absurd a n2
  have c506 : v275 ∨ v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v361 := by
      rcases c494 with a|a
      · exact absurd a n0
      · exact a
    have u2 : v306 := by
      rcases c497 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
      · exact absurd a n2
    have u3 : ¬v239 := by
      rcases c500 with a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a n1
    have u4 : v152 := by
      rcases c452 with a|a
      · exact absurd a u3
      · exact a
    have u5 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
    have u6 : v242 := by
      rcases c447 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : v194 := by
      rcases c214 with a|a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd u4 a
      · exact absurd a u3
    have u8 : ¬v197 := by
      rcases c437 with a|a
      · exact a
      · exact absurd u6 a
    have u9 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u6 a
      · exact a
    have u10 : ¬v206 := by
      rcases c481 with a|a
      · exact absurd u6 a
      · exact a
    have u11 : ¬v153 := by
      rcases c438 with a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u6 a
    have u12 : v161 := by
      rcases c47 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a n0
      · exact absurd a u8
      · exact absurd a u9
      · exact absurd u7 a
    have u13 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u9
      · exact a
    have u14 : v207 := by
      rcases c262 with a|a|a|a
      · exact absurd a u10
      · exact a
      · exact absurd a u9
      · exact absurd u6 a
    have u15 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u13
    have u16 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a u9
      · exact a
      · exact absurd a u13
    have u17 : v252 := by
      rcases c417 with a|a
      · exact absurd u15 a
      · exact a
    have u18 : ¬v244 := by
      rcases c467 with a|a
      · exact a
      · exact absurd u15 a
    have u19 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd u15 a
    have u20 : ¬v246 := by
      rcases c413 with a|a
      · exact a
      · exact absurd u17 a
    have u21 : ¬v208 := by
      rcases c278 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u14 a
      · exact absurd u15 a
    have u22 : v154 := by
      rcases c441 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u18
    have u23 : v329 := by
      rcases c374 with a|a
      · exact absurd a u19
      · exact a
    have u24 : v247 := by
      rcases c416 with a|a
      · exact a
      · exact absurd a u20
    have u25 : v286 := by
      rcases c433 with a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u23 a
    have u26 : ¬v327 := by
      rcases c150 with a|a|a|a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a n2
      · exact absurd u25 a
      · exact absurd a u19
      · exact absurd u23 a
    have u27 : v260 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u24 a
    have u28 : ¬v248 := by
      rcases c408 with a|a
      · exact absurd u24 a
      · exact a
    have u29 : v285 := by
      rcases c358 with a|a|a|a
      · exact absurd a u26
      · exact absurd u25 a
      · exact a
      · exact absurd u2 a
    have u30 : v249 := by
      rcases c490 with a|a
      · exact a
      · exact absurd a u28
    have u31 : v303 := by
      rcases c487 with a|a
      · exact a
      · exact absurd u29 a
    have u32 : v271 := by
      rcases c470 with a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u30 a
    have u33 : v272 := by
      rcases c126 with a|a|a|a|a|a
      · exact a
      · exact absurd u32 a
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd a u28
      · exact absurd u30 a
    have u34 : v304 := by
      rcases c154 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u19
      · exact absurd a n2
    have u35 : v240 := by
      rcases c117 with a|a|a|a|a|a
      · exact absurd a n1
      · exact a
      · exact absurd u6 a
      · exact absurd a u1
      · exact absurd a u18
      · exact absurd a n2
    have u36 : ¬v276 := by
      rcases c144 with a|a|a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a u9
      · exact absurd a u1
      · exact absurd u15 a
      · exact absurd a n2
    have u37 : v214 := by
      rcases c66 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u10
      · exact absurd u31 a
      · exact absurd a u3
      · exact absurd u16 a
    have u38 : ¬v169 := by
      rcases c44 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact absurd a n0
      · exact absurd u16 a
      · exact absurd u31 a
      · exact absurd u7 a
      · exact a
    have u39 : v213 := by
      rcases c106 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd u31 a
      · exact absurd u34 a
      · exact absurd u35 a
      · exact absurd a u3
    have u40 : ¬v205 := by
      rcases c432 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u36
      · exact absurd a u9
      · exact absurd u15 a
      · exact absurd a n1
    have u41 : ¬v145 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd a u5
      · exact absurd u4 a
      · exact absurd a u10
      · exact absurd a u3
    have u42 : v155 := by
      rcases c166 with a|a|a|a
      · exact absurd a u38
      · exact a
      · exact absurd u16 a
      · exact absurd u12 a
    have u43 : v146 := by
      rcases c24 with a|a|a|a|a|a
      · exact absurd u37 a
      · exact a
      · exact absurd u4 a
      · exact absurd u39 a
      · exact absurd a u5
      · exact absurd a u3
    have u44 : v200 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd a u41
      · exact absurd u42 a
    have u45 : v204 := by
      rcases c63 with a|a|a|a|a|a
      · exact absurd u44 a
      · exact absurd u33 a
      · exact absurd u16 a
      · exact absurd a u28
      · exact absurd a u10
      · exact a
    have u46 : ¬v266 := by
      rcases c426 with a|a
      · exact absurd u45 a
      · exact a
    have u47 : v230 := by
      rcases c501 with a|a|a
      · exact a
      · exact absurd u45 a
      · exact absurd a u46
    have u48 : ¬v203 := by
      rcases c254 with a|a|a|a
      · exact absurd u47 a
      · exact absurd u45 a
      · exact absurd a u46
      · exact a
    have u49 : v235 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd u45 a
      · exact absurd u32 a
    have u50 : v202 := by
      rcases c57 with a|a|a|a|a|a
      · exact a
      · exact absurd u44 a
      · exact absurd a u48
      · exact absurd u24 a
      · exact absurd u27 a
      · exact absurd a u20
    have u51 : ¬v231 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u48
      · exact absurd u45 a
      · exact absurd u49 a
      · exact absurd a u40
    have u52 : ¬v229 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd a u21
    have u53 : ¬v224 := by
      rcases c502 with a|a|a
      · exact absurd u50 a
      · exact absurd a u48
      · exact a
    have u54 : ¬v148 := by
      rcases c3 with a|a|a|a|a|a
      · exact absurd a u52
      · exact a
      · exact absurd u22 a
      · exact absurd a u41
      · exact absurd a u21
      · exact absurd u50 a
    have u55 : ¬v149 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u51
      · exact a
      · exact absurd a u48
      · exact absurd a u5
      · exact absurd a u40
      · exact absurd a u41
    rcases c505 with a|a|a
    · exact absurd a u54
    · exact absurd a u55
    · exact absurd a u53
  have c507 : v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v362 := by
      rcases c491 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u2 : ¬v361 := by
      rcases c495 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    have u3 : v275 := by
      rcases c506 with a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n1
    have u4 : v278 := by
      rcases c492 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u1 a
      · exact absurd a n1
    have u5 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u4 a
    have u6 : v206 := by
      rcases c477 with a|a
      · exact absurd a u5
      · exact a
    have u7 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u5
    have u8 : ¬v239 := by
      rcases c92 with a|a|a|a|a|a
      · exact absurd u3 a
      · exact absurd a u2
      · exact absurd u6 a
      · exact a
      · exact absurd a u5
      · exact absurd u4 a
    rcases c452 with a|a
    · exact absurd a u8
    · exact absurd a u7
  have c508 : ¬v275 ∨ v242 ∨ v361 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v206 := by
      rcases c477 with a|a
      · exact absurd a n1
      · exact a
    have u2 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v278 := by
      rcases c499 with a|a
      · exact a
      · exact absurd u1 a
    have u4 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u2
    rcases c92 with a|a|a|a|a|a
    · exact absurd n0 a
    · exact absurd a n2
    · exact absurd u1 a
    · exact absurd u4 a
    · exact absurd a n1
    · exact absurd u3 a
  have c509 : v361 ∨ ¬v275 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v242 := by
      rcases c508 with a|a|a
      · exact absurd n1 a
      · exact a
      · exact absurd a n0
    have u2 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u1 a
      · exact a
    have u3 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u2
      · exact a
    have u4 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u3
    have u5 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd a u3
    have u6 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v306 := by
      rcases c321 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u5 a
      · exact absurd a u3
    have u8 : v329 := by
      rcases c374 with a|a
      · exact absurd a u6
      · exact a
    have u9 : ¬v303 := by
      rcases c135 with a|a|a|a|a|a
      · exact absurd n1 a
      · exact absurd a n0
      · exact a
      · exact absurd u5 a
      · exact absurd a u2
      · exact absurd u7 a
    have u10 : v286 := by
      rcases c433 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd u8 a
    have u11 : ¬v285 := by
      rcases c487 with a|a
      · exact absurd a u9
      · exact a
    have u12 : v327 := by
      rcases c358 with a|a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
      · exact absurd u7 a
    have u13 : v284 := by
      rcases c379 with a|a
      · exact a
      · exact absurd a u11
    have u14 : ¬v324 := by
      rcases c145 with a|a|a|a|a|a
      · exact absurd u12 a
      · exact a
      · exact absurd u7 a
      · exact absurd a u11
      · exact absurd a u9
      · exact absurd a n0
    rcases c355 with a|a|a|a
    · exact absurd a u14
    · exact absurd u13 a
    · exact absurd a u11
    · exact absurd a u9
  have c510 : ¬v361 ∨ ¬v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v362 := by
      rcases c495 with a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd a n2
    rcases c200 with a|a|a|a
    · exact absurd a u1
    · exact absurd n1 a
    · exact absurd n0 a
    · exact absurd a n2
  have c511 : ¬v315 ∨ ¬v283 ∨ ¬v294 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v282 := by
      rcases c347 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n2 a
      · exact absurd n1 a
    rcases c434 with a|a|a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd n2 a
  have c512 : v205 ∨ ¬v146 ∨ ¬v152 ∨ ¬v155 ∨ v219 ∨ ¬v220 ∨ v241 ∨ v257 ∨ ¬v272 ∨ v275 ∨ v277 ∨ ¬v283 ∨ v326 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12⟩ := hc
    have u1 : ¬v239 := by
      rcases c473 with a|a
      · exact absurd n2 a
      · exact a
    have u2 : v242 := by
      rcases c447 with a|a
      · exact absurd n2 a
      · exact a
    have u3 : v256 := by
      rcases c72 with a|a|a|a|a|a
      · exact absurd n5 a
      · exact absurd a n0
      · exact absurd a n10
      · exact absurd a n6
      · exact a
      · exact absurd a n12
    have u4 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd n2 a
      · exact absurd a u1
    have u5 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u2 a
      · exact a
    have u6 : ¬v206 := by
      rcases c481 with a|a
      · exact absurd u2 a
      · exact a
    have u7 : ¬v201 := by
      rcases c70 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a n0
      · exact absurd a u6
      · exact absurd a n7
      · exact absurd a n9
    have u8 : ¬v145 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a u4
      · exact absurd n2 a
      · exact absurd a u6
      · exact absurd a u1
    have u9 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u5
      · exact a
    have u10 : v200 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd a u8
      · exact absurd n3 a
    have u11 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u9
    have u12 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a u5
      · exact a
      · exact absurd a u9
    have u13 : v252 := by
      rcases c417 with a|a
      · exact absurd u11 a
      · exact a
    have u14 : ¬v246 := by
      rcases c413 with a|a
      · exact a
      · exact absurd u13 a
    have u15 : v247 := by
      rcases c416 with a|a
      · exact a
      · exact absurd a u14
    have u16 : ¬v248 := by
      rcases c408 with a|a
      · exact absurd u15 a
      · exact a
    have u17 : v204 := by
      rcases c63 with a|a|a|a|a|a
      · exact absurd u10 a
      · exact absurd n8 a
      · exact absurd u12 a
      · exact absurd a u16
      · exact absurd a u6
      · exact a
    have u18 : ¬v266 := by
      rcases c426 with a|a
      · exact absurd u17 a
      · exact a
    have u19 : v230 := by
      rcases c501 with a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u18
    have u20 : ¬v255 := by
      rcases c168 with a|a|a|a
      · exact a
      · exact absurd a u7
      · exact absurd u17 a
      · exact absurd a n4
    have u21 : ¬v212 := by
      rcases c56 with a|a|a|a|a|a
      · exact a
      · exact absurd n11 a
      · exact absurd u17 a
      · exact absurd a n4
      · exact absurd a u16
      · exact absurd a u20
    have u22 : v294 := by
      rcases c297 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd a u18
      · exact absurd u15 a
    have u23 : v315 := by
      rcases c100 with a|a|a|a|a|a
      · exact absurd a n4
      · exact absurd u19 a
      · exact absurd u22 a
      · exact absurd n11 a
      · exact absurd a u21
      · exact a
    rcases c511 with a|a|a
    · exact absurd u23 a
    · exact absurd n11 a
    · exact absurd u22 a
  have c513 : ¬v230 ∨ v204 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v203 := by
      rcases c171 with a|a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n2
      · exact absurd n0 a
    rcases c246 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd n0 a
  have c514 : v230 ∨ v204 ∨ v266 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v203 := by
      rcases c244 with a|a|a|a
      · exact absurd a n0
      · exact absurd a n1
      · exact a
      · exact absurd a n2
    rcases c250 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n2
    · exact absurd a n0
  have c515 : v266 ∨ v204 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v230 := by
      rcases c514 with a|a|a
      · exact a
      · exact absurd a n1
      · exact absurd a n0
    rcases c513 with a|a|a
    · exact absurd u1 a
    · exact absurd a n1
    · exact absurd a n0
  have c516 : ¬v266 ∨ ¬v247 ∨ v248 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v294 := by
      rcases c298 with a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c188 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n2
    · exact absurd n1 a
    · exact absurd n0 a
  have c517 : ¬v242 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v197 := by
      rcases c437 with a|a
      · exact a
      · exact absurd n0 a
    have u2 : v152 := by
      rcases c475 with a|a
      · exact absurd n0 a
      · exact a
    have u3 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd n0 a
      · exact a
    have u4 : ¬v206 := by
      rcases c481 with a|a
      · exact absurd n0 a
      · exact a
    have u5 : v363 := by
      rcases c507 with a|a
      · exact a
      · exact absurd a n1
    have u6 : ¬v153 := by
      rcases c438 with a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd n0 a
    have u7 : ¬v239 := by
      rcases c473 with a|a
      · exact absurd u2 a
      · exact a
    have u8 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u3
      · exact a
    have u9 : v207 := by
      rcases c262 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd a u3
      · exact absurd n0 a
    have u10 : ¬v361 := by
      rcases c510 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a n1
    have u11 : ¬v362 := by
      rcases c371 with a|a|a|a
      · exact absurd u5 a
      · exact absurd a u10
      · exact absurd a n1
      · exact a
    have u12 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd u2 a
      · exact absurd a u7
    have u13 : v243 := by
      rcases c113 with a|a|a|a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd a u7
      · exact absurd a u10
      · exact absurd n0 a
      · exact absurd a n1
    have u14 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u8
    have u15 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a u3
      · exact a
      · exact absurd a u8
    have u16 : ¬v275 := by
      rcases c509 with a|a
      · exact absurd a u10
      · exact a
    have u17 : v194 := by
      rcases c214 with a|a|a|a
      · exact absurd a u12
      · exact a
      · exact absurd u2 a
      · exact absurd a u7
    have u18 : v252 := by
      rcases c417 with a|a
      · exact absurd u14 a
      · exact a
    have u19 : ¬v244 := by
      rcases c467 with a|a
      · exact a
      · exact absurd u14 a
    have u20 : ¬v308 := by
      rcases c399 with a|a
      · exact a
      · exact absurd u14 a
    have u21 : v306 := by
      rcases c321 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u15 a
      · exact absurd a u8
    have u22 : ¬v198 := by
      rcases c55 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd a u11
      · exact absurd a u10
      · exact absurd a u1
      · exact absurd a n1
    have u23 : ¬v246 := by
      rcases c413 with a|a
      · exact a
      · exact absurd u18 a
    have u24 : ¬v208 := by
      rcases c278 with a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u9 a
      · exact absurd u14 a
    have u25 : v154 := by
      rcases c441 with a|a|a
      · exact a
      · exact absurd a u6
      · exact absurd a u19
    have u26 : v329 := by
      rcases c374 with a|a
      · exact absurd a u20
      · exact a
    have u27 : v247 := by
      rcases c416 with a|a
      · exact a
      · exact absurd a u23
    have u28 : ¬v241 := by
      rcases c35 with a|a|a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u2 a
      · exact absurd u13 a
      · exact absurd a u12
      · exact absurd a u7
    have u29 : v199 := by
      rcases c38 with a|a|a|a|a|a
      · exact absurd a u22
      · exact a
      · exact absurd u2 a
      · exact absurd a u1
      · exact absurd a u6
      · exact absurd u25 a
    have u30 : v286 := by
      rcases c433 with a|a|a
      · exact a
      · exact absurd a u20
      · exact absurd u26 a
    have u31 : ¬v327 := by
      rcases c150 with a|a|a|a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a n1
      · exact absurd u30 a
      · exact absurd a u20
      · exact absurd u26 a
    have u32 : ¬v287 := by
      rcases c364 with a|a|a|a
      · exact a
      · exact absurd u30 a
      · exact absurd u26 a
      · exact absurd a u20
    have u33 : ¬v248 := by
      rcases c408 with a|a
      · exact absurd u27 a
      · exact a
    have u34 : v285 := by
      rcases c358 with a|a|a|a
      · exact absurd a u31
      · exact absurd u30 a
      · exact a
      · exact absurd u21 a
    have u35 : ¬v266 := by
      rcases c516 with a|a|a
      · exact a
      · exact absurd u27 a
      · exact absurd a u33
    have u36 : v249 := by
      rcases c490 with a|a
      · exact a
      · exact absurd a u33
    have u37 : ¬v307 := by
      rcases c148 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u30 a
      · exact absurd u21 a
      · exact absurd a u32
      · exact absurd a u20
    have u38 : v328 := by
      rcases c149 with a|a|a|a|a|a
      · exact a
      · exact absurd a u31
      · exact absurd u26 a
      · exact absurd a u32
      · exact absurd u30 a
      · exact absurd u34 a
    have u39 : ¬v257 := by
      rcases c123 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u21 a
      · exact absurd u15 a
      · exact absurd a u3
      · exact absurd a u31
    have u40 : v245 := by
      rcases c122 with a|a|a|a|a|a
      · exact a
      · exact absurd u34 a
      · exact absurd u30 a
      · exact absurd u15 a
      · exact absurd u21 a
      · exact absurd a u8
    have u41 : v204 := by
      rcases c515 with a|a
      · exact absurd a u35
      · exact a
    have u42 : v271 := by
      rcases c470 with a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd u36 a
    have u43 : v272 := by
      rcases c126 with a|a|a|a|a|a
      · exact a
      · exact absurd u42 a
      · exact absurd a u16
      · exact absurd u15 a
      · exact absurd a u33
      · exact absurd u36 a
    have u44 : ¬v169 := by
      rcases c53 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd a u1
      · exact absurd u21 a
      · exact absurd a u37
      · exact absurd a n1
    have u45 : ¬v326 := by
      rcases c155 with a|a|a|a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd u26 a
      · exact absurd u38 a
      · exact absurd a u11
      · exact absurd a n1
    have u46 : v178 := by
      rcases c54 with a|a|a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u26 a
      · exact absurd u38 a
      · exact absurd u29 a
      · exact absurd a n1
    have u47 : ¬v324 := by
      rcases c199 with a|a|a|a
      · exact absurd a u45
      · exact a
      · exact absurd u38 a
      · exact absurd a u11
    have u48 : v305 := by
      rcases c147 with a|a|a|a|a|a
      · exact absurd a u45
      · exact a
      · exact absurd a u32
      · exact absurd a u37
      · exact absurd u38 a
      · exact absurd a u11
    have u49 : ¬v221 := by
      rcases c107 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd n0 a
      · exact absurd u38 a
      · exact absurd a u31
      · exact absurd a n1
    have u50 : ¬v223 := by
      rcases c108 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u26 a
      · exact absurd u38 a
      · exact absurd a u19
      · exact absurd a n1
    have u51 : ¬v284 := by
      rcases c146 with a|a|a|a|a|a
      · exact absurd a u45
      · exact a
      · exact absurd a u32
      · exact absurd u34 a
      · exact absurd u38 a
      · exact absurd a u47
    have u52 : ¬v299 := by
      rcases c308 with a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u42 a
      · exact absurd a u33
    have u53 : ¬v205 := by
      rcases c76 with a|a|a|a|a|a
      · exact absurd u42 a
      · exact a
      · exact absurd u41 a
      · exact absurd u43 a
      · exact absurd a u4
      · exact absurd a u16
    have u54 : ¬v171 := by
      rcases c50 with a|a|a|a|a|a
      · exact absurd u46 a
      · exact a
      · exact absurd u38 a
      · exact absurd a u22
      · exact absurd a u32
      · exact absurd a u37
    have u55 : v209 := by
      rcases c101 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd u34 a
      · exact absurd u38 a
      · exact absurd a u50
      · exact absurd a u32
    have u56 : v216 := by
      rcases c102 with a|a|a|a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd u38 a
      · exact absurd a u50
      · exact absurd a u32
      · exact absurd a u37
    have u57 : v283 := by
      rcases c121 with a|a|a|a|a|a
      · exact a
      · exact absurd a u33
      · exact absurd a u51
      · exact absurd u36 a
      · exact absurd a u52
      · exact absurd u40 a
    have u58 : v235 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u53
      · exact absurd u41 a
      · exact absurd u42 a
    have u59 : ¬v170 := by
      rcases c167 with a|a|a|a
      · exact absurd a u54
      · exact a
      · exact absurd u29 a
      · exact absurd a u20
    have u60 : v146 := by
      rcases c159 with a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd u25 a
      · exact absurd a u54
    have u61 : ¬v164 := by
      rcases c22 with a|a|a|a|a|a
      · exact a
      · exact absurd a u54
      · exact absurd u56 a
      · exact absurd u60 a
      · exact absurd u55 a
      · exact absurd a u32
    have u62 : v213 := by
      rcases c178 with a|a|a|a
      · exact absurd u56 a
      · exact absurd a u28
      · exact absurd u48 a
      · exact a
    have u63 : ¬v277 := by
      rcases c67 with a|a|a|a|a|a
      · exact absurd u56 a
      · exact absurd u48 a
      · exact absurd u18 a
      · exact a
      · exact absurd a u24
      · exact absurd a u28
    have u64 : v155 := by
      rcases c46 with a|a|a|a|a|a
      · exact absurd a u59
      · exact a
      · exact absurd u15 a
      · exact absurd u21 a
      · exact absurd a u44
      · exact absurd a u8
    have u65 : v147 := by
      rcases c367 with a|a|a|a
      · exact a
      · exact absurd a u61
      · exact absurd u60 a
      · exact absurd u55 a
    have u66 : v220 := by
      rcases c21 with a|a|a|a|a|a
      · exact a
      · exact absurd u65 a
      · exact absurd u62 a
      · exact absurd u60 a
      · exact absurd a u12
      · exact absurd u55 a
    have u67 : v219 := by
      rcases c512 with a|a|a|a|a|a|a|a|a|a|a|a|a
      · exact absurd a u53
      · exact absurd u60 a
      · exact absurd u2 a
      · exact absurd u64 a
      · exact a
      · exact absurd u66 a
      · exact absurd a u28
      · exact absurd a u39
      · exact absurd u43 a
      · exact absurd a u16
      · exact absurd a u63
      · exact absurd u57 a
      · exact absurd a u45
    have u68 : ¬v201 := by
      rcases c71 with a|a|a|a|a|a
      · exact a
      · exact absurd u66 a
      · exact absurd a u53
      · exact absurd a u24
      · exact absurd a u50
      · exact absurd a u28
    rcases c69 with a|a|a|a|a|a
    · exact absurd u67 a
    · exact absurd u66 a
    · exact absurd u58 a
    · exact absurd u41 a
    · exact absurd a u68
    · exact absurd a u53
  have c518 : ¬v148 ∨ ¬v145 ∨ ¬v149 ∨ v202 ∨ ¬v203 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v224 := by
      rcases c2 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n4 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    rcases c459 with a|a|a
    · exact absurd n0 a
    · exact absurd n2 a
    · exact absurd u1 a
  have c519 : ¬v146 ∨ ¬v145 ∨ ¬v149 ∨ ¬v151 ∨ v154 ∨ ¬v168 ∨ v196 ∨ v213 ∨ ¬v241 ∨ v252 ∨ ¬v305 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10⟩ := hc
    have u1 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a n9
    have u2 : ¬v265 := by
      rcases c382 with a|a
      · exact a
      · exact absurd a n9
    have u3 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u1 a
      · exact a
    have u4 : v293 := by
      rcases c342 with a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a n9
      · exact absurd u1 a
    have u5 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v260 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u3
    have u7 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u5 a
    have u8 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u5 a
    have u9 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u8
    have u10 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u7 a
    have u11 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u10
      · exact absurd u7 a
    have u12 : v290 := by
      rcases c125 with a|a|a|a|a|a
      · exact a
      · exact absurd n10 a
      · exact absurd a u9
      · exact absurd u1 a
      · exact absurd a n9
      · exact absurd u4 a
    have u13 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u11
      · exact absurd a u10
      · exact a
      · exact absurd u7 a
    have u14 : ¬v171 := by
      rcases c25 with a|a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n3 a
      · exact absurd n5 a
      · exact absurd a n4
      · exact absurd a n6
    have u15 : v216 := by
      rcases c26 with a|a|a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n3 a
      · exact absurd a n4
      · exact absurd n8 a
      · exact absurd a n7
    have u16 : ¬v210 := by
      rcases c103 with a|a|a|a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd u4 a
      · exact absurd n10 a
      · exact absurd u12 a
      · exact absurd a n7
    have u17 : v165 := by
      rcases c51 with a|a|a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u4 a
      · exact absurd n5 a
      · exact absurd n10 a
      · exact absurd u12 a
    have u18 : v148 := by
      rcases c158 with a|a|a|a
      · exact absurd u17 a
      · exact absurd n0 a
      · exact a
      · exact absurd a u16
    have u19 : v202 := by
      rcases c518 with a|a|a|a|a
      · exact absurd u18 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact a
      · exact absurd u13 a
    have u20 : ¬v224 := by
      rcases c243 with a|a|a|a
      · exact absurd u19 a
      · exact a
      · exact absurd u13 a
      · exact absurd a u6
    rcases c242 with a|a|a|a
    · exact absurd u19 a
    · exact absurd a u20
    · exact absurd u13 a
    · exact absurd a u6
  have c520 : ¬v363 ∨ v364 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : ¬v361 := by
      rcases c510 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n1
    have u2 : ¬v242 := by
      rcases c517 with a|a
      · exact a
      · exact absurd a n1
    have u3 : ¬v275 := by
      rcases c509 with a|a
      · exact absurd a u1
      · exact a
    have u4 : v206 := by
      rcases c477 with a|a
      · exact absurd a u2
      · exact a
    have u5 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u2
    have u6 : v278 := by
      rcases c499 with a|a
      · exact a
      · exact absurd u4 a
    have u7 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd a u2
    have u8 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u5
    have u9 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u6 a
      · exact absurd u4 a
    have u10 : v153 := by
      rcases c224 with a|a|a|a
      · exact absurd a u5
      · exact absurd a u2
      · exact absurd u7 a
      · exact a
    have u11 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u8 a
    have u12 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd u4 a
    have u13 : ¬v194 := by
      rcases c32 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd u8 a
      · exact absurd a u1
      · exact absurd a u5
      · exact absurd u7 a
    have u14 : ¬v240 := by
      rcases c86 with a|a|a|a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd u12 a
      · exact absurd a u9
      · exact absurd u8 a
      · exact absurd a u2
    have u15 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u9
      · exact a
    have u16 : v244 := by
      rcases c449 with a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
    have u17 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u11 a
      · exact absurd u12 a
      · exact absurd u4 a
      · exact absurd u8 a
      · exact absurd a u5
    have u18 : v276 := by
      rcases c88 with a|a|a|a|a|a
      · exact absurd a u3
      · exact absurd u12 a
      · exact a
      · exact absurd a u9
      · exact absurd u4 a
      · exact absurd u6 a
    have u19 : ¬v160 := by
      rcases c14 with a|a|a|a|a|a
      · exact a
      · exact absurd u12 a
      · exact absurd a u13
      · exact absurd a u3
      · exact absurd u8 a
      · exact absurd u11 a
    have u20 : v195 := by
      rcases c31 with a|a|a|a|a|a
      · exact a
      · exact absurd a u1
      · exact absurd a u14
      · exact absurd u8 a
      · exact absurd a u13
      · exact absurd u11 a
    have u21 : v308 := by
      rcases c389 with a|a
      · exact absurd a u15
      · exact a
    have u22 : ¬v199 := by
      rcases c40 with a|a|a|a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a n1
      · exact absurd u10 a
      · exact absurd a u2
      · exact absurd u7 a
    have u23 : v208 := by
      rcases c273 with a|a|a|a
      · exact a
      · exact absurd a u9
      · exact absurd a u15
      · exact absurd u16 a
    have u24 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u21 a
    have u25 : ¬v154 := by
      rcases c237 with a|a|a|a
      · exact a
      · exact absurd a u22
      · exact absurd u10 a
      · exact absurd u16 a
    have u26 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u24
    have u27 : ¬v265 := by
      rcases c382 with a|a
      · exact a
      · exact absurd a u24
    have u28 : v241 := by
      rcases c17 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u11 a
      · exact absurd a u25
      · exact absurd u23 a
      · exact absurd u12 a
    have u29 : ¬v196 := by
      rcases c36 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u10 a
      · exact absurd u11 a
      · exact absurd a u25
      · exact absurd a u22
    have u30 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u26 a
      · exact a
    have u31 : v293 := by
      rcases c342 with a|a|a|a
      · exact a
      · exact absurd a u27
      · exact absurd a u24
      · exact absurd u26 a
    have u32 : ¬v277 := by
      rcases c49 with a|a|a|a|a|a
      · exact absurd a u29
      · exact absurd n0 a
      · exact a
      · exact absurd u20 a
      · exact absurd a u19
      · exact absurd u18 a
    have u33 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u30
    have u34 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u30
      · exact absurd u33 a
    have u35 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u33 a
    have u36 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd a u35
    have u37 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u34 a
    have u38 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u34 a
    have u39 : v299 := by
      rcases c309 with a|a|a|a
      · exact a
      · exact absurd a u35
      · exact absurd u33 a
      · exact absurd a u36
    have u40 : ¬v262 := by
      rcases c124 with a|a|a|a|a|a
      · exact a
      · exact absurd a u32
      · exact absurd a u36
      · exact absurd a u24
      · exact absurd a u27
      · exact absurd u26 a
    have u41 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u37
      · exact absurd u12 a
      · exact absurd a u35
    have u42 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u38
      · exact absurd a u37
      · exact a
      · exact absurd u34 a
    have u43 : ¬v213 := by
      rcases c62 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd u39 a
      · exact absurd u12 a
      · exact absurd a u36
      · exact absurd a u35
    have u44 : ¬v150 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u12 a
      · exact absurd a u41
      · exact absurd a u37
      · exact absurd u11 a
    have u45 : v357 := by
      rcases c84 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd a u32
      · exact absurd a u35
      · exact absurd u12 a
      · exact absurd u28 a
    have u46 : ¬v356 := by
      rcases c81 with a|a|a|a|a|a
      · exact a
      · exact absurd a u41
      · exact absurd u18 a
      · exact absurd u12 a
      · exact absurd a u14
      · exact absurd a u35
    have u47 : v190 := by
      rcases c10 with a|a|a|a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u11 a
      · exact absurd u12 a
      · exact absurd a u41
      · exact absurd a u35
    have u48 : v149 := by
      rcases c4 with a|a|a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u17 a
      · exact absurd u42 a
      · exact absurd a u37
      · exact absurd a u38
    have u49 : ¬v159 := by
      rcases c156 with a|a|a|a
      · exact a
      · exact absurd a u44
      · exact absurd u17 a
      · exact absurd a u37
    have u50 : v305 := by
      rcases c129 with a|a|a|a|a|a
      · exact absurd u45 a
      · exact a
      · exact absurd a u32
      · exact absurd a u35
      · exact absurd u39 a
      · exact absurd a u36
    have u51 : ¬v304 := by
      rcases c128 with a|a|a|a|a|a
      · exact absurd a u46
      · exact absurd u18 a
      · exact a
      · exact absurd a u36
      · exact absurd a u35
      · exact absurd u39 a
    have u52 : v168 := by
      rcases c52 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u47 a
      · exact absurd u39 a
      · exact absurd a u51
      · exact absurd a u46
    have u53 : ¬v155 := by
      rcases c41 with a|a|a|a|a|a
      · exact a
      · exact absurd a u49
      · exact absurd a u19
      · exact absurd u33 a
      · exact absurd a u36
      · exact absurd a u35
    have u54 : v290 := by
      rcases c125 with a|a|a|a|a|a
      · exact a
      · exact absurd u50 a
      · exact absurd a u36
      · exact absurd u26 a
      · exact absurd a u24
      · exact absurd u31 a
    have u55 : ¬v146 := by
      rcases c519 with a|a|a|a|a|a|a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u48 a
      · exact absurd u11 a
      · exact absurd a u25
      · exact absurd u52 a
      · exact absurd a u29
      · exact absurd a u43
      · exact absurd u28 a
      · exact absurd a u24
      · exact absurd u50 a
    have u56 : ¬v200 := by
      rcases c366 with a|a|a|a
      · exact a
      · exact absurd a u55
      · exact absurd u17 a
      · exact absurd a u53
    have u57 : v210 := by
      rcases c59 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u26 a
      · exact absurd u54 a
      · exact absurd a u43
      · exact absurd a u36
    have u58 : ¬v202 := by
      rcases c58 with a|a|a|a|a|a
      · exact a
      · exact absurd a u56
      · exact absurd u12 a
      · exact absurd u26 a
      · exact absurd a u36
      · exact absurd a u40
    have u59 : ¬v216 := by
      rcases c1 with a|a|a|a|a|a
      · exact absurd a u56
      · exact a
      · exact absurd u17 a
      · exact absurd u23 a
      · exact absurd a u25
      · exact absurd a u55
    have u60 : v229 := by
      rcases c281 with a|a|a|a
      · exact a
      · exact absurd a u58
      · exact absurd u23 a
      · exact absurd a u27
    have u61 : ¬v148 := by
      rcases c518 with a|a|a|a|a
      · exact a
      · exact absurd u17 a
      · exact absurd u48 a
      · exact absurd a u58
      · exact absurd u42 a
    rcases c23 with a|a|a|a|a|a
    · exact absurd u57 a
    · exact absurd a u61
    · exact absurd a u55
    · exact absurd u60 a
    · exact absurd a u25
    · exact absurd a u59
  have c521 : v364 := by
    by_contra hc
    have u1 : ¬v363 := by
      rcases c520 with a|a
      · exact a
      · exact absurd a hc
    rcases c507 with a|a
    · exact absurd a u1
    · exact absurd a hc
  have c522 : v148 ∨ ¬v149 ∨ ¬v224 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : ¬v179 := by
      rcases c203 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd n1 a
      · exact absurd n2 a
    rcases c160 with a|a|a|a
    · exact absurd a u1
    · exact absurd a n0
    · exact absurd n1 a
    · exact absurd n2 a
  have c523 : v202 ∨ ¬v145 ∨ ¬v149 ∨ ¬v203 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4⟩ := hc
    have u1 : v224 := by
      rcases c240 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd a n4
      · exact absurd n3 a
    have u2 : ¬v148 := by
      rcases c518 with a|a|a|a|a
      · exact a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n0
      · exact absurd n3 a
    rcases c522 with a|a|a
    · exact absurd a u2
    · exact absurd n2 a
    · exact absurd u1 a
  have c524 : ¬v202 ∨ ¬v203 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v224 := by
      rcases c242 with a|a|a|a
      · exact absurd n0 a
      · exact a
      · exact absurd n1 a
      · exact absurd a n2
    rcases c243 with a|a|a|a
    · exact absurd n0 a
    · exact absurd u1 a
    · exact absurd n1 a
    · exact absurd a n2
  have c525 : ¬v145 ∨ ¬v149 ∨ ¬v203 ∨ v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3⟩ := hc
    have u1 : v202 := by
      rcases c523 with a|a|a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd n1 a
      · exact absurd n2 a
      · exact absurd a n3
    rcases c524 with a|a|a
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n3
  have c526 : v275 ∨ ¬v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v278 := by
      rcases c499 with a|a
      · exact a
      · exact absurd n1 a
    have u2 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u2
    have u4 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u2
      · exact a
      · exact absurd u1 a
      · exact absurd n1 a
    have u5 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u3
    have u6 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u4
      · exact a
    have u7 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u3
      · exact absurd u5 a
    have u8 : v308 := by
      rcases c389 with a|a
      · exact absurd a u6
      · exact a
    have u9 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u8 a
    have u10 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u9
    have u11 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u10 a
      · exact a
    have u12 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u11
    have u13 : ¬v260 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd u10 a
      · exact absurd a u11
    have u14 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u12 a
    have u15 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u12 a
    have u16 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u14 a
    have u17 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u14 a
    have u18 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u17
      · exact absurd a u16
      · exact a
      · exact absurd u14 a
    have u19 : v205 := by
      rcases c258 with a|a|a|a
      · exact a
      · exact absurd a n0
      · exact absurd u5 a
      · exact absurd n1 a
    have u20 : v145 := by
      rcases c13 with a|a|a|a|a|a
      · exact a
      · exact absurd u7 a
      · exact absurd u19 a
      · exact absurd n1 a
      · exact absurd u5 a
      · exact absurd a u3
    have u21 : ¬v235 := by
      rcases c256 with a|a|a|a
      · exact a
      · exact absurd a u16
      · exact absurd u19 a
      · exact absurd a u15
    have u22 : ¬v149 := by
      rcases c525 with a|a|a|a
      · exact absurd u20 a
      · exact a
      · exact absurd u18 a
      · exact absurd a u13
    have u23 : ¬v150 := by
      rcases c8 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u19 a
      · exact absurd a u21
      · exact absurd a u16
      · exact absurd u7 a
    rcases c4 with a|a|a|a|a|a
    · exact absurd a u22
    · exact absurd a u23
    · exact absurd u20 a
    · exact absurd u18 a
    · exact absurd a u16
    · exact absurd a u17
  have c527 : v275 := by
    by_contra hc
    have u1 : v364 := c521
    have u2 : ¬v361 := by
      rcases c494 with a|a
      · exact absurd a hc
      · exact a
    have u3 : ¬v206 := by
      rcases c526 with a|a
      · exact absurd a hc
      · exact a
    have u4 : v242 := by
      rcases c477 with a|a
      · exact a
      · exact absurd a u3
    have u5 : v152 := by
      rcases c475 with a|a
      · exact absurd u4 a
      · exact a
    have u6 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u4 a
      · exact a
    have u7 : ¬v239 := by
      rcases c473 with a|a
      · exact absurd u5 a
      · exact a
    have u8 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd u5 a
      · exact absurd a u7
    have u9 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u6
      · exact a
    have u10 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u9
    have u11 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd u10 a
    have u12 : v252 := by
      rcases c417 with a|a
      · exact absurd u10 a
      · exact a
    have u13 : ¬v244 := by
      rcases c467 with a|a
      · exact a
      · exact absurd u10 a
    have u14 : ¬v246 := by
      rcases c413 with a|a
      · exact a
      · exact absurd u12 a
    have u15 : ¬v208 := by
      rcases c278 with a|a|a|a
      · exact a
      · exact absurd a u13
      · exact absurd u11 a
      · exact absurd u10 a
    have u16 : v247 := by
      rcases c416 with a|a
      · exact a
      · exact absurd a u14
    have u17 : v260 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u16 a
    have u18 : ¬v248 := by
      rcases c408 with a|a
      · exact absurd u16 a
      · exact a
    have u19 : ¬v266 := by
      rcases c516 with a|a|a
      · exact a
      · exact absurd u16 a
      · exact absurd a u18
    have u20 : v249 := by
      rcases c490 with a|a
      · exact a
      · exact absurd a u18
    have u21 : v204 := by
      rcases c515 with a|a
      · exact absurd a u19
      · exact a
    have u22 : v271 := by
      rcases c470 with a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd u20 a
    have u23 : v230 := by
      rcases c501 with a|a|a
      · exact a
      · exact absurd u21 a
      · exact absurd a u19
    have u24 : ¬v203 := by
      rcases c254 with a|a|a|a
      · exact absurd u23 a
      · exact absurd u21 a
      · exact absurd a u19
      · exact a
    have u25 : ¬v197 := by
      rcases c437 with a|a
      · exact a
      · exact absurd u4 a
    have u26 : ¬v153 := by
      rcases c438 with a|a|a
      · exact a
      · exact absurd a u25
      · exact absurd u4 a
    have u27 : v154 := by
      rcases c441 with a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd a u13
    have u28 : v194 := by
      rcases c214 with a|a|a|a
      · exact absurd a u8
      · exact a
      · exact absurd u5 a
      · exact absurd a u7
    have u29 : v250 := by
      rcases c392 with a|a|a
      · exact absurd a u6
      · exact a
      · exact absurd a u9
    have u30 : v294 := by
      rcases c297 with a|a|a|a
      · exact a
      · exact absurd a u18
      · exact absurd a u19
      · exact absurd u16 a
    have u31 : ¬v299 := by
      rcases c308 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u22 a
      · exact absurd a u18
    have u32 : v161 := by
      rcases c47 with a|a|a|a|a|a
      · exact a
      · exact absurd a u2
      · exact absurd a hc
      · exact absurd a u25
      · exact absurd a u6
      · exact absurd u28 a
    have u33 : v272 := by
      rcases c126 with a|a|a|a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a hc
      · exact absurd u29 a
      · exact absurd a u18
      · exact absurd u20 a
    have u34 : ¬v205 := by
      rcases c76 with a|a|a|a|a|a
      · exact absurd u22 a
      · exact a
      · exact absurd u21 a
      · exact absurd u33 a
      · exact absurd a u3
      · exact absurd a hc
    have u35 : ¬v145 := by
      rcases c12 with a|a|a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd a u8
      · exact absurd u5 a
      · exact absurd a u3
      · exact absurd a u7
    have u36 : v235 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u34
      · exact absurd u21 a
      · exact absurd u22 a
    have u37 : ¬v231 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u23 a
      · exact absurd a u24
      · exact absurd u21 a
      · exact absurd u36 a
      · exact absurd a u34
    have u38 : ¬v149 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u37
      · exact a
      · exact absurd a u24
      · exact absurd a u8
      · exact absurd a u34
      · exact absurd a u35
    have u39 : v240 := by
      rcases c16 with a|a|a|a|a|a
      · exact absurd a u35
      · exact absurd a u26
      · exact a
      · exact absurd a u8
      · exact absurd a u34
      · exact absurd u11 a
    have u40 : ¬v234 := by
      rcases c7 with a|a|a|a|a|a
      · exact a
      · exact absurd a u38
      · exact absurd a u35
      · exact absurd u27 a
      · exact absurd a u24
      · exact absurd a u15
    have u41 : ¬v241 := by
      rcases c18 with a|a|a|a|a|a
      · exact absurd a u35
      · exact absurd a u8
      · exact a
      · exact absurd u27 a
      · exact absurd a u34
      · exact absurd a u15
    have u42 : v213 := by
      rcases c61 with a|a|a|a|a|a
      · exact absurd u36 a
      · exact a
      · exact absurd a u34
      · exact absurd u22 a
      · exact absurd u20 a
      · exact absurd a u31
    have u43 : v238 := by
      rcases c83 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd a u34
      · exact absurd a u15
      · exact absurd u21 a
      · exact absurd a u41
    have u44 : v345 := by
      rcases c74 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u23 a
      · exact absurd u21 a
      · exact absurd a u19
      · exact absurd u22 a
    have u45 : ¬v237 := by
      rcases c80 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u39 a
      · exact absurd u11 a
      · exact absurd u21 a
      · exact absurd a u34
    have u46 : v363 := by
      rcases c118 with a|a|a|a|a|a
      · exact absurd u1 a
      · exact a
      · exact absurd u39 a
      · exact absurd a u13
      · exact absurd u4 a
      · exact absurd a u2
    have u47 : v150 := by
      rcases c27 with a|a|a|a|a|a
      · exact a
      · exact absurd u36 a
      · exact absurd u39 a
      · exact absurd a u8
      · exact absurd a u26
      · exact absurd a u45
    have u48 : v348 := by
      rcases c179 with a|a|a|a
      · exact a
      · exact absurd a u40
      · exact absurd u23 a
      · exact absurd u43 a
    have u49 : v274 := by
      rcases c173 with a|a|a|a
      · exact a
      · exact absurd u43 a
      · exact absurd u21 a
      · exact absurd a u15
    have u50 : ¬v360 := by
      rcases c183 with a|a|a|a
      · exact absurd u43 a
      · exact absurd a u45
      · exact a
      · exact absurd a u13
    have u51 : v356 := by
      rcases c180 with a|a|a|a
      · exact absurd a u45
      · exact a
      · exact absurd u39 a
      · exact absurd u36 a
    have u52 : ¬v190 := by
      rcases c209 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd u36 a
      · exact absurd a u8
    have u53 : v159 := by
      rcases c157 with a|a|a|a
      · exact a
      · exact absurd u47 a
      · exact absurd a u35
      · exact absurd u21 a
    have u54 : v357 := by
      rcases c370 with a|a|a|a
      · exact absurd u51 a
      · exact absurd u46 a
      · exact a
      · exact absurd a u50
    have u55 : v155 := by
      rcases c43 with a|a|a|a|a|a
      · exact a
      · exact absurd u33 a
      · exact absurd u29 a
      · exact absurd u53 a
      · exact absurd u32 a
      · exact absurd a u18
    have u56 : v196 := by
      rcases c29 with a|a|a|a|a|a
      · exact a
      · exact absurd u54 a
      · exact absurd a u8
      · exact absurd u36 a
      · exact absurd a u52
      · exact absurd a u41
    have u57 : v305 := by
      rcases c104 with a|a|a|a|a|a
      · exact absurd u54 a
      · exact absurd u36 a
      · exact a
      · exact absurd a u41
      · exact absurd a u31
      · exact absurd u42 a
    have u58 : ¬v277 := by
      rcases c140 with a|a|a|a|a|a
      · exact absurd u54 a
      · exact absurd u46 a
      · exact absurd u10 a
      · exact a
      · exact absurd u49 a
      · exact absurd a u50
    have u59 : ¬v302 := by
      rcases c151 with a|a|a|a|a|a
      · exact a
      · exact absurd u54 a
      · exact absurd u44 a
      · exact absurd u48 a
      · exact absurd u30 a
      · exact absurd a u31
    have u60 : v163 := by
      rcases c19 with a|a|a|a|a|a
      · exact a
      · exact absurd u56 a
      · exact absurd a u58
      · exact absurd a u15
      · exact absurd a u41
      · exact absurd u27 a
    have u61 : ¬v171 := by
      rcases c45 with a|a|a|a|a|a
      · exact a
      · exact absurd u57 a
      · exact absurd u12 a
      · exact absurd u56 a
      · exact absurd u60 a
      · exact absurd a u58
    have u62 : v216 := by
      rcases c64 with a|a|a|a|a|a
      · exact absurd a u59
      · exact a
      · exact absurd u12 a
      · exact absurd a u15
      · exact absurd u43 a
      · exact absurd u49 a
    have u63 : v146 := by
      rcases c159 with a|a|a|a
      · exact a
      · exact absurd u62 a
      · exact absurd u27 a
      · exact absurd a u61
    have u64 : v200 := by
      rcases c365 with a|a|a|a
      · exact a
      · exact absurd u63 a
      · exact absurd a u35
      · exact absurd u55 a
    have u65 : v202 := by
      rcases c57 with a|a|a|a|a|a
      · exact a
      · exact absurd u64 a
      · exact absurd a u24
      · exact absurd u16 a
      · exact absurd u17 a
      · exact absurd a u14
    have u66 : ¬v229 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd u65 a
      · exact absurd a u15
    have u67 : ¬v224 := by
      rcases c502 with a|a|a
      · exact absurd u65 a
      · exact absurd a u24
      · exact a
    have u68 : ¬v148 := by
      rcases c3 with a|a|a|a|a|a
      · exact absurd a u66
      · exact a
      · exact absurd u27 a
      · exact absurd a u35
      · exact absurd a u15
      · exact absurd u65 a
    rcases c505 with a|a|a
    · exact absurd a u68
    · exact absurd a u38
    · exact absurd a u67
  have c528 : ¬v202 ∨ v145 ∨ v149 ∨ ¬v154 ∨ v203 ∨ v208 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2, n3, n4, n5⟩ := hc
    have u1 : ¬v229 := by
      rcases c504 with a|a|a
      · exact a
      · exact absurd n0 a
      · exact absurd a n5
    have u2 : ¬v224 := by
      rcases c502 with a|a|a
      · exact absurd n0 a
      · exact absurd a n4
      · exact a
    have u3 : v148 := by
      rcases c505 with a|a|a
      · exact a
      · exact absurd a n2
      · exact absurd a u2
    rcases c3 with a|a|a|a|a|a
    · exact absurd a u1
    · exact absurd u3 a
    · exact absurd n3 a
    · exact absurd a n1
    · exact absurd a n5
    · exact absurd n0 a
  have c529 : v202 ∨ v203 ∨ ¬v260 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1, n2⟩ := hc
    have u1 : v224 := by
      rcases c238 with a|a|a|a
      · exact absurd a n0
      · exact a
      · exact absurd n2 a
      · exact absurd a n1
    rcases c239 with a|a|a|a
    · exact absurd a n0
    · exact absurd u1 a
    · exact absurd n2 a
    · exact absurd a n1
  have c530 : v145 ∨ v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v275 := c527
    have u2 : v242 := by
      rcases c477 with a|a
      · exact a
      · exact absurd a n1
    have u3 : v152 := by
      rcases c475 with a|a
      · exact absurd u2 a
      · exact a
    have u4 : ¬v278 := by
      rcases c421 with a|a
      · exact absurd u2 a
      · exact a
    have u5 : ¬v239 := by
      rcases c473 with a|a
      · exact absurd u3 a
      · exact a
    have u6 : ¬v151 := by
      rcases c440 with a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u5
    have u7 : ¬v251 := by
      rcases c404 with a|a
      · exact absurd a u4
      · exact a
    have u8 : ¬v205 := by
      rcases c259 with a|a|a|a
      · exact absurd u1 a
      · exact absurd a u5
      · exact a
      · exact absurd a n1
    have u9 : v280 := by
      rcases c398 with a|a
      · exact a
      · exact absurd a u7
    have u10 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd u9 a
    have u11 : v252 := by
      rcases c417 with a|a
      · exact absurd u9 a
      · exact a
    have u12 : ¬v246 := by
      rcases c413 with a|a
      · exact a
      · exact absurd u11 a
    have u13 : v247 := by
      rcases c416 with a|a
      · exact a
      · exact absurd a u12
    have u14 : ¬v244 := by
      rcases c467 with a|a
      · exact a
      · exact absurd u9 a
    have u15 : ¬v153 := by
      rcases c20 with a|a|a|a|a|a
      · exact absurd a n0
      · exact absurd u3 a
      · exact a
      · exact absurd u10 a
      · exact absurd u2 a
      · exact absurd a n1
    have u16 : v260 := by
      rcases c503 with a|a|a
      · exact a
      · exact absurd a u12
      · exact absurd u13 a
    have u17 : ¬v248 := by
      rcases c408 with a|a
      · exact absurd u13 a
      · exact a
    have u18 : ¬v208 := by
      rcases c278 with a|a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u10 a
      · exact absurd u9 a
    have u19 : v154 := by
      rcases c441 with a|a|a
      · exact a
      · exact absurd a u15
      · exact absurd a u14
    have u20 : ¬v266 := by
      rcases c516 with a|a|a
      · exact a
      · exact absurd u13 a
      · exact absurd a u17
    have u21 : v249 := by
      rcases c490 with a|a
      · exact a
      · exact absurd a u17
    have u22 : v204 := by
      rcases c515 with a|a
      · exact absurd a u20
      · exact a
    have u23 : v271 := by
      rcases c470 with a|a|a
      · exact a
      · exact absurd a u17
      · exact absurd u21 a
    have u24 : v230 := by
      rcases c501 with a|a|a
      · exact a
      · exact absurd u22 a
      · exact absurd a u20
    have u25 : v235 := by
      rcases c257 with a|a|a|a
      · exact a
      · exact absurd a u8
      · exact absurd u22 a
      · exact absurd u23 a
    have u26 : ¬v203 := by
      rcases c254 with a|a|a|a
      · exact absurd u24 a
      · exact absurd u22 a
      · exact absurd a u20
      · exact a
    have u27 : ¬v231 := by
      rcases c73 with a|a|a|a|a|a
      · exact a
      · exact absurd u24 a
      · exact absurd a u26
      · exact absurd u22 a
      · exact absurd u25 a
      · exact absurd a u8
    have u28 : ¬v149 := by
      rcases c6 with a|a|a|a|a|a
      · exact absurd a u27
      · exact a
      · exact absurd a u26
      · exact absurd a u6
      · exact absurd a u8
      · exact absurd a n0
    have u29 : v202 := by
      rcases c529 with a|a|a
      · exact a
      · exact absurd a u26
      · exact absurd u16 a
    rcases c528 with a|a|a|a|a|a
    · exact absurd u29 a
    · exact absurd a n0
    · exact absurd a u28
    · exact absurd u19 a
    · exact absurd a u26
    · exact absurd a u18
  have c531 : v145 := by
    by_contra hc
    have u1 : v275 := c527
    have u2 : v206 := by
      rcases c530 with a|a
      · exact absurd a hc
      · exact a
    have u3 : v278 := by
      rcases c499 with a|a
      · exact a
      · exact absurd u2 a
    have u4 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u3 a
    have u5 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u4
    have u6 : ¬v207 := by
      rcases c268 with a|a|a|a
      · exact absurd a u4
      · exact a
      · exact absurd u3 a
      · exact absurd u2 a
    have u7 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u5
    have u8 : ¬v280 := by
      rcases c443 with a|a
      · exact absurd a u6
      · exact a
    have u9 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u5
      · exact absurd u7 a
    have u10 : v308 := by
      rcases c389 with a|a
      · exact absurd a u8
      · exact a
    have u11 : v251 := by
      rcases c398 with a|a
      · exact absurd a u8
      · exact a
    have u12 : ¬v252 := by
      rcases c386 with a|a
      · exact a
      · exact absurd u10 a
    have u13 : v246 := by
      rcases c406 with a|a
      · exact a
      · exact absurd a u12
    have u14 : ¬v247 := by
      rcases c395 with a|a
      · exact absurd u13 a
      · exact a
    have u15 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a u14
    have u16 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a u14
      · exact absurd u15 a
    have u17 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u15 a
    have u18 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u16 a
    have u19 : ¬v205 := by
      rcases c13 with a|a|a|a|a|a
      · exact absurd a hc
      · exact absurd u9 a
      · exact a
      · exact absurd u2 a
      · exact absurd u7 a
      · exact absurd a u5
    have u20 : v272 := by
      rcases c77 with a|a|a|a|a|a
      · exact absurd a u19
      · exact a
      · exact absurd u1 a
      · exact absurd a u17
      · exact absurd a u18
      · exact absurd u2 a
    have u21 : ¬v249 := by
      rcases c463 with a|a|a
      · exact a
      · exact absurd u15 a
      · exact absurd a u17
    have u22 : ¬v273 := by
      rcases c85 with a|a|a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd u3 a
      · exact absurd u2 a
      · exact absurd a u18
      · exact absurd a u6
    have u23 : ¬v250 := by
      rcases c131 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u11 a
      · exact a
      · exact absurd u3 a
      · exact absurd u15 a
      · exact absurd a u22
    rcases c127 with a|a|a|a|a|a
    · exact absurd u20 a
    · exact absurd u1 a
    · exact absurd u15 a
    · exact absurd a u23
    · exact absurd a u21
    · exact absurd a u17
  have c532 : v247 := by
    by_contra hc
    have u1 : v275 := c527
    have u2 : v361 := by
      rcases c509 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v145 := c531
    have u4 : v246 := by
      rcases c416 with a|a
      · exact absurd a hc
      · exact a
    have u5 : v248 := by
      rcases c410 with a|a
      · exact a
      · exact absurd a hc
    have u6 : ¬v260 := by
      rcases c423 with a|a|a
      · exact a
      · exact absurd u4 a
      · exact absurd a hc
    have u7 : ¬v252 := by
      rcases c413 with a|a
      · exact absurd u4 a
      · exact a
    have u8 : v266 := by
      rcases c418 with a|a|a
      · exact a
      · exact absurd a hc
      · exact absurd u5 a
    have u9 : ¬v271 := by
      rcases c462 with a|a
      · exact a
      · exact absurd u5 a
    have u10 : ¬v280 := by
      rcases c417 with a|a
      · exact a
      · exact absurd a u7
    have u11 : ¬v204 := by
      rcases c426 with a|a
      · exact a
      · exact absurd u8 a
    have u12 : ¬v230 := by
      rcases c458 with a|a|a
      · exact a
      · exact absurd a u11
      · exact absurd u8 a
    have u13 : v251 := by
      rcases c398 with a|a
      · exact absurd a u10
      · exact a
    have u14 : v203 := by
      rcases c245 with a|a|a|a
      · exact absurd a u12
      · exact absurd a u11
      · exact a
      · exact absurd u8 a
    have u15 : v278 := by
      rcases c404 with a|a
      · exact a
      · exact absurd u13 a
    have u16 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd u15 a
    have u17 : v206 := by
      rcases c477 with a|a
      · exact absurd a u16
      · exact a
    have u18 : ¬v149 := by
      rcases c525 with a|a|a|a
      · exact absurd u3 a
      · exact a
      · exact absurd u14 a
      · exact absurd a u6
    have u19 : ¬v152 := by
      rcases c447 with a|a
      · exact a
      · exact absurd a u16
    have u20 : v150 := by
      rcases c4 with a|a|a|a|a|a
      · exact absurd a u18
      · exact a
      · exact absurd u3 a
      · exact absurd u14 a
      · exact absurd a u11
      · exact absurd a u12
    have u21 : v197 := by
      rcases c454 with a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd a u16
    have u22 : v239 := by
      rcases c452 with a|a
      · exact a
      · exact absurd a u19
    have u23 : ¬v185 := by
      rcases c206 with a|a|a|a
      · exact a
      · exact absurd u20 a
      · exact absurd a u12
      · exact absurd a u18
    have u24 : ¬v159 := by
      rcases c5 with a|a|a|a|a|a
      · exact absurd a u23
      · exact a
      · exact absurd u8 a
      · exact absurd u20 a
      · exact absurd a u11
      · exact absurd a u12
    have u25 : v151 := by
      rcases c460 with a|a|a
      · exact a
      · exact absurd a u19
      · exact absurd u22 a
    have u26 : ¬v194 := by
      rcases c217 with a|a|a|a
      · exact a
      · exact absurd u25 a
      · exact absurd u22 a
      · exact absurd a u19
    have u27 : ¬v161 := by
      rcases c48 with a|a|a|a|a|a
      · exact a
      · exact absurd u1 a
      · exact absurd a u26
      · exact absurd u2 a
      · exact absurd u15 a
      · exact absurd u21 a
    have u28 : ¬v272 := by
      rcases c11 with a|a|a|a|a|a
      · exact a
      · exact absurd u3 a
      · exact absurd a u27
      · exact absurd u17 a
      · exact absurd a u24
      · exact absurd a u11
    have u29 : v205 := by
      rcases c77 with a|a|a|a|a|a
      · exact a
      · exact absurd a u28
      · exact absurd u1 a
      · exact absurd a u9
      · exact absurd a u11
      · exact absurd u17 a
    have u30 : v235 := by
      rcases c8 with a|a|a|a|a|a
      · exact absurd u20 a
      · exact absurd u3 a
      · exact absurd u29 a
      · exact a
      · exact absurd a u11
      · exact absurd u25 a
    rcases c256 with a|a|a|a
    · exact absurd u30 a
    · exact absurd a u11
    · exact absurd u29 a
    · exact absurd a u9
  have c533 : ¬v278 ∨ ¬v206 := by
    by_contra hc
    push_neg at hc
    obtain ⟨n0, n1⟩ := hc
    have u1 : v247 := c532
    have u2 : ¬v246 := by
      rcases c395 with a|a
      · exact a
      · exact absurd u1 a
    have u3 : v252 := by
      rcases c406 with a|a
      · exact absurd a u2
      · exact a
    have u4 : ¬v308 := by
      rcases c386 with a|a
      · exact absurd u3 a
      · exact a
    have u5 : v280 := by
      rcases c389 with a|a
      · exact a
      · exact absurd a u4
    have u6 : v207 := by
      rcases c443 with a|a
      · exact a
      · exact absurd u5 a
    have u7 : ¬v242 := by
      rcases c421 with a|a
      · exact a
      · exact absurd n0 a
    rcases c268 with a|a|a|a
    · exact absurd a u7
    · exact absurd u6 a
    · exact absurd n0 a
    · exact absurd n1 a
  have c534 : ¬v206 := by
    by_contra hc
    have u1 : ¬v278 := by
      rcases c533 with a|a
      · exact a
      · exact absurd hc a
    rcases c499 with a|a
    · exact absurd a u1
    · exact absurd hc a
  have u1 : v275 := c527
  have u2 : v145 := c531
  have u3 : ¬v206 := c534
  have u4 : v242 := by
    rcases c477 with a|a
    · exact a
    · exact absurd a u3
  have u5 : v152 := by
    rcases c475 with a|a
    · exact absurd u4 a
    · exact a
  have u6 : ¬v239 := by
    rcases c473 with a|a
    · exact absurd u5 a
    · exact a
  have u7 : ¬v151 := by
    rcases c440 with a|a|a
    · exact a
    · exact absurd u5 a
    · exact absurd a u6
  have u8 : ¬v205 := by
    rcases c259 with a|a|a|a
    · exact absurd u1 a
    · exact absurd a u6
    · exact a
    · exact absurd a u3
  rcases c12 with a|a|a|a|a|a
  · exact absurd u2 a
  · exact absurd a u8
  · exact absurd a u7
  · exact absurd u5 a
  · exact absurd a u3
  · exact absurd a u6
